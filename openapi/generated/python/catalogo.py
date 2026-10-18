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


class UpsertsSyncCatalogo(TypedDict):
    """Schema OpenAPI `UpsertsSyncCatalogo`."""

    croquis: list[CatalogoCroqui]
    entidades: list[CatalogoEntidade]


class DeletesSyncCatalogo(TypedDict):
    """Schema OpenAPI `DeletesSyncCatalogo`."""

    croquis: list[str]
    entidades: list[str]


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
