# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import TypedDict

DDL_TABELA_CATALOGO_CROQUIS = """
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT
);
""".strip()
COLUNAS_CATALOGO_CROQUIS: tuple[str, ...] = ("croqui_uid", "id_slug", "nome", "cidade", "estado",)

DDL_TABELA_CATALOGO_ARESTA = """
CREATE TABLE IF NOT EXISTS catalogo_aresta (
    uid TEXT PRIMARY KEY,
    tipo TEXT NOT NULL,
    croqui_uid TEXT NOT NULL,
    nome TEXT NOT NULL,
    escalada_grau TEXT,
    escalada_tipo TEXT,
    setor_uid TEXT,
    grupo_uid TEXT
);
""".strip()
COLUNAS_CATALOGO_ARESTA: tuple[str, ...] = ("uid", "tipo", "croqui_uid", "nome", "escalada_grau", "escalada_tipo", "setor_uid", "grupo_uid",)

DDL_TABELA_CATALOGO_META = """
CREATE TABLE IF NOT EXISTS catalogo_meta (
    chave TEXT PRIMARY KEY,
    valor TEXT NOT NULL
);
""".strip()
COLUNAS_CATALOGO_META: tuple[str, ...] = ("chave", "valor",)

DDL_INDICE_IDX_CATALOGO_ARESTA_CROQUI = """
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_croqui
ON catalogo_aresta(croqui_uid);
""".strip()

DDL_INDICE_IDX_CATALOGO_ARESTA_NOME = """
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_nome
ON catalogo_aresta(nome COLLATE NOCASE);
""".strip()

DDL_INDICE_IDX_CATALOGO_ARESTA_TIPO = """
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_tipo
ON catalogo_aresta(tipo);
""".strip()

COMANDOS_DDL: tuple[str, ...] = (
    DDL_TABELA_CATALOGO_CROQUIS,
    DDL_TABELA_CATALOGO_ARESTA,
    DDL_TABELA_CATALOGO_META,
    DDL_INDICE_IDX_CATALOGO_ARESTA_CROQUI,
    DDL_INDICE_IDX_CATALOGO_ARESTA_NOME,
    DDL_INDICE_IDX_CATALOGO_ARESTA_TIPO,
)
DDL_COMPLETO: str = "\n\n".join(COMANDOS_DDL)


class LinhaCatalogoCroquis(TypedDict):
    """Estrutura tipada de linha da tabela `catalogo_croquis`."""

    croqui_uid: str
    id_slug: str
    nome: str
    cidade: str | None
    estado: str | None

class LinhaCatalogoAresta(TypedDict):
    """Estrutura tipada de linha da tabela `catalogo_aresta`."""

    uid: str
    tipo: str
    croqui_uid: str
    nome: str
    escalada_grau: str | None
    escalada_tipo: str | None
    setor_uid: str | None
    grupo_uid: str | None

class LinhaCatalogoMeta(TypedDict):
    """Estrutura tipada de linha da tabela `catalogo_meta`."""

    chave: str
    valor: str
