-- SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
-- SPDX-License-Identifier: MPL-2.0
--
-- =============================================================================
-- ESQUEMA RELACIONAL DO HISTÓRICO DE DELTAS NO CLOUDFLARE D1 (catalogo_d1.sql)
-- =============================================================================
-- Propósito Geral:
--   Define a tabela exclusiva da infraestrutura de borda no Cloudflare D1
--   responsável por armazenar o diário sequencial (append-only log) de
--   diferenças (deltas) entre versões sucessivas do catálogo SQLite.
--
--   Quando um aplicativo móvel consulta `GET /sync?versao_local=X&versao_destino=Y`
--   no Worker `catalogo.arestaclimb.com`, o Worker localiza os `id`s
--   correspondentes a `X` e `Y` nesta tabela e condensa (Delta Squash) todos os
--   registros com `id > id_X AND id <= id_Y` em uma única resposta JSON
--   imutável e cacheável na CDN.
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: deltas_catalogo
-- -----------------------------------------------------------------------------
-- Propósito:
--   Registra cada transição de versão publicada pelo pipeline de deploy do
--   `aresta_db`, contendo os lotes JSON de inserções/atualizações (`upserts`) e
--   remoções (`deletes`) em relação à versão imediatamente anterior.
--
-- Colunas e Valores Possíveis:
--   * id (INTEGER PRIMARY KEY AUTOINCREMENT, gerado automaticamente):
--       Número sequencial estritamente crescente que define a ordem cronológica
--       e topológica das versões publicadas. Usado pelo Worker para verificar se
--       `id_local <= id_destino` e selecionar o intervalo `(id_local, id_destino]`.
--   * versao_hash (TEXT NOT NULL UNIQUE, obrigatório):
--       Hash lógico determinístico de 16 caracteres hexadecimais (SHA-256 curto)
--       que identifica univocamente o estado do catálogo após a aplicação deste
--       delta (idêntico ao valor de `catalogo_meta.valor` para a chave
--       `'versao_catalogo'`, ex: 'a1b2c3d4e5f60718').
--   * criado_em (TEXT NOT NULL, obrigatório):
--       Timestamp UTC em formato ISO-8601 / SQLite (`YYYY-MM-DD HH:MM:SS`)
--       gerado via `datetime('now')` no momento da sincronização com o D1.
--   * upserts_json (TEXT NOT NULL, obrigatório):
--       Documento JSON serializado obedecendo ao schema OpenAPI
--       `UpsertsSyncCatalogo` (`{"croquis": [...], "entidades": [...]}`),
--       contendo todas as linhas de `catalogo_croquis` e `catalogo_aresta`
--       inseridas ou modificadas nesta versão. Em um registro de bootstrap
--       inicial, armazena `{"croquis": [], "entidades": []}`.
--   * deletes_json (TEXT NOT NULL, obrigatório):
--       Documento JSON serializado obedecendo ao schema OpenAPI
--       `DeletesSyncCatalogo` (`{"croquis": [...], "entidades": [...]}`),
--       contendo as listas de `croqui_uid` e `uid` removidos nesta versão.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS deltas_catalogo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    versao_hash TEXT NOT NULL UNIQUE,
    criado_em TEXT NOT NULL,
    upserts_json TEXT NOT NULL,
    deletes_json TEXT NOT NULL
);

-- -----------------------------------------------------------------------------
-- Índices de Performance de Consulta (deltas_catalogo)
-- -----------------------------------------------------------------------------

-- Permite resolução rápida O(log N) dos identificadores sequenciais `id` a
-- partir do par `(versao_local, versao_destino)` na query:
-- `SELECT id, versao_hash FROM deltas_catalogo WHERE versao_hash IN (?, ?)`.
CREATE INDEX IF NOT EXISTS idx_deltas_versao_hash
ON deltas_catalogo(versao_hash);
