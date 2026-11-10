// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

export const DDL_TABELA_CHAVES_USUARIO_FIXALOG = `
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
`.trim();
export const COLUNAS_CHAVES_USUARIO_FIXALOG: readonly string[] = ["fingerprint_sha256", "user_id", "chave_publica_pem", "certificado_x509_pem", "atestado_oidc_jwt", "provedor_oidc", "nome_declarado", "clube_declarado", "criado_em"];

export const DDL_TABELA_LAUDOS_FIXALOG = `
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
`.trim();
export const COLUNAS_LAUDOS_FIXALOG: readonly string[] = ["id_sessao", "user_id", "categoria", "id_protocolo", "titulo", "escalada_uid", "latitude", "longitude", "versao_atual", "criado_em", "atualizado_em"];

export const DDL_TABELA_VERSOES_LAUDO_FIXALOG = `
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
`.trim();
export const COLUNAS_VERSOES_LAUDO_FIXALOG: readonly string[] = ["id_sessao", "versao", "r2_key", "tamanho_bytes", "hash_epub_sha256", "fingerprint_chave", "nome_mantenedor", "clube_mantenedor", "indices_zip_json", "materiais_referenciados_json", "status_moderacao", "motivo_moderacao", "verificacao_concluida", "verificacao_total", "criado_em"];

export const DDL_INDICE_IDX_CHAVES_FIXALOG_USER = `
CREATE INDEX IF NOT EXISTS idx_chaves_fixalog_user
ON chaves_usuario_fixalog(user_id);
`.trim();

export const DDL_INDICE_IDX_LAUDOS_FIXALOG_USER = `
CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_user
ON laudos_fixalog(user_id);
`.trim();

export const DDL_INDICE_IDX_LAUDOS_FIXALOG_ESCALADA = `
CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_escalada
ON laudos_fixalog(escalada_uid);
`.trim();

export const DDL_INDICE_IDX_VERSOES_FIXALOG_FINGERPRINT = `
CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_fingerprint
ON versoes_laudo_fixalog(fingerprint_chave);
`.trim();

export const DDL_INDICE_IDX_VERSOES_FIXALOG_STATUS = `
CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_status
ON versoes_laudo_fixalog(status_moderacao);
`.trim();

export const COMANDOS_DDL: readonly string[] = [
  DDL_TABELA_CHAVES_USUARIO_FIXALOG,
  DDL_TABELA_LAUDOS_FIXALOG,
  DDL_TABELA_VERSOES_LAUDO_FIXALOG,
  DDL_INDICE_IDX_CHAVES_FIXALOG_USER,
  DDL_INDICE_IDX_LAUDOS_FIXALOG_USER,
  DDL_INDICE_IDX_LAUDOS_FIXALOG_ESCALADA,
  DDL_INDICE_IDX_VERSOES_FIXALOG_FINGERPRINT,
  DDL_INDICE_IDX_VERSOES_FIXALOG_STATUS,
];
export const DDL_COMPLETO: string = COMANDOS_DDL.join("\n\n");

export interface LinhaChavesUsuarioFixalog {
  fingerprint_sha256: string;
  user_id: string;
  chave_publica_pem: string;
  certificado_x509_pem: string;
  atestado_oidc_jwt: string;
  provedor_oidc: string;
  nome_declarado: string;
  clube_declarado: string | null;
  criado_em: string;
}

export interface LinhaLaudosFixalog {
  id_sessao: string;
  user_id: string;
  categoria: string;
  id_protocolo: string;
  titulo: string;
  escalada_uid: string | null;
  latitude: number | null;
  longitude: number | null;
  versao_atual?: number;
  criado_em: string;
  atualizado_em: string;
}

export interface LinhaVersoesLaudoFixalog {
  id_sessao: string;
  versao: number;
  r2_key: string;
  tamanho_bytes: number;
  hash_epub_sha256: string;
  fingerprint_chave: string;
  nome_mantenedor: string;
  clube_mantenedor: string | null;
  indices_zip_json: string;
  materiais_referenciados_json?: string;
  status_moderacao?: string;
  motivo_moderacao: string | null;
  verificacao_concluida?: number;
  verificacao_total?: number;
  criado_em: string;
}
