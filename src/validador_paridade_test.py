# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

"""
Testes orientados a comportamento para `aresta_api/src/validador_paridade.py`.

Verifica todos os invariantes de paridade 1:1 entre tabelas SQLite (`EsquemaSql`)
e schemas OpenAPI 3.1 (`EspecificacaoOpenApi`).
"""

from __future__ import annotations

from pathlib import Path

import pytest

from .gerador_openapi import inspecionar_especificacao_openapi
from .gerador_sql import inspecionar_esquema_sql
from .validador_paridade import (
    MAPEAMENTO_PARIDADE_CATALOGO,
    ErroParidadeContrato,
    validar_paridade_esquemas,
)


def test_validar_paridade_contratos_reais_catalogo() -> None:
    raiz_api = Path(__file__).resolve().parent.parent
    conteudo_sql = (raiz_api / "sql" / "catalogo.sql").read_text(encoding="utf-8")
    conteudo_yaml = (raiz_api / "openapi" / "catalogo.yaml").read_text(encoding="utf-8")

    esquema_sql = inspecionar_esquema_sql(conteudo_sql, nome_modulo="catalogo")
    spec_openapi = inspecionar_especificacao_openapi(conteudo_yaml, nome_modulo="catalogo")

    validar_paridade_esquemas(esquema_sql, spec_openapi, MAPEAMENTO_PARIDADE_CATALOGO)


def test_validar_paridade_aceita_todos_os_tipos_sql_e_colunas_com_default_opcionais() -> None:
    esquema_sql = inspecionar_esquema_sql(
        """
        CREATE TABLE completa (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT NOT NULL,
            apelido TEXT,
            pontuacao REAL NOT NULL,
            nota_opcional REAL,
            payload BLOB NOT NULL,
            atualizado_em INTEGER NOT NULL DEFAULT 0
        );
        """
    )
    spec_openapi = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Completa
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaCompleta:
      type: object
      required: [nome, apelido, pontuacao, nota_opcional, payload]
      properties:
        id: { type: integer }
        nome: { type: string }
        apelido: { type: [string, "null"] }
        pontuacao: { type: number }
        nota_opcional: { type: [number, "null"] }
        payload: { type: string }
        atualizado_em: { type: integer }
"""
    )

    validar_paridade_esquemas(esquema_sql, spec_openapi, {"completa": "SchemaCompleta"})


def test_validar_paridade_rejeita_tabela_sql_inexistente() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY);")
    spec_openapi = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [id]
      properties:
        id:
          type: string
"""
    )

    with pytest.raises(ErroParidadeContrato, match="Tabela SQL 'inexistente' não encontrada"):
        validar_paridade_esquemas(esquema_sql, spec_openapi, {"inexistente": "SchemaT1"})


def test_validar_paridade_rejeita_schema_openapi_inexistente() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY);")
    spec_openapi = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [id]
      properties:
        id:
          type: string
"""
    )

    with pytest.raises(ErroParidadeContrato, match="Schema OpenAPI 'Inexistente' não encontrado"):
        validar_paridade_esquemas(esquema_sql, spec_openapi, {"t1": "Inexistente"})


def test_validar_paridade_rejeita_divergencia_de_nomes_ou_ordem_de_colunas() -> None:
    esquema_sql = inspecionar_esquema_sql(
        "CREATE TABLE t1 (id TEXT PRIMARY KEY, nome TEXT NOT NULL);"
    )
    spec_openapi = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [nome, id]
      properties:
        nome:
          type: string
        id:
          type: string
"""
    )

    with pytest.raises(ErroParidadeContrato, match="Divergência de colunas"):
        validar_paridade_esquemas(esquema_sql, spec_openapi, {"t1": "SchemaT1"})


def test_validar_paridade_rejeita_propriedade_lista_para_coluna_escalar() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY, tags TEXT NOT NULL);")
    spec_lista = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [id, tags]
      properties:
        id:
          type: string
        tags:
          type: array
          items:
            type: string
"""
    )

    with pytest.raises(ErroParidadeContrato, match="não pode ser lista ou referência"):
        validar_paridade_esquemas(esquema_sql, spec_lista, {"t1": "SchemaT1"})


def test_validar_paridade_rejeita_propriedade_ref_para_coluna_escalar() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY, filho TEXT NOT NULL);")
    spec_ref = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    Outro:
      type: object
      properties:
        x: { type: string }
    SchemaT1:
      type: object
      required: [id, filho]
      properties:
        id:
          type: string
        filho:
          $ref: "#/components/schemas/Outro"
"""
    )

    with pytest.raises(ErroParidadeContrato, match="não pode ser lista ou referência"):
        validar_paridade_esquemas(esquema_sql, spec_ref, {"t1": "SchemaT1"})


@pytest.mark.parametrize(
    ("tipo_sql", "tipo_openapi_errado"),
    [
        ("TEXT", "integer"),
        ("INTEGER", "string"),
        ("REAL", "integer"),
        ("BLOB", "number"),
    ],
)
def test_validar_paridade_rejeita_divergencia_de_tipo_primitivo(
    tipo_sql: str, tipo_openapi_errado: str
) -> None:
    esquema_sql = inspecionar_esquema_sql(f"CREATE TABLE t1 (col {tipo_sql} NOT NULL);")
    spec_errado = inspecionar_especificacao_openapi(
        f"""
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {{}}
components:
  schemas:
    SchemaT1:
      type: object
      required: [col]
      properties:
        col:
          type: {tipo_openapi_errado}
"""
    )

    with pytest.raises(ErroParidadeContrato, match="Divergência de tipo"):
        validar_paridade_esquemas(esquema_sql, spec_errado, {"t1": "SchemaT1"})


def test_validar_paridade_rejeita_coluna_sql_anulavel_sem_null_no_openapi() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY, opcional TEXT);")
    spec_sem_null = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [id, opcional]
      properties:
        id: { type: string }
        opcional: { type: string }
"""
    )

    with pytest.raises(ErroParidadeContrato, match="aceita NULL no SQL"):
        validar_paridade_esquemas(esquema_sql, spec_sem_null, {"t1": "SchemaT1"})


def test_validar_paridade_rejeita_coluna_sql_not_null_com_null_no_openapi() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY, obrigatorio TEXT NOT NULL);")
    spec_nulo_indevido = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [id, obrigatorio]
      properties:
        id: { type: string }
        obrigatorio: { type: [string, "null"] }
"""
    )

    with pytest.raises(ErroParidadeContrato, match="é NOT NULL no SQL"):
        validar_paridade_esquemas(esquema_sql, spec_nulo_indevido, {"t1": "SchemaT1"})


def test_validar_paridade_rejeita_coluna_sql_not_null_sem_default_ausente_de_required() -> None:
    esquema_sql = inspecionar_esquema_sql("CREATE TABLE t1 (id TEXT PRIMARY KEY, obrigatorio TEXT NOT NULL);")
    spec_faltando_required = inspecionar_especificacao_openapi(
        """
openapi: 3.1.0
info:
  title: Teste
  version: 1.0.0
paths: {}
components:
  schemas:
    SchemaT1:
      type: object
      required: [id]
      properties:
        id: { type: string }
        obrigatorio: { type: string }
"""
    )

    with pytest.raises(ErroParidadeContrato, match="não possui DEFAULT no SQL"):
        validar_paridade_esquemas(esquema_sql, spec_faltando_required, {"t1": "SchemaT1"})
