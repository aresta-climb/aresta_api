# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

"""
Testes orientados a comportamento para `aresta_api/src/gerador_openapi.py`.

Valida 100% dos comportamentos observáveis do inspetor OpenAPI 3.1 e dos geradores
de código para Python, TypeScript e Dart (incluindo constantes de servidores, rotas,
tipos primitivos, enums anuláveis, listas, referências `$ref` e serialização JSON).
"""

from __future__ import annotations

from pathlib import Path

import pytest

from .gerador_openapi import (
    ErroEspecificacaoOpenApiInvalida,
    compilar_arquivos_openapi,
    gerar_codigo_dart_openapi,
    gerar_codigo_python_openapi,
    gerar_codigo_ts_openapi,
    inspecionar_especificacao_openapi,
)

YAML_MATRIZ_COMPLETA = """
openapi: 3.1.0
info:
  title: API Matriz de Comportamentos
  version: 2.1.0
servers:
  - url: https://api.arestaclimb.com
  - url: https://fallback.arestaclimb.com
paths:
  /recursos:
    get:
      operationId: listar_recursos
      responses:
        "200":
          description: OK
    post:
      operationId: criar-recurso
      responses:
        "201":
          description: Criado
  /recursos/{id}:
    put:
      operationId: substituir_recurso
      parameters:
        - name: id
          in: path
          required: true
          schema:
            type: string
      responses:
        "200":
          description: Substituído
    patch:
      operationId: atualizar_parcial_recurso
      parameters:
        - name: id
          in: path
          required: true
          schema:
            type: string
      responses:
        "200":
          description: Atualizado
    delete:
      operationId: remover_recurso
      parameters:
        - name: id
          in: path
          required: true
          schema:
            type: string
      responses:
        "204":
          description: Removido
components:
  schemas:
    FilhoRef:
      type: object
      required:
        - codigoId
      properties:
        codigoId:
          type: string
    MatrizTipos:
      type: object
      required:
        - texto_obrig
        - texto_anulavel
        - int_obrig
        - int_anulavel
        - num_obrig
        - num_anulavel
        - bool_obrig
        - bool_anulavel
        - obj_obrig
        - obj_anulavel
        - enum_obrig
        - enum_anulavel
        - lista_prim_obrig
        - lista_prim_anulavel
        - lista_ref_obrig
        - lista_ref_anulavel
        - ref_obrig
      properties:
        texto_obrig:
          type: string
        texto_anulavel:
          type: [string, "null"]
        texto_opc:
          type: string
        texto_opc_anulavel:
          type: [string, "null"]
        int_obrig:
          type: integer
        int_anulavel:
          type: [integer, "null"]
        int_opc:
          type: integer
        num_obrig:
          type: number
        num_anulavel:
          type: [number, "null"]
        num_opc:
          type: number
        bool_obrig:
          type: boolean
        bool_anulavel:
          type: [boolean, "null"]
        bool_opc:
          type: boolean
        obj_obrig:
          type: object
        obj_anulavel:
          type: [object, "null"]
        obj_opc:
          type: object
        enum_obrig:
          type: string
          enum: [ativo, inativo]
        enum_anulavel:
          type: [string, "null"]
          enum: [online, offline, null]
        enum_opc:
          type: string
          enum: [baixo, alto]
        lista_prim_obrig:
          type: array
          items:
            type: string
        lista_prim_anulavel:
          type: [array, "null"]
          items:
            type: integer
        lista_prim_opc:
          type: array
          items:
            type: string
        lista_ref_obrig:
          type: array
          items:
            $ref: "#/components/schemas/FilhoRef"
        lista_ref_anulavel:
          type: [array, "null"]
          items:
            $ref: "#/components/schemas/FilhoRef"
        lista_ref_opc:
          type: array
          items:
            $ref: "#/components/schemas/FilhoRef"
        ref_obrig:
          $ref: "#/components/schemas/FilhoRef"
        ref_opc:
          $ref: "#/components/schemas/FilhoRef"
"""


# =============================================================================
# 1. Comportamentos de Inspeção e Validação OpenAPI 3.1
# =============================================================================


def test_inspecionar_especificacao_openapi_extrai_metadados_e_servidor_principal() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")

    assert spec.nome_modulo == "matriz"
    assert spec.titulo == "API Matriz de Comportamentos"
    assert spec.versao == "2.1.0"
    assert spec.url_servidor_padrao == "https://api.arestaclimb.com"


def test_inspecionar_especificacao_openapi_sem_bloco_servers_define_url_vazia() -> None:
    yaml_sem_servers = """
openapi: 3.1.0
info:
  title: Sem Servidor
  version: 1.0.0
paths: {}
"""
    spec = inspecionar_especificacao_openapi(yaml_sem_servers, nome_modulo="local")
    assert spec.url_servidor_padrao == ""


def test_inspecionar_especificacao_openapi_extrai_todos_os_cinco_metodos_http() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")

    assert [(r.metodo, r.operation_id, r.caminho) for r in spec.rotas] == [
        ("GET", "listar_recursos", "/recursos"),
        ("POST", "criar-recurso", "/recursos"),
        ("PUT", "substituir_recurso", "/recursos/{id}"),
        ("PATCH", "atualizar_parcial_recurso", "/recursos/{id}"),
        ("DELETE", "remover_recurso", "/recursos/{id}"),
    ]


def test_inspecionar_especificacao_openapi_filtra_null_de_valores_enum_anulaveis() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")
    props = {p.nome: p for p in spec.schemas[1].propriedades}

    assert props["enum_obrig"].valores_enum == ("ativo", "inativo")
    assert props["enum_obrig"].anulavel is False
    assert props["enum_anulavel"].valores_enum == ("online", "offline")
    assert props["enum_anulavel"].anulavel is True


def test_inspecionar_especificacao_openapi_rejeita_sintaxe_yaml_invalida() -> None:
    with pytest.raises(ErroEspecificacaoOpenApiInvalida, match="YAML inválido"):
        inspecionar_especificacao_openapi("openapi: [invalido", nome_modulo="quebrado")


def test_inspecionar_especificacao_openapi_rejeita_raiz_que_nao_eh_dicionario() -> None:
    with pytest.raises(ErroEspecificacaoOpenApiInvalida, match="deve ser um objeto YAML"):
        inspecionar_especificacao_openapi("- item1\n- item2\n", nome_modulo="lista")


def test_inspecionar_especificacao_openapi_rejeita_violacao_do_schema_openapi_31() -> None:
    yaml_invalido = """
openapi: 3.1.0
info:
  title: Faltando Version
paths: {}
"""
    with pytest.raises(ErroEspecificacaoOpenApiInvalida, match="Especificação OpenAPI inválida"):
        inspecionar_especificacao_openapi(yaml_invalido, nome_modulo="invalido")


# =============================================================================
# 2. Comportamentos de Geração Python (gerar_codigo_python_openapi)
# =============================================================================


def test_gerar_codigo_python_openapi_importa_apenas_typed_dict_quando_schema_eh_simples() -> None:
    yaml_simples = """
openapi: 3.1.0
info:
  title: Simples
  version: 1.0.0
paths: {}
components:
  schemas:
    ApenasObrigatorios:
      type: object
      required: [id, ativo]
      properties:
        id: { type: string }
        ativo: { type: boolean }
"""
    spec = inspecionar_especificacao_openapi(yaml_simples, nome_modulo="simples")
    codigo_py = gerar_codigo_python_openapi(spec)

    assert "from typing import TypedDict\n" in codigo_py
    assert "Any" not in codigo_py
    assert "Literal" not in codigo_py
    assert "NotRequired" not in codigo_py


def test_gerar_codigo_python_openapi_deduplica_rotas_com_mesmo_operation_id_normalizado() -> None:
    yaml_rotas = """
openapi: 3.1.0
info:
  title: Rotas
  version: 1.0.0
paths:
  /rota-a:
    get:
      operationId: acao-teste
      responses:
        "200":
          description: OK
  /rota-b:
    post:
      operationId: acao_teste
      responses:
        "200":
          description: OK
"""
    spec = inspecionar_especificacao_openapi(yaml_rotas, nome_modulo="rotas")
    codigo_py = gerar_codigo_python_openapi(spec)

    assert codigo_py.count("ROTA_ACAO_TESTE:") == 1


def test_gerar_codigo_python_openapi_emite_todos_os_tipos_e_executa_sem_erros() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")
    codigo_py = gerar_codigo_python_openapi(spec)

    assert "from typing import Any, Literal, NotRequired, TypedDict" in codigo_py
    assert 'URL_SERVIDOR_PADRAO: str = "https://api.arestaclimb.com"' in codigo_py
    assert 'ROTA_LISTAR_RECURSOS: str = "/recursos"' in codigo_py
    assert 'ROTA_CRIAR_RECURSO: str = "/recursos"' in codigo_py
    assert 'ROTA_SUBSTITUIR_RECURSO: str = "/recursos/{id}"' in codigo_py
    assert 'ROTA_ATUALIZAR_PARCIAL_RECURSO: str = "/recursos/{id}"' in codigo_py
    assert 'ROTA_REMOVER_RECURSO: str = "/recursos/{id}"' in codigo_py

    anotacoes_esperadas = [
        "    texto_obrig: str",
        "    texto_anulavel: str | None",
        "    texto_opc: NotRequired[str]",
        "    texto_opc_anulavel: NotRequired[str | None]",
        "    int_obrig: int",
        "    int_anulavel: int | None",
        "    int_opc: NotRequired[int]",
        "    num_obrig: float",
        "    num_anulavel: float | None",
        "    num_opc: NotRequired[float]",
        "    bool_obrig: bool",
        "    bool_anulavel: bool | None",
        "    bool_opc: NotRequired[bool]",
        "    obj_obrig: dict[str, Any]",
        "    obj_anulavel: dict[str, Any] | None",
        "    obj_opc: NotRequired[dict[str, Any]]",
        '    enum_obrig: Literal["ativo", "inativo"]',
        '    enum_anulavel: Literal["online", "offline"] | None',
        '    enum_opc: NotRequired[Literal["baixo", "alto"]]',
        "    lista_prim_obrig: list[str]",
        "    lista_prim_anulavel: list[int] | None",
        "    lista_prim_opc: NotRequired[list[str]]",
        "    lista_ref_obrig: list[FilhoRef]",
        "    lista_ref_anulavel: list[FilhoRef] | None",
        "    lista_ref_opc: NotRequired[list[FilhoRef]]",
        "    ref_obrig: FilhoRef",
        "    ref_opc: NotRequired[FilhoRef]",
    ]
    for anotacao in anotacoes_esperadas:
        assert anotacao in codigo_py

    escopo: dict[str, object] = {}
    exec(codigo_py, escopo)
    assert "MatrizTipos" in escopo
    assert "FilhoRef" in escopo


# =============================================================================
# 3. Comportamentos de Geração TypeScript (gerar_codigo_ts_openapi)
# =============================================================================


def test_gerar_codigo_ts_openapi_emite_servidor_rotas_e_interfaces_completas() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")
    codigo_ts = gerar_codigo_ts_openapi(spec)

    assert 'export const URL_SERVIDOR_PADRAO = "https://api.arestaclimb.com";' in codigo_ts
    assert 'export const ROTA_LISTAR_RECURSOS = "/recursos";' in codigo_ts
    assert 'export const ROTA_CRIAR_RECURSO = "/recursos";' in codigo_ts
    assert 'export const ROTA_SUBSTITUIR_RECURSO = "/recursos/{id}";' in codigo_ts
    assert 'export const ROTA_ATUALIZAR_PARCIAL_RECURSO = "/recursos/{id}";' in codigo_ts
    assert 'export const ROTA_REMOVER_RECURSO = "/recursos/{id}";' in codigo_ts

    bloco_esperado = "\n".join(
        [
            "export interface MatrizTipos {",
            "  texto_obrig: string;",
            "  texto_anulavel: string | null;",
            "  texto_opc?: string;",
            "  texto_opc_anulavel?: string | null;",
            "  int_obrig: number;",
            "  int_anulavel: number | null;",
            "  int_opc?: number;",
            "  num_obrig: number;",
            "  num_anulavel: number | null;",
            "  num_opc?: number;",
            "  bool_obrig: boolean;",
            "  bool_anulavel: boolean | null;",
            "  bool_opc?: boolean;",
            "  obj_obrig: Record<string, unknown>;",
            "  obj_anulavel: Record<string, unknown> | null;",
            "  obj_opc?: Record<string, unknown>;",
            '  enum_obrig: "ativo" | "inativo";',
            '  enum_anulavel: "online" | "offline" | null;',
            '  enum_opc?: "baixo" | "alto";',
            "  lista_prim_obrig: string[];",
            "  lista_prim_anulavel: number[] | null;",
            "  lista_prim_opc?: string[];",
            "  lista_ref_obrig: FilhoRef[];",
            "  lista_ref_anulavel: FilhoRef[] | null;",
            "  lista_ref_opc?: FilhoRef[];",
            "  ref_obrig: FilhoRef;",
            "  ref_opc?: FilhoRef;",
            "}",
        ]
    )
    assert bloco_esperado in codigo_ts


# =============================================================================
# 4. Comportamentos de Geração Dart (gerar_codigo_dart_openapi)
# =============================================================================


def test_gerar_codigo_dart_openapi_emite_constantes_campos_e_construtor_corretos() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz_api")
    codigo_dart = gerar_codigo_dart_openapi(spec)

    assert "const String urlServidorPadraoMatrizApi = 'https://api.arestaclimb.com';" in codigo_dart
    assert "const String rotaListarRecursos = '/recursos';" in codigo_dart
    assert "const String rotaCriarRecurso = '/recursos';" in codigo_dart
    assert "const String rotaSubstituirRecurso = '/recursos/{id}';" in codigo_dart
    assert "const String rotaAtualizarParcialRecurso = '/recursos/{id}';" in codigo_dart
    assert "const String rotaRemoverRecurso = '/recursos/{id}';" in codigo_dart

    # Verifica preservação de camelCase em FilhoRef.codigoId
    assert "  final String codigoId;" in codigo_dart
    assert "  const FilhoRef({\n    required this.codigoId,\n  });" in codigo_dart

    construtor_matriz = "\n".join(
        [
            "  const MatrizTipos({",
            "    required this.textoObrig,",
            "    this.textoAnulavel,",
            "    this.textoOpc,",
            "    this.textoOpcAnulavel,",
            "    required this.intObrig,",
            "    this.intAnulavel,",
            "    this.intOpc,",
            "    required this.numObrig,",
            "    this.numAnulavel,",
            "    this.numOpc,",
            "    required this.boolObrig,",
            "    this.boolAnulavel,",
            "    this.boolOpc,",
            "    required this.objObrig,",
            "    this.objAnulavel,",
            "    this.objOpc,",
            "    required this.enumObrig,",
            "    this.enumAnulavel,",
            "    this.enumOpc,",
            "    required this.listaPrimObrig,",
            "    this.listaPrimAnulavel,",
            "    this.listaPrimOpc,",
            "    required this.listaRefObrig,",
            "    this.listaRefAnulavel,",
            "    this.listaRefOpc,",
            "    required this.refObrig,",
            "    this.refOpc,",
            "  });",
        ]
    )
    assert construtor_matriz in codigo_dart


def test_gerar_codigo_dart_openapi_emite_from_json_e_to_json_para_todas_combinacoes() -> None:
    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")
    codigo_dart = gerar_codigo_dart_openapi(spec)

    from_json_esperado = "\n".join(
        [
            "  factory MatrizTipos.fromJson(Map<String, dynamic> json) {",
            "    return MatrizTipos(",
            "      textoObrig: json['texto_obrig'] as String,",
            "      textoAnulavel: json['texto_anulavel'] as String?,",
            "      textoOpc: json['texto_opc'] as String?,",
            "      textoOpcAnulavel: json['texto_opc_anulavel'] as String?,",
            "      intObrig: json['int_obrig'] as int,",
            "      intAnulavel: json['int_anulavel'] as int?,",
            "      intOpc: json['int_opc'] as int?,",
            "      numObrig: (json['num_obrig'] as num).toDouble(),",
            "      numAnulavel: (json['num_anulavel'] as num?)?.toDouble(),",
            "      numOpc: (json['num_opc'] as num?)?.toDouble(),",
            "      boolObrig: json['bool_obrig'] as bool,",
            "      boolAnulavel: json['bool_anulavel'] as bool?,",
            "      boolOpc: json['bool_opc'] as bool?,",
            "      objObrig: Map<String, dynamic>.from(json['obj_obrig'] as Map),",
            "      objAnulavel: json['obj_anulavel'] != null ? Map<String, dynamic>.from(json['obj_anulavel'] as Map) : null,",
            "      objOpc: json['obj_opc'] != null ? Map<String, dynamic>.from(json['obj_opc'] as Map) : null,",
            "      enumObrig: json['enum_obrig'] as String,",
            "      enumAnulavel: json['enum_anulavel'] as String?,",
            "      enumOpc: json['enum_opc'] as String?,",
            "      listaPrimObrig: (json['lista_prim_obrig'] as List<dynamic>).map((e) => e as String).toList(),",
            "      listaPrimAnulavel: json['lista_prim_anulavel'] != null ? (json['lista_prim_anulavel'] as List<dynamic>).map((e) => e as int).toList() : null,",
            "      listaPrimOpc: json['lista_prim_opc'] != null ? (json['lista_prim_opc'] as List<dynamic>).map((e) => e as String).toList() : null,",
            "      listaRefObrig: (json['lista_ref_obrig'] as List<dynamic>).map((e) => FilhoRef.fromJson(e as Map<String, dynamic>)).toList(),",
            "      listaRefAnulavel: json['lista_ref_anulavel'] != null ? (json['lista_ref_anulavel'] as List<dynamic>).map((e) => FilhoRef.fromJson(e as Map<String, dynamic>)).toList() : null,",
            "      listaRefOpc: json['lista_ref_opc'] != null ? (json['lista_ref_opc'] as List<dynamic>).map((e) => FilhoRef.fromJson(e as Map<String, dynamic>)).toList() : null,",
            "      refObrig: FilhoRef.fromJson(json['ref_obrig'] as Map<String, dynamic>),",
            "      refOpc: json['ref_opc'] != null ? FilhoRef.fromJson(json['ref_opc'] as Map<String, dynamic>) : null,",
            "    );",
            "  }",
        ]
    )
    assert from_json_esperado in codigo_dart

    to_json_esperado = "\n".join(
        [
            "  Map<String, dynamic> toJson() {",
            "    return <String, dynamic>{",
            "      'texto_obrig': textoObrig,",
            "      'texto_anulavel': textoAnulavel,",
            "      'texto_opc': textoOpc,",
            "      'texto_opc_anulavel': textoOpcAnulavel,",
            "      'int_obrig': intObrig,",
            "      'int_anulavel': intAnulavel,",
            "      'int_opc': intOpc,",
            "      'num_obrig': numObrig,",
            "      'num_anulavel': numAnulavel,",
            "      'num_opc': numOpc,",
            "      'bool_obrig': boolObrig,",
            "      'bool_anulavel': boolAnulavel,",
            "      'bool_opc': boolOpc,",
            "      'obj_obrig': objObrig,",
            "      'obj_anulavel': objAnulavel,",
            "      'obj_opc': objOpc,",
            "      'enum_obrig': enumObrig,",
            "      'enum_anulavel': enumAnulavel,",
            "      'enum_opc': enumOpc,",
            "      'lista_prim_obrig': listaPrimObrig,",
            "      'lista_prim_anulavel': listaPrimAnulavel,",
            "      'lista_prim_opc': listaPrimOpc,",
            "      'lista_ref_obrig': listaRefObrig.map((e) => e.toJson()).toList(),",
            "      'lista_ref_anulavel': listaRefAnulavel?.map((e) => e.toJson()).toList(),",
            "      'lista_ref_opc': listaRefOpc?.map((e) => e.toJson()).toList(),",
            "      'ref_obrig': refObrig.toJson(),",
            "      'ref_opc': refOpc?.toJson(),",
            "    };",
            "  }",
        ]
    )
    assert to_json_esperado in codigo_dart


# =============================================================================
# 5. Compilação em Diretório e Especificações Reais do Ecossistema
# =============================================================================


def test_compilar_arquivos_openapi_em_diretorio_temporario(tmp_path: Path) -> None:
    dir_openapi = tmp_path / "openapi"
    dir_openapi.mkdir()
    (dir_openapi / "matriz.yaml").write_text(YAML_MATRIZ_COMPLETA, encoding="utf-8")

    dir_saida = dir_openapi / "generated"
    arquivos_gerados = compilar_arquivos_openapi(dir_openapi, dir_saida)

    assert (dir_saida / "python" / "__init__.py").exists()
    assert (dir_saida / "python" / "matriz.py").exists()
    assert (dir_saida / "dart" / "matriz.dart").exists()
    assert (dir_saida / "ts" / "matriz.ts").exists()
    assert len(arquivos_gerados) == 4


def test_especificacoes_reais_openapi_do_ecossistema_possuem_servidores_canonicos() -> None:
    raiz_api = Path(__file__).resolve().parent.parent
    dir_openapi = raiz_api / "openapi"

    servidores_esperados = {
        "catalogo": "https://catalogo.arestaclimb.com",
        "previa": "https://previa.arestaclimb.com",
        "colaboracao": "https://yzkhiaoqtxvvcyyuwmqg.supabase.co",
        "feedback": "https://yzkhiaoqtxvvcyyuwmqg.supabase.co",
    }

    for nome, url_esperada in servidores_esperados.items():
        conteudo = (dir_openapi / f"{nome}.yaml").read_text(encoding="utf-8")
        spec = inspecionar_especificacao_openapi(conteudo, nome_modulo=nome)
        assert spec.url_servidor_padrao == url_esperada
        assert len(spec.rotas) >= 2
        assert len(spec.schemas) >= 2


def test_execucao_real_typescript_openapi_no_deno(tmp_path: Path) -> None:
    import shutil
    import subprocess

    binario_deno = shutil.which("deno")
    if not binario_deno:  # pragma: no cover
        pytest.skip("Deno não disponível no PATH")

    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")
    arq_modulo = tmp_path / "matriz_openapi.ts"
    arq_modulo.write_text(gerar_codigo_ts_openapi(spec), encoding="utf-8")

    arq_teste = tmp_path / "verificar_openapi_ts.ts"
    arq_teste.write_text(
        """
import {
  FilhoRef,
  MatrizTipos,
  ROTA_CRIAR_RECURSO,
  ROTA_LISTAR_RECURSOS,
  URL_SERVIDOR_PADRAO,
} from "./matriz_openapi.ts";

const filho: FilhoRef = { codigoId: "f1" };
const matriz: MatrizTipos = {
  texto_obrig: "a",
  texto_anulavel: null,
  int_obrig: 1,
  int_anulavel: null,
  num_obrig: 1.5,
  num_anulavel: null,
  bool_obrig: true,
  bool_anulavel: null,
  obj_obrig: { chave: 123 },
  obj_anulavel: null,
  enum_obrig: "ativo",
  enum_anulavel: null,
  lista_prim_obrig: ["x"],
  lista_prim_anulavel: null,
  lista_ref_obrig: [filho],
  lista_ref_anulavel: null,
  ref_obrig: filho,
};

if (URL_SERVIDOR_PADRAO !== "https://api.arestaclimb.com") throw new Error("URL incorreta");
if (ROTA_LISTAR_RECURSOS !== "/recursos" || ROTA_CRIAR_RECURSO !== "/recursos") {
  throw new Error("Rotas incorretas");
}
if (matriz.ref_obrig.codigoId !== "f1") throw new Error("Referência incorreta");
""",
        encoding="utf-8",
    )

    resultado = subprocess.run(
        [binario_deno, "run", str(arq_teste)],
        capture_output=True,
        text=True,
        check=False,
    )
    assert resultado.returncode == 0, f"Erro no Deno: {resultado.stderr}"


def test_execucao_real_roundtrip_dart_openapi_na_vm_dart(tmp_path: Path) -> None:
    import shutil
    import subprocess

    binario_dart = shutil.which("dart")
    if not binario_dart:  # pragma: no cover
        pytest.skip("Dart não disponível no PATH")

    spec = inspecionar_especificacao_openapi(YAML_MATRIZ_COMPLETA, nome_modulo="matriz")
    arq_modulo = tmp_path / "matriz_openapi.dart"
    arq_modulo.write_text(gerar_codigo_dart_openapi(spec), encoding="utf-8")

    arq_main = tmp_path / "verificar_openapi_dart.dart"
    arq_main.write_text(
        """
import 'matriz_openapi.dart';

void main() {
  if (urlServidorPadraoMatriz != 'https://api.arestaclimb.com') {
    throw StateError('URL incorreta');
  }
  if (rotaListarRecursos != '/recursos' || rotaRemoverRecurso != '/recursos/{id}') {
    throw StateError('Rotas incorretas');
  }

  // 1. Round-trip com todos os campos preenchidos
  final completo = MatrizTipos(
    textoObrig: 'obrig',
    textoAnulavel: 'anulavel',
    textoOpc: 'opc',
    textoOpcAnulavel: 'opc_anulavel',
    intObrig: 10,
    intAnulavel: 20,
    intOpc: 30,
    numObrig: 1.25,
    numAnulavel: 2.5,
    numOpc: 3.75,
    boolObrig: true,
    boolAnulavel: false,
    boolOpc: true,
    objObrig: <String, dynamic>{'k': 'v'},
    objAnulavel: <String, dynamic>{'n': 1},
    objOpc: <String, dynamic>{'o': true},
    enumObrig: 'ativo',
    enumAnulavel: 'online',
    enumOpc: 'alto',
    listaPrimObrig: <String>['a', 'b'],
    listaPrimAnulavel: <int>[1, 2],
    listaPrimOpc: <String>['c'],
    listaRefObrig: <FilhoRef>[const FilhoRef(codigoId: 'r1')],
    listaRefAnulavel: <FilhoRef>[const FilhoRef(codigoId: 'r2')],
    listaRefOpc: <FilhoRef>[const FilhoRef(codigoId: 'r3')],
    refObrig: const FilhoRef(codigoId: 'principal'),
    refOpc: const FilhoRef(codigoId: 'secundario'),
  );

  final json = completo.toJson();
  final restaurado = MatrizTipos.fromJson(json);
  if (restaurado.textoObrig != 'obrig') throw StateError('Falha em textoObrig');
  if (restaurado.numObrig != 1.25) throw StateError('Falha em numObrig');
  if (restaurado.objObrig['k'] != 'v') throw StateError('Falha em objObrig');
  if (restaurado.listaRefObrig.first.codigoId != 'r1') throw StateError('Falha em listaRefObrig');
  if (restaurado.listaRefAnulavel?.first.codigoId != 'r2') throw StateError('Falha em listaRefAnulavel');
  if (restaurado.refObrig.codigoId != 'principal') throw StateError('Falha em refObrig');
  if (restaurado.refOpc?.codigoId != 'secundario') throw StateError('Falha em refOpc');

  // 2. Round-trip com campos opcionais/anuláveis definidos como null
  final comNulos = MatrizTipos(
    textoObrig: 'obrig',
    intObrig: 1,
    numObrig: 2.0,
    boolObrig: false,
    objObrig: <String, dynamic>{},
    enumObrig: 'inativo',
    listaPrimObrig: <String>[],
    listaRefObrig: <FilhoRef>[],
    refObrig: const FilhoRef(codigoId: 'unico'),
  );

  final jsonNulos = comNulos.toJson();
  final restauradoNulos = MatrizTipos.fromJson(jsonNulos);
  if (restauradoNulos.textoAnulavel != null) throw StateError('Esperava null em textoAnulavel');
  if (restauradoNulos.numAnulavel != null) throw StateError('Esperava null em numAnulavel');
  if (restauradoNulos.objAnulavel != null) throw StateError('Esperava null em objAnulavel');
  if (restauradoNulos.listaPrimAnulavel != null) throw StateError('Esperava null em listaPrimAnulavel');
  if (restauradoNulos.listaRefAnulavel != null) throw StateError('Esperava null em listaRefAnulavel');
  if (restauradoNulos.refOpc != null) throw StateError('Esperava null em refOpc');
}
""",
        encoding="utf-8",
    )

    resultado = subprocess.run(
        [binario_dart, "run", str(arq_main)],
        capture_output=True,
        text=True,
        check=False,
    )
    assert resultado.returncode == 0, f"Erro no Dart: {resultado.stderr}\n{resultado.stdout}"

