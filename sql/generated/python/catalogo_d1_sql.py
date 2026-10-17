# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import NotRequired, TypedDict

DDL_TABELA_DELTAS_CATALOGO = """
CREATE TABLE IF NOT EXISTS deltas_catalogo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    versao_hash TEXT NOT NULL UNIQUE,
    criado_em TEXT NOT NULL,
    upserts_json TEXT NOT NULL,
    deletes_json TEXT NOT NULL
);
""".strip()
COLUNAS_DELTAS_CATALOGO: tuple[str, ...] = ("id", "versao_hash", "criado_em", "upserts_json", "deletes_json",)

DDL_INDICE_IDX_DELTAS_VERSAO_HASH = """
CREATE INDEX IF NOT EXISTS idx_deltas_versao_hash
ON deltas_catalogo(versao_hash);
""".strip()

COMANDOS_DDL: tuple[str, ...] = (
    DDL_TABELA_DELTAS_CATALOGO,
    DDL_INDICE_IDX_DELTAS_VERSAO_HASH,
)
DDL_COMPLETO: str = "\n\n".join(COMANDOS_DDL)


class LinhaDeltasCatalogo(TypedDict):
    """Estrutura tipada de linha da tabela `deltas_catalogo`."""

    id: NotRequired[int]
    versao_hash: str
    criado_em: str
    upserts_json: str
    deletes_json: str
