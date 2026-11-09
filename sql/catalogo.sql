-- SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
-- SPDX-License-Identifier: MPL-2.0
--
-- =============================================================================
-- ESQUEMA RELACIONAL CANÔNICO DO CATÁLOGO SQLITE (catalogo.db)
-- =============================================================================
-- Propósito Geral:
--   Define a estrutura do banco de dados SQLite local (`catalogo.db`) embarcado
--   e sincronizado no aplicativo móvel Aresta (`aresta_app`), gerado pelo
--   pipeline de compilação de dados (`aresta_db`) e espelhado no Cloudflare D1
--   (`aresta_backend/cloudflare/catalogo`).
--
--   O catálogo permite busca instantânea offline/online por picos, croquis,
--   grupos, setores, vias/boulders e botões de ação, além de resolução direta
--   de qualquer entidade pelo seu identificador único imutável (`uid`) para
--   integração com cadenas, favoritos, projetos e deep links.
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_croquis
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT
);

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_aresta
-- -----------------------------------------------------------------------------
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

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_meta
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS catalogo_meta (
    chave TEXT PRIMARY KEY,
    valor TEXT NOT NULL
);

-- -----------------------------------------------------------------------------
-- Índices de Performance de Consulta (catalogo_aresta)
-- -----------------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_croqui
ON catalogo_aresta(croqui_uid);

CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_nome
ON catalogo_aresta(nome COLLATE NOCASE);

CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_tipo
ON catalogo_aresta(tipo);

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_nos_estrada
-- -----------------------------------------------------------------------------
-- Propósito:
--   Armazena os nós únicos da malha viária do OpenStreetMap compartilhados entre
--   todos os croquis para estimativa offline de distância por estrada via KD-Tree 2D.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS catalogo_nos_estrada (
    no_osm_id INTEGER PRIMARY KEY,
    latitude_e7 INTEGER NOT NULL,
    longitude_e7 INTEGER NOT NULL
);

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_distancias_estrada
-- -----------------------------------------------------------------------------
-- Propósito:
--   Armazena de forma esparsa a distância pré-computada (em metros) de cada nó
--   rodoviário (`no_osm_id`) até o estacionamento de cada croqui (`croqui_uid`),
--   indicando em `na_borda` (0 ou 1) se o nó atua como portal de borda
--   para estimativas de longa distância (> 180 km).
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS catalogo_distancias_estrada (
    croqui_uid TEXT NOT NULL,
    no_osm_id INTEGER NOT NULL,
    distancia_metros INTEGER NOT NULL,
    na_borda INTEGER NOT NULL DEFAULT 0,
    duracao_minutos INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (croqui_uid, no_osm_id)
) WITHOUT ROWID;
