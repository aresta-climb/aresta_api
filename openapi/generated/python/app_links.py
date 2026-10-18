# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import Literal, TypedDict

URL_SERVIDOR_PADRAO: str = "https://aresta.cc"
ROTA_VERIFICAR_SAUDE_APP_LINKS: str = "/health"
ROTA_OBTER_ASSETLINKS_ANDROID: str = "/.well-known/assetlinks.json"
ROTA_OBTER_ASSOCIACAO_IOS: str = "/.well-known/apple-app-site-association"
ROTA_OBTER_ROBOTS_TXT: str = "/robots.txt"
ROTA_OBTER_FAVICON_ICO: str = "/favicon.ico"
ROTA_OBTER_FAVICON_SVG: str = "/favicon.svg"
ROTA_RESOLVER_LINK_UID: str = "/{uid}"
ROTA_RESOLVER_LINK_PREFIXADO_UID: str = "/{prefixo}/{uid}"


class ResumoEntidadeLink(TypedDict):
    """Schema OpenAPI `ResumoEntidadeLink`."""

    uid: str
    tipo: Literal["croqui", "grupo", "setor", "escalada"]
    nome: str
    croqui_uid: str
    id_slug: str
    croqui_nome: str
    cidade: str | None
    estado: str | None
    escalada_grau: str | None
    escalada_tipo: str | None
    setor_nome: str | None
    grupo_nome: str | None


class MetadadosRotaLink(TypedDict):
    """Schema OpenAPI `MetadadosRotaLink`."""

    uid: str
    prefixo: str | None
    abrir_mapa: bool
    origem_link: Literal["compartilhamento", "qrcode"] | None
    utm_source: str | None
    utm_medium: str | None
