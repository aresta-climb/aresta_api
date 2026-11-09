// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

export const URL_SERVIDOR_PADRAO = "https://fixalog.app";
export const ROTA_REGISTRAR_CHAVE_PUBLICA_FIXALOG = "/api/v1/chaves";
export const ROTA_LISTAR_LAUDOS_USUARIO_FIXALOG = "/api/v1/laudos";
export const ROTA_ENVIAR_VERSAO_LAUDO_FIXALOG = "/api/v1/laudos/{id}";
export const ROTA_CONSULTAR_STATUS_LAUDO_FIXALOG = "/api/v1/laudos/{id}/status";
export const ROTA_ENVIAR_CHUNK_LAUDO_FIXALOG = "/api/v1/laudos/{id}/chunk";
export const ROTA_DENUNCIAR_LAUDO_FIXALOG = "/api/v1/laudos/{id}/denunciar";
export const ROTA_VISUALIZAR_LAUDO_PUBLICO_FIXALOG = "/v/{id}";
export const ROTA_OBTER_MIDIA_BYTE_RANGE_FIXALOG = "/v/{id}/midias/{caminho}";
export const ROTA_BAIXAR_EPUB_ASSINADO_FIXALOG = "/v/{id}/epub";
export const ROTA_BAIXAR_PDF_RESUMO_FIXALOG = "/v/{id}/pdf";

export interface ChaveUsuarioFixalog {
  fingerprint_sha256: string;
  user_id: string;
  chave_publica_pem: string;
  certificado_x509_pem: string;
  atestado_oidc_jwt: string;
  provedor_oidc: "google" | "apple";
  nome_declarado: string;
  clube_declarado: string | null;
  criado_em: string;
}

export interface LaudoFixalog {
  id_sessao: string;
  user_id: string;
  categoria: "MANUTENCAO" | "MATERIAL";
  id_protocolo: string;
  titulo: string;
  escalada_uid: string | null;
  latitude: number | null;
  longitude: number | null;
  versao_atual?: number;
  criado_em: string;
  atualizado_em: string;
}

export interface VersaoLaudoFixalog {
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
  status_moderacao?: "em_analise" | "ativo" | "bloqueado" | "suspenso";
  motivo_moderacao: string | null;
  criado_em: string;
}

export interface RequisicaoRegistroChaveFixalog {
  chave_publica_pem: string;
  certificado_x509_pem: string;
  atestado_oidc_jwt: string;
  provedor_oidc: "google" | "apple";
  nome_declarado: string;
  clube_declarado?: string | null;
}

export interface RespostaUploadLaudoFixalog {
  id_sessao: string;
  versao: number;
  status_moderacao: "em_analise" | "ativo" | "bloqueado";
  url_publica: string;
  hash_epub_sha256: string;
  ja_enviado?: boolean;
}

export interface RespostaStatusLaudoFixalog {
  id_sessao: string;
  sha256?: string | null;
  ja_enviado: boolean;
  versao: number | null;
  status_moderacao: string | null;
  chunks_recebidos: number[];
}

export interface RespostaChunkLaudoFixalog {
  id_sessao: string;
  sha256: string;
  finalizado: boolean;
  ja_enviado?: boolean;
  versao?: number | null;
  status_moderacao?: string | null;
  url_publica?: string | null;
  chunks_recebidos: number[];
}

export interface RespostaListaLaudosFixalog {
  laudos: LaudoFixalog[];
}

export interface RequisicaoDenunciaLaudoFixalog {
  motivo: string;
  detalhes?: string | null;
}

export interface RespostaDenunciaLaudoFixalog {
  registrado: boolean;
  status_moderacao: string;
}

export interface ErroApiFixalog {
  erro: string;
}
