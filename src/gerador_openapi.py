# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

"""
Biblioteca geradora de contratos OpenAPI 3.1 multi-linguagem (Python, Dart e TypeScript).

Valida especificações `.yaml` contra o schema oficial da OpenAPI 3.1 usando
`openapi-spec-validator` e emite constantes de URLs de servidores (`servers`),
constantes de rotas (`paths`) e tipos estruturais (`components/schemas`).
"""

from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import yaml
from openapi_spec_validator import validate

TIPOS_PRIMITIVOS_OPENAPI: dict[str, tuple[str, str, str]] = {
    # tipo_openapi: (tipo_python, tipo_dart, tipo_ts)
    "string": ("str", "String", "string"),
    "integer": ("int", "int", "number"),
    "number": ("float", "double", "number"),
    "boolean": ("bool", "bool", "boolean"),
    "object": ("dict[str, Any]", "Map<String, dynamic>", "Record<string, unknown>"),
}

METODOS_HTTP = ("get", "post", "put", "patch", "delete")


class ErroEspecificacaoOpenApiInvalida(ValueError):
    """Exceção levantada quando um arquivo OpenAPI 3.1 é inválido."""


@dataclass(frozen=True)
class RotaOpenApi:
    """Metadados extraídos de uma operação HTTP em `paths`."""

    operation_id: str
    metodo: str
    caminho: str


@dataclass(frozen=True)
class PropriedadeOpenApi:
    """Metadados de uma propriedade dentro de um `components/schemas`."""

    nome: str
    tipo_base: str
    obrigatoria: bool
    anulavel: bool
    eh_lista: bool = False
    ref_schema: str | None = None
    valores_enum: tuple[str, ...] = ()


@dataclass(frozen=True)
class SchemaOpenApi:
    """Representa um objeto de dados definido em `components/schemas`."""

    nome: str
    propriedades: tuple[PropriedadeOpenApi, ...]


@dataclass(frozen=True)
class EspecificacaoOpenApi:
    """Representação completa e validada de um arquivo OpenAPI 3.1."""

    nome_modulo: str
    titulo: str
    versao: str
    url_servidor_padrao: str
    rotas: tuple[RotaOpenApi, ...]
    schemas: tuple[SchemaOpenApi, ...]


def _separar_palavras(identificador: str) -> list[str]:
    com_underscores = re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", identificador.replace("-", "_"))
    return [parte for parte in com_underscores.split("_") if parte]


def _para_pascal_case(identificador: str) -> str:
    return "".join(parte.capitalize() for parte in _separar_palavras(identificador))


def _para_camel_case(identificador: str) -> str:
    partes = _separar_palavras(identificador)
    return partes[0].lower() + "".join(p.capitalize() for p in partes[1:])


def _extrair_nome_ref(ref_str: str) -> str:
    return ref_str.rsplit("/", 1)[-1]


def _extrair_propriedade(
    nome_prop: str,
    definicao: dict[str, Any],
    obrigatorias: set[str],
) -> PropriedadeOpenApi:
    obrigatoria = nome_prop in obrigatorias

    if "$ref" in definicao:
        return PropriedadeOpenApi(
            nome=nome_prop,
            tipo_base="object",
            obrigatoria=obrigatoria,
            anulavel=False,
            eh_lista=False,
            ref_schema=_extrair_nome_ref(str(definicao["$ref"])),
        )

    tipo_bruto = definicao.get("type", "object")
    if isinstance(tipo_bruto, list):
        anulavel = "null" in tipo_bruto
        tipos_nao_nulos = [str(t) for t in tipo_bruto if t != "null"]
        tipo_base = tipos_nao_nulos[0]
    else:
        anulavel = False
        tipo_base = str(tipo_bruto)

    if tipo_base == "array":
        itens_def = definicao.get("items", {})
        if "$ref" in itens_def:
            return PropriedadeOpenApi(
                nome=nome_prop,
                tipo_base="object",
                obrigatoria=obrigatoria,
                anulavel=anulavel,
                eh_lista=True,
                ref_schema=_extrair_nome_ref(str(itens_def["$ref"])),
            )
        tipo_item = str(itens_def.get("type", "string"))
        return PropriedadeOpenApi(
            nome=nome_prop,
            tipo_base=tipo_item,
            obrigatoria=obrigatoria,
            anulavel=anulavel,
            eh_lista=True,
        )

    valores_enum = tuple(str(v) for v in definicao.get("enum", []) if v is not None)
    return PropriedadeOpenApi(
        nome=nome_prop,
        tipo_base=tipo_base,
        obrigatoria=obrigatoria,
        anulavel=anulavel,
        eh_lista=False,
        valores_enum=valores_enum,
    )


def inspecionar_especificacao_openapi(
    conteudo_yaml: str,
    nome_modulo: str = "api",
) -> EspecificacaoOpenApi:
    """
    Faz o parse e valida formalmente `conteudo_yaml` contra a especificação OpenAPI 3.1,
    retornando `EspecificacaoOpenApi` com servidor, rotas e schemas.
    """
    try:
        dados = yaml.safe_load(conteudo_yaml)
    except yaml.YAMLError as erro:
        raise ErroEspecificacaoOpenApiInvalida(
            f"YAML inválido em '{nome_modulo}': {erro}"
        ) from erro

    if not isinstance(dados, dict):
        raise ErroEspecificacaoOpenApiInvalida(
            f"A raiz de '{nome_modulo}' deve ser um objeto YAML."
        )

    try:
        validate(dados)
    except Exception as erro:
        raise ErroEspecificacaoOpenApiInvalida(
            f"Especificação OpenAPI inválida em '{nome_modulo}': {erro}"
        ) from erro

    info = dados["info"]
    servidores = dados.get("servers", [])
    url_servidor_padrao = str(servidores[0]["url"]) if servidores else ""

    rotas: list[RotaOpenApi] = []
    paths_dict = dados.get("paths", {})
    for caminho, operacoes in paths_dict.items():
        for metodo in METODOS_HTTP:
            if metodo in operacoes:
                op = operacoes[metodo]
                op_id = str(op["operationId"])
                rotas.append(
                    RotaOpenApi(
                        operation_id=op_id,
                        metodo=metodo.upper(),
                        caminho=str(caminho),
                    )
                )

    schemas: list[SchemaOpenApi] = []
    schemas_dict = dados.get("components", {}).get("schemas", {})
    for nome_schema, def_schema in schemas_dict.items():
        obrigatorias = {str(r) for r in def_schema.get("required", [])}
        propriedades: list[PropriedadeOpenApi] = []
        for nome_prop, def_prop in def_schema.get("properties", {}).items():
            propriedades.append(_extrair_propriedade(str(nome_prop), def_prop, obrigatorias))
        schemas.append(
            SchemaOpenApi(
                nome=str(nome_schema),
                propriedades=tuple(propriedades),
            )
        )

    return EspecificacaoOpenApi(
        nome_modulo=nome_modulo,
        titulo=str(info["title"]),
        versao=str(info["version"]),
        url_servidor_padrao=url_servidor_padrao,
        rotas=tuple(rotas),
        schemas=tuple(schemas),
    )


def _tipo_python_propriedade(prop: PropriedadeOpenApi) -> str:
    if prop.eh_lista:
        item_py = prop.ref_schema if prop.ref_schema else TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][0]
        base_py = f"list[{item_py}]"
    elif prop.ref_schema:
        base_py = prop.ref_schema
    elif prop.valores_enum:
        literais = ", ".join(f'"{v}"' for v in prop.valores_enum)
        base_py = f"Literal[{literais}]"
    else:
        base_py = TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][0]

    com_nulo = f"{base_py} | None" if prop.anulavel else base_py
    if not prop.obrigatoria:
        return f"NotRequired[{com_nulo}]"
    return com_nulo


def gerar_codigo_python_openapi(spec: EspecificacaoOpenApi) -> str:
    """Emite o módulo Python (`.py`) com constantes de URL/rotas e `TypedDict` para schemas."""
    simbolos_typing: list[str] = []
    if any(
        not p.eh_lista and not p.ref_schema and p.tipo_base == "object"
        for s in spec.schemas
        for p in s.propriedades
    ):
        simbolos_typing.append("Any")
    if any(bool(p.valores_enum) for s in spec.schemas for p in s.propriedades):
        simbolos_typing.append("Literal")
    if any(not p.obrigatoria for s in spec.schemas for p in s.propriedades):
        simbolos_typing.append("NotRequired")
    simbolos_typing.append("TypedDict")

    linhas = [
        "# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors",
        "# SPDX-License-Identifier: MPL-2.0",
        "# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.",
        "",
        "from __future__ import annotations",
        "",
        f"from typing import {', '.join(simbolos_typing)}",
        "",
        f'URL_SERVIDOR_PADRAO: str = "{spec.url_servidor_padrao}"',
    ]

    rotas_vistas: set[str] = set()
    for rota in spec.rotas:
        nome_const = f"ROTA_{rota.operation_id.upper().replace('-', '_')}"
        if nome_const not in rotas_vistas:
            rotas_vistas.add(nome_const)
            linhas.append(f'{nome_const}: str = "{rota.caminho}"')

    for schema in spec.schemas:
        linhas.append("")
        linhas.append("")
        linhas.append(f"class {schema.nome}(TypedDict):")
        linhas.append(f'    """Schema OpenAPI `{schema.nome}`."""')
        linhas.append("")
        for prop in schema.propriedades:
            linhas.append(f"    {prop.nome}: {_tipo_python_propriedade(prop)}")

    linhas.append("")
    return "\n".join(linhas)


def _tipo_dart_base(prop: PropriedadeOpenApi) -> str:
    if prop.eh_lista:
        item_dart = (
            prop.ref_schema if prop.ref_schema else TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][1]
        )
        return f"List<{item_dart}>"
    if prop.ref_schema:
        return prop.ref_schema
    return TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][1]


def _expressao_leitura_dart_openapi(prop: PropriedadeOpenApi) -> str:
    chave = f"json['{prop.nome}']"
    eh_nulo = prop.anulavel or not prop.obrigatoria

    if prop.eh_lista:
        if prop.ref_schema:
            conversao = (
                f"({chave} as List<dynamic>)"
                f".map((e) => {prop.ref_schema}.fromJson(e as Map<String, dynamic>)).toList()"
            )
        else:
            tipo_item = TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][1]
            conversao = f"({chave} as List<dynamic>).map((e) => e as {tipo_item}).toList()"
        if eh_nulo:
            return f"{chave} != null ? {conversao} : null"
        return conversao

    if prop.ref_schema:
        conversao_ref = f"{prop.ref_schema}.fromJson({chave} as Map<String, dynamic>)"
        if eh_nulo:
            return f"{chave} != null ? {conversao_ref} : null"
        return conversao_ref

    tipo_dart = TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][1]
    if tipo_dart == "double":
        if eh_nulo:
            return f"({chave} as num?)?.toDouble()"
        return f"({chave} as num).toDouble()"
    if tipo_dart == "Map<String, dynamic>":
        if eh_nulo:
            return f"{chave} != null ? Map<String, dynamic>.from({chave} as Map) : null"
        return f"Map<String, dynamic>.from({chave} as Map)"

    sufixo = "?" if eh_nulo else ""
    return f"{chave} as {tipo_dart}{sufixo}"


def _expressao_escrita_dart_openapi(prop: PropriedadeOpenApi, nome_campo: str) -> str:
    eh_nulo = prop.anulavel or not prop.obrigatoria
    if prop.eh_lista and prop.ref_schema:
        op = "?." if eh_nulo else "."
        return f"{nome_campo}{op}map((e) => e.toJson()).toList()"
    if prop.ref_schema:
        op = "?." if eh_nulo else "."
        return f"{nome_campo}{op}toJson()"
    return nome_campo


def gerar_codigo_dart_openapi(spec: EspecificacaoOpenApi) -> str:
    """Emite o módulo Dart (`.dart`) com constantes de URL/rotas e classes DTO (`fromJson`/`toJson`)."""
    modulo_pascal = _para_pascal_case(spec.nome_modulo)
    linhas = [
        "// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors",
        "// SPDX-License-Identifier: MPL-2.0",
        "// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.",
        "",
        f"const String urlServidorPadrao{modulo_pascal} = '{spec.url_servidor_padrao}';",
    ]

    rotas_vistas: set[str] = set()
    for rota in spec.rotas:
        nome_const = f"rota{_para_pascal_case(rota.operation_id)}"
        if nome_const not in rotas_vistas:
            rotas_vistas.add(nome_const)
            linhas.append(f"const String {nome_const} = '{rota.caminho}';")

    for schema in spec.schemas:
        linhas.append("")
        linhas.append(f"class {schema.nome} {{")
        for prop in schema.propriedades:
            tipo_dart = _tipo_dart_base(prop)
            eh_nulo = prop.anulavel or not prop.obrigatoria
            sufixo = "?" if eh_nulo else ""
            nome_campo = _para_camel_case(prop.nome)
            linhas.append(f"  final {tipo_dart}{sufixo} {nome_campo};")

        linhas.append("")
        linhas.append(f"  const {schema.nome}({{")
        for prop in schema.propriedades:
            nome_campo = _para_camel_case(prop.nome)
            eh_nulo = prop.anulavel or not prop.obrigatoria
            prefixo = "" if eh_nulo else "required "
            linhas.append(f"    {prefixo}this.{nome_campo},")
        linhas.append("  });")

        linhas.append("")
        linhas.append(f"  factory {schema.nome}.fromJson(Map<String, dynamic> json) {{")
        linhas.append(f"    return {schema.nome}(")
        for prop in schema.propriedades:
            nome_campo = _para_camel_case(prop.nome)
            linhas.append(f"      {nome_campo}: {_expressao_leitura_dart_openapi(prop)},")
        linhas.append("    );")
        linhas.append("  }")

        linhas.append("")
        linhas.append("  Map<String, dynamic> toJson() {")
        linhas.append("    return <String, dynamic>{")
        for prop in schema.propriedades:
            nome_campo = _para_camel_case(prop.nome)
            valor_json = _expressao_escrita_dart_openapi(prop, nome_campo)
            linhas.append(f"      '{prop.nome}': {valor_json},")
        linhas.append("    };")
        linhas.append("  }")
        linhas.append("}")

    linhas.append("")
    return "\n".join(linhas)


def _tipo_ts_propriedade(prop: PropriedadeOpenApi) -> str:
    if prop.eh_lista:
        item_ts = prop.ref_schema if prop.ref_schema else TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][2]
        base_ts = f"{item_ts}[]"
    elif prop.ref_schema:
        base_ts = prop.ref_schema
    elif prop.valores_enum:
        base_ts = " | ".join(f'"{v}"' for v in prop.valores_enum)
    else:
        base_ts = TIPOS_PRIMITIVOS_OPENAPI[prop.tipo_base][2]

    return f"{base_ts} | null" if prop.anulavel else base_ts


def gerar_codigo_ts_openapi(spec: EspecificacaoOpenApi) -> str:
    """Emite o módulo TypeScript (`.ts`) com constantes de URL/rotas e `interface` para schemas."""
    linhas = [
        "// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors",
        "// SPDX-License-Identifier: MPL-2.0",
        "// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.",
        "",
        f'export const URL_SERVIDOR_PADRAO = "{spec.url_servidor_padrao}";',
    ]

    rotas_vistas: set[str] = set()
    for rota in spec.rotas:
        nome_const = f"ROTA_{rota.operation_id.upper().replace('-', '_')}"
        if nome_const not in rotas_vistas:
            rotas_vistas.add(nome_const)
            linhas.append(f'export const {nome_const} = "{rota.caminho}";')

    for schema in spec.schemas:
        linhas.append("")
        linhas.append(f"export interface {schema.nome} {{")
        for prop in schema.propriedades:
            opcional = "" if prop.obrigatoria else "?"
            linhas.append(f"  {prop.nome}{opcional}: {_tipo_ts_propriedade(prop)};")
        linhas.append("}")

    linhas.append("")
    return "\n".join(linhas)


def compilar_arquivos_openapi(diretorio_openapi: Path, diretorio_saida: Path) -> list[Path]:
    """
    Valida todos os arquivos `*.yaml` em `diretorio_openapi` e grava os módulos
    gerados em `diretorio_saida/{python,dart,ts}/`.
    """
    dir_py = diretorio_saida / "python"
    dir_dart = diretorio_saida / "dart"
    dir_ts = diretorio_saida / "ts"
    dir_py.mkdir(parents=True, exist_ok=True)
    dir_dart.mkdir(parents=True, exist_ok=True)
    dir_ts.mkdir(parents=True, exist_ok=True)

    arquivos_gerados: list[Path] = []
    init_py = dir_py / "__init__.py"
    init_py.write_text(
        "# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors\n"
        "# SPDX-License-Identifier: MPL-2.0\n",
        encoding="utf-8",
    )
    arquivos_gerados.append(init_py)

    for arquivo_yaml in sorted(diretorio_openapi.glob("*.yaml")):
        nome_modulo = arquivo_yaml.stem
        conteudo = arquivo_yaml.read_text(encoding="utf-8")
        spec = inspecionar_especificacao_openapi(conteudo, nome_modulo=nome_modulo)

        caminho_py = dir_py / f"{nome_modulo}.py"
        caminho_py.write_text(gerar_codigo_python_openapi(spec), encoding="utf-8")
        arquivos_gerados.append(caminho_py)

        caminho_dart = dir_dart / f"{nome_modulo}.dart"
        caminho_dart.write_text(gerar_codigo_dart_openapi(spec), encoding="utf-8")
        arquivos_gerados.append(caminho_dart)

        caminho_ts = dir_ts / f"{nome_modulo}.ts"
        caminho_ts.write_text(gerar_codigo_ts_openapi(spec), encoding="utf-8")
        arquivos_gerados.append(caminho_ts)

    return arquivos_gerados
