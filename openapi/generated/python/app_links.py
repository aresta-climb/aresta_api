# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import Literal, NotRequired, TypedDict

URL_SERVIDOR_PADRAO: str = "https://arestaclimb.com"
ROTA_VERIFICAR_SAUDE_APP_LINKS: str = "/health"
ROTA_OBTER_ASSETLINKS_ANDROID: str = "/.well-known/assetlinks.json"
ROTA_OBTER_ASSOCIACAO_IOS: str = "/.well-known/apple-app-site-association"
ROTA_OBTER_ROBOTS_TXT: str = "/robots.txt"
ROTA_OBTER_FAVICON_ICO: str = "/favicon.ico"
ROTA_OBTER_FAVICON_SVG: str = "/favicon.svg"
ROTA_OBTER_THUMBNAIL_OG: str = "/og/{id_slug}.webp"
ROTA_LISTAR_VITRINE_CROQUIS: str = "/croquis"
ROTA_OBTER_INDICE_BUSCA_VITRINE: str = "/croquis/busca.json"
ROTA_OBTER_SITEMAP_VITRINE: str = "/croquis/sitemap.xml"
ROTA_REDIRECIONAR_VITRINE_UID: str = "/croquis/{uid}"
ROTA_EXIBIR_ENTIDADE_VITRINE: str = "/croquis/{uid}/{slug}"
ROTA_RESOLVER_LINK_UID: str = "/{uid}"
ROTA_RESOLVER_LINK_PREFIXADO_UID: str = "/{prefixo}/{uid}"


class SubentidadeVitrine(TypedDict):
    """Schema OpenAPI `SubentidadeVitrine`."""

    uid: str
    tipo: Literal["grupo", "setor", "escalada"]
    nome: str
    escalada_grau: NotRequired[str | None]
    escalada_tipo: NotRequired[str | None]
    setor_uid: NotRequired[str | None]
    setor_nome: NotRequired[str | None]
    grupo_uid: NotRequired[str | None]
    grupo_nome: NotRequired[str | None]


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
    setor_uid: NotRequired[str | None]
    setor_nome: str | None
    grupo_uid: NotRequired[str | None]
    grupo_nome: str | None
    latitude_e7: NotRequired[int | None]
    longitude_e7: NotRequired[int | None]
    url_google_maps: NotRequired[str | None]
    subentidades: NotRequired[list[SubentidadeVitrine]]


class ResumoCroquiVitrine(TypedDict):
    """Schema OpenAPI `ResumoCroquiVitrine`."""

    croqui_uid: str
    id_slug: str
    nome: str
    cidade: NotRequired[str | None]
    estado: NotRequired[str | None]
    latitude_e7: NotRequired[int | None]
    longitude_e7: NotRequired[int | None]
    url_google_maps: NotRequired[str | None]
    total_setores: int
    total_escaladas: int


class ItemBuscaVitrine(TypedDict):
    """Schema OpenAPI `ItemBuscaVitrine`."""

    uid: str
    tipo: Literal["croqui", "grupo", "setor", "escalada"]
    nome: str
    grau: NotRequired[str | None]
    modalidade: NotRequired[str | None]
    croqui_nome: str
    localizacao: NotRequired[str | None]
    slug: str


class MetadadosRotaLink(TypedDict):
    """Schema OpenAPI `MetadadosRotaLink`."""

    uid: str
    prefixo: str | None
    abrir_mapa: bool
    origem_link: Literal["compartilhamento", "qrcode"] | None
    utm_source: str | None
    utm_medium: str | None
