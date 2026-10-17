// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

export const URL_SERVIDOR_PADRAO = "https://yzkhiaoqtxvvcyyuwmqg.supabase.co";
export const ROTA_CRIAR_PULL_REQUEST = "/functions/v1/create-pr";
export const ROTA_GIT_PROXY_BASE = "/functions/v1/git-proxy";
export const ROTA_GIT_PROXY_INFO_REFS = "/functions/v1/git-proxy/info/refs";
export const ROTA_GIT_PROXY_RECEIVE_PACK = "/functions/v1/git-proxy/git-receive-pack";

export interface RequisicaoCriarPullRequest {
  branch: string;
  title: string;
  description: string;
  token_usuario_github?: string;
  github_user_token?: string;
}

export interface RespostaCriarPullRequest {
  numero_pr: number;
  url_pr: string;
  pr_number: number;
  pr_url: string;
  atualizado?: boolean;
}

export interface ErroColaboracao {
  erro: string;
  arquivos_invalidos?: string[];
}
