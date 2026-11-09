# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import Literal, NotRequired, TypedDict

URL_SERVIDOR_PADRAO: str = "https://catalogo.arestaclimb.com"
ROTA_VERIFICAR_SAUDE_CATALOGO: str = "/health"
ROTA_SINCRONIZAR_CATALOGO: str = "/sync"


class CatalogoCroqui(TypedDict):
    """Schema OpenAPI `CatalogoCroqui`."""

    croqui_uid: str
    id_slug: str
    nome: str
    cidade: str | None
    estado: str | None


class CatalogoEntidade(TypedDict):
    """Schema OpenAPI `CatalogoEntidade`."""

    uid: str
    tipo: str
    croqui_uid: str
    nome: str
    escalada_grau: str | None
    escalada_tipo: str | None
    setor_uid: str | None
    grupo_uid: str | None


class CatalogoNoEstrada(TypedDict):
    """Schema OpenAPI `CatalogoNoEstrada`."""

    no_osm_id: int
    latitude_e7: int
    longitude_e7: int


class CatalogoDistanciaEstrada(TypedDict):
    """Schema OpenAPI `CatalogoDistanciaEstrada`."""

    croqui_uid: str
    no_osm_id: int
    distancia_metros: int
    na_borda: NotRequired[int]
    duracao_minutos: NotRequired[int]


class UpsertsSyncCatalogo(TypedDict):
    """Schema OpenAPI `UpsertsSyncCatalogo`."""

    croquis: list[CatalogoCroqui]
    entidades: list[CatalogoEntidade]
    nos_estrada: NotRequired[list[CatalogoNoEstrada]]
    distancias_estrada: NotRequired[list[CatalogoDistanciaEstrada]]


class DeletesSyncCatalogo(TypedDict):
    """Schema OpenAPI `DeletesSyncCatalogo`."""

    croquis: list[str]
    entidades: list[str]
    nos_estrada: NotRequired[list[int]]
    distancias_estrada: NotRequired[list[str]]


class RespostaSyncCatalogo(TypedDict):
    """Schema OpenAPI `RespostaSyncCatalogo`."""

    acao: Literal["apply_delta", "full_download"]
    versao_atual: NotRequired[str]
    total_deltas: NotRequired[int]
    versao_local: NotRequired[str]
    versao_destino: NotRequired[str]
    upserts: NotRequired[UpsertsSyncCatalogo]
    deletes: NotRequired[DeletesSyncCatalogo]
    motivo: NotRequired[str]


class ErroCatalogo(TypedDict):
    """Schema OpenAPI `ErroCatalogo`."""

    erro: str
