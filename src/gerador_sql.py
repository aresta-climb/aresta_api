# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

"""
Biblioteca geradora de contratos SQL multi-linguagem (Python, Dart e TypeScript).

Valida esquemas `.sql` executando-os num motor SQLite em memória real (`:memory:`),
extrai metadados das tabelas, colunas e índices via `sqlite_master` e `PRAGMA table_info`,
e emite artefatos tipados sem dependências externas em tempo de execução.
"""

from __future__ import annotations

import re
import sqlite3
from dataclasses import dataclass
from pathlib import Path

TIPOS_SQL_SUPORTADOS: dict[str, tuple[str, str, str]] = {
    # tipo_sql: (tipo_python, tipo_dart, tipo_ts)
    "TEXT": ("str", "String", "string"),
    "INTEGER": ("int", "int", "number"),
    "REAL": ("float", "double", "number"),
    "BLOB": ("bytes", "List<int>", "Uint8Array"),
}


class ErroEsquemaSqlInvalido(ValueError):
    """Exceção levantada quando um arquivo SQL é sintaticamente inválido ou incompatível."""


@dataclass(frozen=True)
class ColunaSql:
    """Metadados extraídos de uma coluna de tabela SQLite."""

    nome: str
    tipo_sql: str
    obrigatoria: bool
    chave_primaria: bool
    possui_padrao: bool


@dataclass(frozen=True)
class TabelaSql:
    """Metadados e instrução DDL de uma tabela SQLite."""

    nome: str
    colunas: tuple[ColunaSql, ...]
    ddl: str


@dataclass(frozen=True)
class IndiceSql:
    """Metadados e instrução DDL de um índice explícito SQLite."""

    nome: str
    nome_tabela: str
    ddl: str


@dataclass(frozen=True)
class EsquemaSql:
    """Representação completa e validada de um arquivo `.sql`."""

    nome_modulo: str
    ddl_completo: str
    comandos_ddl: tuple[str, ...]
    tabelas: tuple[TabelaSql, ...]
    indices: tuple[IndiceSql, ...]


def _separar_palavras(identificador: str) -> list[str]:
    com_underscores = re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", identificador.replace("-", "_"))
    return [parte for parte in com_underscores.split("_") if parte]


def _para_pascal_case(identificador: str) -> str:
    return "".join(parte.capitalize() for parte in _separar_palavras(identificador))


def _para_camel_case(identificador: str) -> str:
    partes = _separar_palavras(identificador)
    return partes[0].lower() + "".join(p.capitalize() for p in partes[1:])


def _extrair_comandos_sql(conteudo_sql: str) -> dict[tuple[str, str], str]:
    """
    Extrai os comandos DDL originais (preservando IF NOT EXISTS e removendo comentários `--`)
    indexados por `(tipo_objeto, nome_objeto)`.
    """
    linhas_limpas: list[str] = []
    for linha in conteudo_sql.splitlines():
        sem_comentario = re.sub(r"--.*$", "", linha).rstrip()
        if sem_comentario.strip():
            linhas_limpas.append(sem_comentario)
    sem_comentarios = "\n".join(linhas_limpas)
    mapa: dict[tuple[str, str], str] = {}
    padrao = re.compile(
        r"CREATE\s+(?:UNIQUE\s+)?(TABLE|INDEX)\s+(?:IF\s+NOT\s+EXISTS\s+)?([a-zA-Z0-9_]+)",
        re.IGNORECASE,
    )
    for parte in sem_comentarios.split(";"):
        trecho = parte.strip()
        correspondencia = padrao.search(trecho)
        if correspondencia:
            tipo_obj = correspondencia.group(1).lower()
            nome_obj = correspondencia.group(2)
            mapa[(tipo_obj, nome_obj)] = f"{trecho};"
    return mapa


def inspecionar_esquema_sql(conteudo_sql: str, nome_modulo: str = "esquema") -> EsquemaSql:
    """
    Executa `conteudo_sql` em um banco SQLite `:memory:` real e retorna o `EsquemaSql`
    com todas as tabelas, colunas e índices validados.
    """
    conexao = sqlite3.connect(":memory:")
    try:
        try:
            conexao.executescript(conteudo_sql)
        except sqlite3.Error as erro:
            raise ErroEsquemaSqlInvalido(f"Erro de sintaxe SQL em '{nome_modulo}': {erro}") from erro

        comandos_originais = _extrair_comandos_sql(conteudo_sql)
        cursor = conexao.cursor()

        linhas_tabelas = cursor.execute(
            "SELECT name, sql FROM sqlite_master "
            "WHERE type = 'table' AND name NOT LIKE 'sqlite_%' ORDER BY rowid"
        ).fetchall()

        if not linhas_tabelas:
            raise ErroEsquemaSqlInvalido(f"Nenhuma tabela encontrada no esquema '{nome_modulo}'.")

        tabelas: list[TabelaSql] = []
        comandos_ddl: list[str] = []

        for nome_tabela, sql_master in linhas_tabelas:
            ddl_tabela = comandos_originais.get(("table", nome_tabela), f"{sql_master.strip()};")
            comandos_ddl.append(ddl_tabela)
            eh_autoincrement = "AUTOINCREMENT" in ddl_tabela.upper()

            info_colunas = cursor.execute(f"PRAGMA table_info({nome_tabela})").fetchall()
            colunas: list[ColunaSql] = []
            for _cid, nome_col, tipo_bruto, notnull, valor_padrao, pk in info_colunas:
                tipo_normalizado = str(tipo_bruto).strip().upper()
                if tipo_normalizado not in TIPOS_SQL_SUPORTADOS:
                    raise ErroEsquemaSqlInvalido(
                        f"Tipo SQL não suportado '{tipo_bruto}' na coluna '{nome_tabela}.{nome_col}'."
                    )
                chave_primaria = bool(pk > 0)
                obrigatoria = bool(notnull == 1 or chave_primaria)
                possui_padrao = bool(
                    valor_padrao is not None
                    or (chave_primaria and tipo_normalizado == "INTEGER" and eh_autoincrement)
                )
                colunas.append(
                    ColunaSql(
                        nome=nome_col,
                        tipo_sql=tipo_normalizado,
                        obrigatoria=obrigatoria,
                        chave_primaria=chave_primaria,
                        possui_padrao=possui_padrao,
                    )
                )

            tabelas.append(
                TabelaSql(
                    nome=nome_tabela,
                    colunas=tuple(colunas),
                    ddl=ddl_tabela,
                )
            )

        linhas_indices = cursor.execute(
            "SELECT name, tbl_name, sql FROM sqlite_master "
            "WHERE type = 'index' AND sql IS NOT NULL AND name NOT LIKE 'sqlite_%' ORDER BY rowid"
        ).fetchall()

        indices: list[IndiceSql] = []
        for nome_indice, nome_tabela_idx, sql_idx in linhas_indices:
            ddl_indice = comandos_originais.get(("index", nome_indice), f"{sql_idx.strip()};")
            comandos_ddl.append(ddl_indice)
            indices.append(
                IndiceSql(
                    nome=nome_indice,
                    nome_tabela=nome_tabela_idx,
                    ddl=ddl_indice,
                )
            )

        ddl_completo = "\n\n".join(comandos_ddl)
        return EsquemaSql(
            nome_modulo=nome_modulo,
            ddl_completo=ddl_completo,
            comandos_ddl=tuple(comandos_ddl),
            tabelas=tuple(tabelas),
            indices=tuple(indices),
        )
    finally:
        conexao.close()


def gerar_codigo_python_sql(esquema: EsquemaSql) -> str:
    """Emite o módulo Python (`.py`) com constantes DDL e `TypedDict` para cada tabela."""
    usa_not_required = any(c.possui_padrao for t in esquema.tabelas for c in t.colunas)
    imports_typing = "NotRequired, TypedDict" if usa_not_required else "TypedDict"

    linhas = [
        "# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors",
        "# SPDX-License-Identifier: MPL-2.0",
        "# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.",
        "",
        "from __future__ import annotations",
        "",
        f"from typing import {imports_typing}",
        "",
    ]

    for tabela in esquema.tabelas:
        const_nome = f"DDL_TABELA_{tabela.nome.upper()}"
        linhas.append(f'{const_nome} = """\n{tabela.ddl}\n""".strip()')
        colunas_tupla = ", ".join(f'"{c.nome}"' for c in tabela.colunas)
        linhas.append(f"COLUNAS_{tabela.nome.upper()}: tuple[str, ...] = ({colunas_tupla},)")
        linhas.append("")

    for indice in esquema.indices:
        const_idx = f"DDL_INDICE_{indice.nome.upper()}"
        linhas.append(f'{const_idx} = """\n{indice.ddl}\n""".strip()')
        linhas.append("")

    nomes_comandos = [f"DDL_TABELA_{t.nome.upper()}" for t in esquema.tabelas] + [
        f"DDL_INDICE_{i.nome.upper()}" for i in esquema.indices
    ]
    itens_tupla = ",\n    ".join(nomes_comandos)
    linhas.append(f"COMANDOS_DDL: tuple[str, ...] = (\n    {itens_tupla},\n)")
    linhas.append('DDL_COMPLETO: str = "\\n\\n".join(COMANDOS_DDL)')
    linhas.append("")

    for tabela in esquema.tabelas:
        nome_classe = f"Linha{_para_pascal_case(tabela.nome)}"
        linhas.append("")
        linhas.append(f"class {nome_classe}(TypedDict):")
        linhas.append(f'    """Estrutura tipada de linha da tabela `{tabela.nome}`."""')
        linhas.append("")
        for col in tabela.colunas:
            tipo_py = TIPOS_SQL_SUPORTADOS[col.tipo_sql][0]
            if not col.obrigatoria:
                anotacao = f"{tipo_py} | None"
            elif col.possui_padrao:
                anotacao = f"NotRequired[{tipo_py}]"
            else:
                anotacao = tipo_py
            linhas.append(f"    {col.nome}: {anotacao}")

    linhas.append("")
    return "\n".join(linhas)


def gerar_codigo_dart_sql(esquema: EsquemaSql) -> str:
    """Emite o módulo Dart (`.dart`) com constantes DDL e classes DTO (`fromMap`/`toMap`)."""
    modulo_pascal = _para_pascal_case(esquema.nome_modulo)
    linhas = [
        "// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors",
        "// SPDX-License-Identifier: MPL-2.0",
        "// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.",
        "",
    ]

    nomes_constantes: list[str] = []
    for tabela in esquema.tabelas:
        nome_const = f"ddlTabela{_para_pascal_case(tabela.nome)}"
        nomes_constantes.append(nome_const)
        linhas.append(f"const String {nome_const} = r'''\n{tabela.ddl}\n''';")
        linhas.append("")

    for indice in esquema.indices:
        nome_const_idx = f"ddlIndice{_para_pascal_case(indice.nome)}"
        nomes_constantes.append(nome_const_idx)
        linhas.append(f"const String {nome_const_idx} = r'''\n{indice.ddl}\n''';")
        linhas.append("")

    lista_comandos = ",\n  ".join(nomes_constantes)
    linhas.append(f"const List<String> comandosDdl{modulo_pascal} = <String>[\n  {lista_comandos},\n];")
    linhas.append("")
    linhas.append(f"const String ddlCompleto{modulo_pascal} = r'''\n{esquema.ddl_completo}\n''';")

    for tabela in esquema.tabelas:
        nome_classe = f"Linha{_para_pascal_case(tabela.nome)}"
        linhas.append("")
        linhas.append(f"class {nome_classe} {{")
        for col in tabela.colunas:
            tipo_dart = TIPOS_SQL_SUPORTADOS[col.tipo_sql][1]
            sufixo_nulo = "" if col.obrigatoria else "?"
            nome_campo = _para_camel_case(col.nome)
            linhas.append(f"  final {tipo_dart}{sufixo_nulo} {nome_campo};")

        linhas.append("")
        linhas.append(f"  const {nome_classe}({{")
        for col in tabela.colunas:
            nome_campo = _para_camel_case(col.nome)
            tipo_dart = TIPOS_SQL_SUPORTADOS[col.tipo_sql][1]
            prefixo = "required " if (col.obrigatoria and not col.possui_padrao) else ""
            padrao = f" = {_valor_padrao_dart(tipo_dart)}" if (col.obrigatoria and col.possui_padrao) else ""
            linhas.append(f"    {prefixo}this.{nome_campo}{padrao},")
        linhas.append("  });")

        linhas.append("")
        linhas.append(f"  factory {nome_classe}.fromMap(Map<String, dynamic> map) {{")
        linhas.append(f"    return {nome_classe}(")
        for col in tabela.colunas:
            nome_campo = _para_camel_case(col.nome)
            tipo_dart = TIPOS_SQL_SUPORTADOS[col.tipo_sql][1]
            expr_leitura = _expressao_leitura_dart(col, tipo_dart)
            linhas.append(f"      {nome_campo}: {expr_leitura},")
        linhas.append("    );")
        linhas.append("  }")

        linhas.append("")
        linhas.append("  Map<String, dynamic> toMap() {")
        linhas.append("    return <String, dynamic>{")
        for col in tabela.colunas:
            nome_campo = _para_camel_case(col.nome)
            linhas.append(f"      '{col.nome}': {nome_campo},")
        linhas.append("    };")
        linhas.append("  }")
        linhas.append("}")

    linhas.append("")
    return "\n".join(linhas)


def _valor_padrao_dart(tipo_dart: str) -> str:
    if tipo_dart == "int":
        return "0"
    if tipo_dart == "double":
        return "0.0"
    if tipo_dart == "List<int>":
        return "const <int>[]"
    return "''"


def _expressao_leitura_dart(col: ColunaSql, tipo_dart: str) -> str:
    chave = f"map['{col.nome}']"
    if tipo_dart == "double":
        if col.possui_padrao:
            return f"({chave} as num?)?.toDouble() ?? 0.0"
        if col.obrigatoria:
            return f"({chave} as num).toDouble()"
        return f"({chave} as num?)?.toDouble()"
    if tipo_dart == "int":
        if col.possui_padrao:
            return f"({chave} as int?) ?? 0"
        if col.obrigatoria:
            return f"{chave} as int"
        return f"{chave} as int?"
    if tipo_dart == "List<int>":
        if col.possui_padrao:
            return f"{chave} != null ? List<int>.from({chave} as List) : <int>[]"
        if col.obrigatoria:
            return f"List<int>.from({chave} as List)"
        return f"{chave} != null ? List<int>.from({chave} as List) : null"
    if col.possui_padrao:
        return f"({chave} as String?) ?? ''"
    if col.obrigatoria:
        return f"{chave} as String"
    return f"{chave} as String?"


def gerar_codigo_ts_sql(esquema: EsquemaSql) -> str:
    """Emite o módulo TypeScript (`.ts`) com constantes DDL e `interface` para cada tabela."""
    linhas = [
        "// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors",
        "// SPDX-License-Identifier: MPL-2.0",
        "// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.",
        "",
    ]

    nomes_comandos: list[str] = []
    for tabela in esquema.tabelas:
        const_nome = f"DDL_TABELA_{tabela.nome.upper()}"
        nomes_comandos.append(const_nome)
        linhas.append(f"export const {const_nome} = `\n{tabela.ddl}\n`.trim();")
        colunas_ts = ", ".join(f'"{c.nome}"' for c in tabela.colunas)
        linhas.append(f"export const COLUNAS_{tabela.nome.upper()}: readonly string[] = [{colunas_ts}];")
        linhas.append("")

    for indice in esquema.indices:
        const_idx = f"DDL_INDICE_{indice.nome.upper()}"
        nomes_comandos.append(const_idx)
        linhas.append(f"export const {const_idx} = `\n{indice.ddl}\n`.trim();")
        linhas.append("")

    itens_array = ",\n  ".join(nomes_comandos)
    linhas.append(f"export const COMANDOS_DDL: readonly string[] = [\n  {itens_array},\n];")
    linhas.append('export const DDL_COMPLETO: string = COMANDOS_DDL.join("\\n\\n");')

    for tabela in esquema.tabelas:
        nome_interface = f"Linha{_para_pascal_case(tabela.nome)}"
        linhas.append("")
        linhas.append(f"export interface {nome_interface} {{")
        for col in tabela.colunas:
            tipo_ts = TIPOS_SQL_SUPORTADOS[col.tipo_sql][2]
            if not col.obrigatoria:
                linhas.append(f"  {col.nome}: {tipo_ts} | null;")
            elif col.possui_padrao:
                linhas.append(f"  {col.nome}?: {tipo_ts};")
            else:
                linhas.append(f"  {col.nome}: {tipo_ts};")
        linhas.append("}")

    linhas.append("")
    return "\n".join(linhas)


def compilar_arquivos_sql(diretorio_sql: Path, diretorio_saida: Path) -> list[Path]:
    """
    Valida todos os arquivos `*.sql` em `diretorio_sql` e grava os módulos
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

    for arquivo_sql in sorted(diretorio_sql.glob("*.sql")):
        nome_modulo = arquivo_sql.stem
        conteudo = arquivo_sql.read_text(encoding="utf-8")
        esquema = inspecionar_esquema_sql(conteudo, nome_modulo=nome_modulo)

        caminho_py = dir_py / f"{nome_modulo}_sql.py"
        caminho_py.write_text(gerar_codigo_python_sql(esquema), encoding="utf-8")
        arquivos_gerados.append(caminho_py)

        caminho_dart = dir_dart / f"{nome_modulo}_sql.dart"
        caminho_dart.write_text(gerar_codigo_dart_sql(esquema), encoding="utf-8")
        arquivos_gerados.append(caminho_dart)

        caminho_ts = dir_ts / f"{nome_modulo}_sql.ts"
        caminho_ts.write_text(gerar_codigo_ts_sql(esquema), encoding="utf-8")
        arquivos_gerados.append(caminho_ts)

    return arquivos_gerados
