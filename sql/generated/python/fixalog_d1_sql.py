# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import NotRequired, TypedDict

DDL_TABELA_CHAVES_USUARIO_FIXALOG = """
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
""".strip()
COLUNAS_CHAVES_USUARIO_FIXALOG: tuple[str, ...] = ("fingerprint_sha256", "user_id", "chave_publica_pem", "certificado_x509_pem", "atestado_oidc_jwt", "provedor_oidc", "nome_declarado", "clube_declarado", "criado_em",)

DDL_TABELA_LAUDOS_FIXALOG = """
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
""".strip()
COLUNAS_LAUDOS_FIXALOG: tuple[str, ...] = ("id_sessao", "user_id", "categoria", "id_protocolo", "titulo", "escalada_uid", "latitude", "longitude", "versao_atual", "criado_em", "atualizado_em",)

DDL_TABELA_VERSOES_LAUDO_FIXALOG = """
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
""".strip()
COLUNAS_VERSOES_LAUDO_FIXALOG: tuple[str, ...] = ("id_sessao", "versao", "r2_key", "tamanho_bytes", "hash_epub_sha256", "fingerprint_chave", "nome_mantenedor", "clube_mantenedor", "indices_zip_json", "materiais_referenciados_json", "status_moderacao", "motivo_moderacao", "verificacao_concluida", "verificacao_total", "criado_em",)

DDL_INDICE_IDX_CHAVES_FIXALOG_USER = """
CREATE INDEX IF NOT EXISTS idx_chaves_fixalog_user
ON chaves_usuario_fixalog(user_id);
""".strip()

DDL_INDICE_IDX_LAUDOS_FIXALOG_USER = """
CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_user
ON laudos_fixalog(user_id);
""".strip()

DDL_INDICE_IDX_LAUDOS_FIXALOG_ESCALADA = """
CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_escalada
ON laudos_fixalog(escalada_uid);
""".strip()

DDL_INDICE_IDX_VERSOES_FIXALOG_FINGERPRINT = """
CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_fingerprint
ON versoes_laudo_fixalog(fingerprint_chave);
""".strip()

DDL_INDICE_IDX_VERSOES_FIXALOG_STATUS = """
CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_status
ON versoes_laudo_fixalog(status_moderacao);
""".strip()

COMANDOS_DDL: tuple[str, ...] = (
    DDL_TABELA_CHAVES_USUARIO_FIXALOG,
    DDL_TABELA_LAUDOS_FIXALOG,
    DDL_TABELA_VERSOES_LAUDO_FIXALOG,
    DDL_INDICE_IDX_CHAVES_FIXALOG_USER,
    DDL_INDICE_IDX_LAUDOS_FIXALOG_USER,
    DDL_INDICE_IDX_LAUDOS_FIXALOG_ESCALADA,
    DDL_INDICE_IDX_VERSOES_FIXALOG_FINGERPRINT,
    DDL_INDICE_IDX_VERSOES_FIXALOG_STATUS,
)
DDL_COMPLETO: str = "\n\n".join(COMANDOS_DDL)


class LinhaChavesUsuarioFixalog(TypedDict):
    """Estrutura tipada de linha da tabela `chaves_usuario_fixalog`."""

    fingerprint_sha256: str
    user_id: str
    chave_publica_pem: str
    certificado_x509_pem: str
    atestado_oidc_jwt: str
    provedor_oidc: str
    nome_declarado: str
    clube_declarado: str | None
    criado_em: str

class LinhaLaudosFixalog(TypedDict):
    """Estrutura tipada de linha da tabela `laudos_fixalog`."""

    id_sessao: str
    user_id: str
    categoria: str
    id_protocolo: str
    titulo: str
    escalada_uid: str | None
    latitude: float | None
    longitude: float | None
    versao_atual: NotRequired[int]
    criado_em: str
    atualizado_em: str

class LinhaVersoesLaudoFixalog(TypedDict):
    """Estrutura tipada de linha da tabela `versoes_laudo_fixalog`."""

    id_sessao: str
    versao: int
    r2_key: str
    tamanho_bytes: int
    hash_epub_sha256: str
    fingerprint_chave: str
    nome_mantenedor: str
    clube_mantenedor: str | None
    indices_zip_json: str
    materiais_referenciados_json: NotRequired[str]
    status_moderacao: NotRequired[str]
    motivo_moderacao: str | None
    verificacao_concluida: NotRequired[int]
    verificacao_total: NotRequired[int]
    criado_em: str
