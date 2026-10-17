# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import Literal, NotRequired, TypedDict

URL_SERVIDOR_PADRAO: str = "https://yzkhiaoqtxvvcyyuwmqg.supabase.co"
ROTA_ENVIAR_FEEDBACK_APP: str = "/functions/v1/app-feedback"
ROTA_ENVIAR_FEEDBACK_DISCORD: str = "/functions/v1/discord-feedback"
ROTA_VERIFICAR_SAUDE_FEEDBACK: str = "/health"
ROTA_OBTER_DIAGNOSTICO_FEEDBACK: str = "/diagnostico/{id}"
ROTA_OBTER_ANEXO_FEEDBACK: str = "/anexos/{caminho}"


class MetadadosFeedbackApp(TypedDict):
    """Schema OpenAPI `MetadadosFeedbackApp`."""

    feedbackId: str
    tipo_feedback: Literal["app", "croqui"]
    croqui_id: NotRequired[str | None]
    modo_acesso_croqui: NotRequired[Literal["online", "offline"] | None]
    appVersion: NotRequired[str]
    os: NotRequired[str]
    osVersion: NotRequired[str]
    deviceModel: NotRequired[str]
    screenSize: NotRequired[str]
    deviceOrientation: NotRequired[str]
    isDarkMode: NotRequired[bool]
    connectivity: NotRequired[str]
    appInstanceId: NotRequired[str]
    submittedAt: NotRequired[str]
    submittedAtTimestamp: NotRequired[str]
    breadcrumbs: NotRequired[list[str]]
    navigationTree: NotRequired[str]
    indice_sha256: NotRequired[str]
    croqui_status: NotRequired[str]
    thumbnail_status: NotRequired[str]


class RequisicaoMultipartFeedbackApp(TypedDict):
    """Schema OpenAPI `RequisicaoMultipartFeedbackApp`."""

    description: str
    metadata: str
    screenshot: NotRequired[str]
    indice_file: NotRequired[str]
    croqui_file: NotRequired[str]


class RespostaFeedback(TypedDict):
    """Schema OpenAPI `RespostaFeedback`."""

    success: bool
    message: str
    issue_url: NotRequired[str]


class ErroFeedback(TypedDict):
    """Schema OpenAPI `ErroFeedback`."""

    error: str
