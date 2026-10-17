# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import NotRequired, TypedDict

URL_SERVIDOR_PADRAO: str = "https://previa.arestaclimb.com"
ROTA_VERIFICAR_SAUDE_PREVIA: str = "/health"
ROTA_CRIAR_SESSAO_PREVIA: str = "/sessoes"
ROTA_OBTER_META_SESSAO_PREVIA: str = "/{codigo}/meta"
ROTA_CONECTAR_WEBSOCKET_PREVIA: str = "/ws"


class RespostaSaudePrevia(TypedDict):
    """Schema OpenAPI `RespostaSaudePrevia`."""

    servico: str
    status: str
    sessoesAtivas: int


class RequisicaoCriarSessaoPrevia(TypedDict):
    """Schema OpenAPI `RequisicaoCriarSessaoPrevia`."""

    ipLocal: NotRequired[str]
    portaLocal: NotRequired[int]
    nomeCroqui: NotRequired[str]


class RespostaSessaoPrevia(TypedDict):
    """Schema OpenAPI `RespostaSessaoPrevia`."""

    codigo: str
    codigo_formatado: str
    url_previa: str
    ws_url: str
    expira_em: NotRequired[int]


class MetadadosSessaoPrevia(TypedDict):
    """Schema OpenAPI `MetadadosSessaoPrevia`."""

    codigo: str
    criadoEm: NotRequired[int]
    ultimoAcessoEm: NotRequired[int]
    metadados: NotRequired[RequisicaoCriarSessaoPrevia]
    ipLocal: NotRequired[str | None]
    portaLocal: NotRequired[int | None]
    urlLocal: NotRequired[str | None]
    editorConectado: NotRequired[bool]


class ErroPrevia(TypedDict):
    """Schema OpenAPI `ErroPrevia`."""

    erro: str
