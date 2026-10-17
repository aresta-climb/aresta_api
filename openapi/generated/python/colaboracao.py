# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import NotRequired, TypedDict

URL_SERVIDOR_PADRAO: str = "https://yzkhiaoqtxvvcyyuwmqg.supabase.co"
ROTA_CRIAR_PULL_REQUEST: str = "/functions/v1/create-pr"
ROTA_GIT_PROXY_BASE: str = "/functions/v1/git-proxy"
ROTA_GIT_PROXY_INFO_REFS: str = "/functions/v1/git-proxy/info/refs"
ROTA_GIT_PROXY_RECEIVE_PACK: str = "/functions/v1/git-proxy/git-receive-pack"


class RequisicaoCriarPullRequest(TypedDict):
    """Schema OpenAPI `RequisicaoCriarPullRequest`."""

    branch: str
    title: str
    description: str
    token_usuario_github: NotRequired[str]
    github_user_token: NotRequired[str]


class RespostaCriarPullRequest(TypedDict):
    """Schema OpenAPI `RespostaCriarPullRequest`."""

    numero_pr: int
    url_pr: str
    pr_number: int
    pr_url: str
    atualizado: NotRequired[bool]


class ErroColaboracao(TypedDict):
    """Schema OpenAPI `ErroColaboracao`."""

    erro: str
    arquivos_invalidos: NotRequired[list[str]]
