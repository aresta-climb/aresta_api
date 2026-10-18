// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

export const URL_SERVIDOR_PADRAO = "https://catalogo.arestaclimb.com";
export const ROTA_VERIFICAR_SAUDE_CATALOGO = "/health";
export const ROTA_SINCRONIZAR_CATALOGO = "/sync";

export interface CatalogoCroqui {
  croqui_uid: string;
  id_slug: string;
  nome: string;
  cidade: string | null;
  estado: string | null;
}

export interface CatalogoEntidade {
  uid: string;
  tipo: string;
  croqui_uid: string;
  nome: string;
  escalada_grau: string | null;
  escalada_tipo: string | null;
  setor_uid: string | null;
  grupo_uid: string | null;
}

export interface UpsertsSyncCatalogo {
  croquis: CatalogoCroqui[];
  entidades: CatalogoEntidade[];
}

export interface DeletesSyncCatalogo {
  croquis: string[];
  entidades: string[];
}

export interface RespostaSyncCatalogo {
  acao: "apply_delta" | "full_download";
  versao_atual?: string;
  total_deltas?: number;
  versao_local?: string;
  versao_destino?: string;
  upserts?: UpsertsSyncCatalogo;
  deletes?: DeletesSyncCatalogo;
  motivo?: string;
}

export interface ErroCatalogo {
  erro: string;
}
