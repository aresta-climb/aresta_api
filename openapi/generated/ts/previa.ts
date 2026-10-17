// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

export const URL_SERVIDOR_PADRAO = "https://previa.arestaclimb.com";
export const ROTA_VERIFICAR_SAUDE_PREVIA = "/health";
export const ROTA_CRIAR_SESSAO_PREVIA = "/sessoes";
export const ROTA_OBTER_META_SESSAO_PREVIA = "/{codigo}/meta";
export const ROTA_CONECTAR_WEBSOCKET_PREVIA = "/ws";

export interface RespostaSaudePrevia {
  servico: string;
  status: string;
  sessoesAtivas: number;
}

export interface RequisicaoCriarSessaoPrevia {
  ipLocal?: string;
  portaLocal?: number;
  nomeCroqui?: string;
}

export interface RespostaSessaoPrevia {
  codigo: string;
  codigo_formatado: string;
  url_previa: string;
  ws_url: string;
  expira_em?: number;
}

export interface MetadadosSessaoPrevia {
  codigo: string;
  criadoEm?: number;
  ultimoAcessoEm?: number;
  metadados?: RequisicaoCriarSessaoPrevia;
  ipLocal?: string | null;
  portaLocal?: number | null;
  urlLocal?: string | null;
  editorConectado?: boolean;
}

export interface ErroPrevia {
  erro: string;
}
