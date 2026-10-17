// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

export const URL_SERVIDOR_PADRAO = "https://yzkhiaoqtxvvcyyuwmqg.supabase.co";
export const ROTA_ENVIAR_FEEDBACK_APP = "/functions/v1/app-feedback";
export const ROTA_ENVIAR_FEEDBACK_DISCORD = "/functions/v1/discord-feedback";
export const ROTA_VERIFICAR_SAUDE_FEEDBACK = "/health";
export const ROTA_OBTER_DIAGNOSTICO_FEEDBACK = "/diagnostico/{id}";
export const ROTA_OBTER_ANEXO_FEEDBACK = "/anexos/{caminho}";

export interface MetadadosFeedbackApp {
  feedbackId: string;
  tipo_feedback: "app" | "croqui";
  croqui_id?: string | null;
  modo_acesso_croqui?: "online" | "offline" | null;
  appVersion?: string;
  os?: string;
  osVersion?: string;
  deviceModel?: string;
  screenSize?: string;
  deviceOrientation?: string;
  isDarkMode?: boolean;
  connectivity?: string;
  appInstanceId?: string;
  submittedAt?: string;
  submittedAtTimestamp?: string;
  breadcrumbs?: string[];
  navigationTree?: string;
  indice_sha256?: string;
  croqui_status?: string;
  thumbnail_status?: string;
}

export interface RequisicaoMultipartFeedbackApp {
  description: string;
  metadata: string;
  screenshot?: string;
  indice_file?: string;
  croqui_file?: string;
}

export interface RespostaFeedback {
  success: boolean;
  message: string;
  issue_url?: string;
}

export interface ErroFeedback {
  error: string;
}
