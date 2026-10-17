// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

export const DDL_TABELA_CATALOGO_CROQUIS = `
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT,
    atualizado_em INTEGER NOT NULL DEFAULT 0
);
`.trim();
export const COLUNAS_CATALOGO_CROQUIS: readonly string[] = ["croqui_uid", "id_slug", "nome", "cidade", "estado", "atualizado_em"];

export const DDL_TABELA_CATALOGO_ARESTA = `
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
`.trim();
export const COLUNAS_CATALOGO_ARESTA: readonly string[] = ["uid", "tipo", "croqui_uid", "nome", "escalada_grau", "escalada_tipo", "setor_uid", "grupo_uid"];

export const DDL_TABELA_CATALOGO_META = `
CREATE TABLE IF NOT EXISTS catalogo_meta (
    chave TEXT PRIMARY KEY,
    valor TEXT NOT NULL
);
`.trim();
export const COLUNAS_CATALOGO_META: readonly string[] = ["chave", "valor"];

export const DDL_INDICE_IDX_CATALOGO_ARESTA_CROQUI = `
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_croqui
ON catalogo_aresta(croqui_uid);
`.trim();

export const DDL_INDICE_IDX_CATALOGO_ARESTA_NOME = `
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_nome
ON catalogo_aresta(nome COLLATE NOCASE);
`.trim();

export const DDL_INDICE_IDX_CATALOGO_ARESTA_TIPO = `
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_tipo
ON catalogo_aresta(tipo);
`.trim();

export const COMANDOS_DDL: readonly string[] = [
  DDL_TABELA_CATALOGO_CROQUIS,
  DDL_TABELA_CATALOGO_ARESTA,
  DDL_TABELA_CATALOGO_META,
  DDL_INDICE_IDX_CATALOGO_ARESTA_CROQUI,
  DDL_INDICE_IDX_CATALOGO_ARESTA_NOME,
  DDL_INDICE_IDX_CATALOGO_ARESTA_TIPO,
];
export const DDL_COMPLETO: string = COMANDOS_DDL.join("\n\n");

export interface LinhaCatalogoCroquis {
  croqui_uid: string;
  id_slug: string;
  nome: string;
  cidade: string | null;
  estado: string | null;
  atualizado_em?: number;
}

export interface LinhaCatalogoAresta {
  uid: string;
  tipo: string;
  croqui_uid: string;
  nome: string;
  escalada_grau: string | null;
  escalada_tipo: string | null;
  setor_uid: string | null;
  grupo_uid: string | null;
}

export interface LinhaCatalogoMeta {
  chave: string;
  valor: string;
}
