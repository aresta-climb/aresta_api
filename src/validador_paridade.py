# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

"""
Biblioteca validadora de paridade 1:1 entre tabelas relacionais SQLite (`EsquemaSql`)
e schemas OpenAPI 3.1 (`EspecificacaoOpenApi`).
"""

from __future__ import annotations

from .gerador_openapi import EspecificacaoOpenApi, SchemaOpenApi
from .gerador_sql import EsquemaSql, TabelaSql

EQUIVALENCIA_TIPOS_SQL_OPENAPI: dict[str, str] = {
    "TEXT": "string",
    "INTEGER": "integer",
    "REAL": "number",
    "BLOB": "string",
}

MAPEAMENTO_PARIDADE_CATALOGO: dict[str, str] = {
    "catalogo_croquis": "CatalogoCroqui",
    "catalogo_aresta": "CatalogoEntidade",
}


class ErroParidadeContrato(ValueError):
    """Exceção levantada quando uma tabela SQL e seu schema OpenAPI correspondente divergem."""


def validar_paridade_tabela_schema(tabela: TabelaSql, schema: SchemaOpenApi) -> None:
    """
    Verifica se as colunas de `tabela` coincidem em nome, ordem, tipo e nulabilidade
    com as propriedades de `schema`.
    """
    nomes_sql = [c.nome for c in tabela.colunas]
    nomes_openapi = [p.nome for p in schema.propriedades]

    if nomes_sql != nomes_openapi:
        raise ErroParidadeContrato(
            f"Divergência de colunas entre a tabela SQL '{tabela.nome}' ({nomes_sql}) "
            f"e o schema OpenAPI '{schema.nome}' ({nomes_openapi})."
        )

    for col, prop in zip(tabela.colunas, schema.propriedades, strict=True):
        if prop.eh_lista or prop.ref_schema is not None:
            raise ErroParidadeContrato(
                f"A propriedade '{schema.nome}.{prop.nome}' não pode ser lista ou referência "
                f"ao espelhar a coluna escalar '{tabela.nome}.{col.nome}'."
            )

        tipo_esperado = EQUIVALENCIA_TIPOS_SQL_OPENAPI[col.tipo_sql]
        if prop.tipo_base != tipo_esperado:
            raise ErroParidadeContrato(
                f"Divergência de tipo em '{tabela.nome}.{col.nome}': "
                f"SQL '{col.tipo_sql}' exige OpenAPI '{tipo_esperado}', "
                f"mas '{schema.nome}.{prop.nome}' declarou '{prop.tipo_base}'."
            )

        if not col.obrigatoria:
            if not prop.anulavel:
                raise ErroParidadeContrato(
                    f"A coluna '{tabela.nome}.{col.nome}' aceita NULL no SQL, "
                    f"mas '{schema.nome}.{prop.nome}' não permite null no OpenAPI."
                )
        else:
            if prop.anulavel:
                raise ErroParidadeContrato(
                    f"A coluna '{tabela.nome}.{col.nome}' é NOT NULL no SQL, "
                    f"mas '{schema.nome}.{prop.nome}' permite null no OpenAPI."
                )
            if not col.possui_padrao and not prop.obrigatoria:
                raise ErroParidadeContrato(
                    f"A coluna '{tabela.nome}.{col.nome}' é NOT NULL e não possui DEFAULT no SQL, "
                    f"portanto '{schema.nome}.{prop.nome}' deve ser required no OpenAPI."
                )


def validar_paridade_esquemas(
    esquema_sql: EsquemaSql,
    spec_openapi: EspecificacaoOpenApi,
    mapeamento_tabelas_schemas: dict[str, str],
) -> None:
    """
    Valida a paridade 1:1 para todos os pares `{nome_tabela_sql: nome_schema_openapi}`
    informados em `mapeamento_tabelas_schemas`.
    """
    tabelas_por_nome = {t.nome: t for t in esquema_sql.tabelas}
    schemas_por_nome = {s.nome: s for s in spec_openapi.schemas}

    for nome_tabela, nome_schema in mapeamento_tabelas_schemas.items():
        if nome_tabela not in tabelas_por_nome:
            raise ErroParidadeContrato(
                f"Tabela SQL '{nome_tabela}' não encontrada no esquema '{esquema_sql.nome_modulo}'."
            )
        if nome_schema not in schemas_por_nome:
            raise ErroParidadeContrato(
                f"Schema OpenAPI '{nome_schema}' não encontrado na especificação '{spec_openapi.nome_modulo}'."
            )
        validar_paridade_tabela_schema(
            tabelas_por_nome[nome_tabela],
            schemas_por_nome[nome_schema],
        )
