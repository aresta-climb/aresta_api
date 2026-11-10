-- SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
-- SPDX-License-Identifier: MPL-2.0
--
-- =============================================================================
-- ESQUEMA RELACIONAL DO FIXALOG NO CLOUDFLARE D1 COMPARTILHADO (fixalog_d1.sql)
-- =============================================================================
-- Propósito Geral:
--   Define as tabelas do ecossistema Fixalog dentro do banco Cloudflare D1
--   compartilhado (`aresta-catalogo`), permitindo rastreabilidade criptográfica
--   de chaves ECDSA vinculadas via OIDC (estilo OpenPubkey), versionamento
--   imutável de laudos (`v1`, `v2`, ...), índices de offset para leitura
--   parcial Byte-Range no R2 e relacionamento futuro via `escalada_uid` com as
--   vias do catálogo Aresta (`catalogo_aresta`).
-- =============================================================================

CREATE TABLE IF NOT EXISTS chaves_usuario_fixalog (
    fingerprint_sha256 TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    chave_publica_pem TEXT NOT NULL,
    certificado_x509_pem TEXT NOT NULL,
    atestado_oidc_jwt TEXT NOT NULL,
    provedor_oidc TEXT NOT NULL,
    nome_declarado TEXT NOT NULL,
    clube_declarado TEXT,
    criado_em TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS laudos_fixalog (
    id_sessao TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    categoria TEXT NOT NULL,
    id_protocolo TEXT NOT NULL,
    titulo TEXT NOT NULL,
    escalada_uid TEXT,
    latitude REAL,
    longitude REAL,
    versao_atual INTEGER NOT NULL DEFAULT 1,
    criado_em TEXT NOT NULL,
    atualizado_em TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS versoes_laudo_fixalog (
    id_sessao TEXT NOT NULL,
    versao INTEGER NOT NULL,
    r2_key TEXT NOT NULL,
    tamanho_bytes INTEGER NOT NULL,
    hash_epub_sha256 TEXT NOT NULL,
    fingerprint_chave TEXT NOT NULL,
    nome_mantenedor TEXT NOT NULL,
    clube_mantenedor TEXT,
    indices_zip_json TEXT NOT NULL,
    materiais_referenciados_json TEXT NOT NULL DEFAULT '[]',
    status_moderacao TEXT NOT NULL DEFAULT 'em_analise',
    motivo_moderacao TEXT,
    verificacao_concluida INTEGER NOT NULL DEFAULT 0,
    verificacao_total INTEGER NOT NULL DEFAULT 1,
    criado_em TEXT NOT NULL,
    PRIMARY KEY (id_sessao, versao)
);

CREATE INDEX IF NOT EXISTS idx_chaves_fixalog_user
ON chaves_usuario_fixalog(user_id);

CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_user
ON laudos_fixalog(user_id);

CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_escalada
ON laudos_fixalog(escalada_uid);

CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_fingerprint
ON versoes_laudo_fixalog(fingerprint_chave);

CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_status
ON versoes_laudo_fixalog(status_moderacao);
