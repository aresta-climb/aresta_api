// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

export const URL_SERVIDOR_PADRAO = "https://aresta.cc";
export const ROTA_VERIFICAR_SAUDE_APP_LINKS = "/health";
export const ROTA_OBTER_ASSETLINKS_ANDROID = "/.well-known/assetlinks.json";
export const ROTA_OBTER_ASSOCIACAO_IOS = "/.well-known/apple-app-site-association";
export const ROTA_OBTER_ROBOTS_TXT = "/robots.txt";
export const ROTA_OBTER_FAVICON_ICO = "/favicon.ico";
export const ROTA_OBTER_FAVICON_SVG = "/favicon.svg";
export const ROTA_RESOLVER_LINK_UID = "/{uid}";
export const ROTA_RESOLVER_LINK_PREFIXADO_UID = "/{prefixo}/{uid}";

export interface ResumoEntidadeLink {
  uid: string;
  tipo: "croqui" | "grupo" | "setor" | "escalada";
  nome: string;
  croqui_uid: string;
  id_slug: string;
  croqui_nome: string;
  cidade: string | null;
  estado: string | null;
  escalada_grau: string | null;
  escalada_tipo: string | null;
  setor_nome: string | null;
  grupo_nome: string | null;
}

export interface MetadadosRotaLink {
  uid: string;
  prefixo: string | null;
  abrir_mapa: boolean;
  origem_link: "compartilhamento" | "qrcode" | null;
  utm_source: string | null;
  utm_medium: string | null;
}
