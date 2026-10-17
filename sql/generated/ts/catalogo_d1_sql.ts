// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

export const DDL_TABELA_DELTAS_CATALOGO = `
CREATE TABLE IF NOT EXISTS deltas_catalogo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    versao_hash TEXT NOT NULL UNIQUE,
    criado_em TEXT NOT NULL,
    upserts_json TEXT NOT NULL,
    deletes_json TEXT NOT NULL
);
`.trim();
export const COLUNAS_DELTAS_CATALOGO: readonly string[] = ["id", "versao_hash", "criado_em", "upserts_json", "deletes_json"];

export const DDL_INDICE_IDX_DELTAS_VERSAO_HASH = `
CREATE INDEX IF NOT EXISTS idx_deltas_versao_hash
ON deltas_catalogo(versao_hash);
`.trim();

export const COMANDOS_DDL: readonly string[] = [
  DDL_TABELA_DELTAS_CATALOGO,
  DDL_INDICE_IDX_DELTAS_VERSAO_HASH,
];
export const DDL_COMPLETO: string = COMANDOS_DDL.join("\n\n");

export interface LinhaDeltasCatalogo {
  id?: number;
  versao_hash: string;
  criado_em: string;
  upserts_json: string;
  deletes_json: string;
}
