# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0
# ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

from __future__ import annotations

from typing import Literal, NotRequired, TypedDict

URL_SERVIDOR_PADRAO: str = "https://fixalog.app"
ROTA_REGISTRAR_CHAVE_PUBLICA_FIXALOG: str = "/api/v1/chaves"
ROTA_LISTAR_LAUDOS_USUARIO_FIXALOG: str = "/api/v1/laudos"
ROTA_ENVIAR_VERSAO_LAUDO_FIXALOG: str = "/api/v1/laudos/{id}"
ROTA_DENUNCIAR_LAUDO_FIXALOG: str = "/api/v1/laudos/{id}/denunciar"
ROTA_VISUALIZAR_LAUDO_PUBLICO_FIXALOG: str = "/v/{id}"
ROTA_OBTER_MIDIA_BYTE_RANGE_FIXALOG: str = "/v/{id}/midias/{caminho}"
ROTA_BAIXAR_EPUB_ASSINADO_FIXALOG: str = "/v/{id}/epub"
ROTA_BAIXAR_PDF_RESUMO_FIXALOG: str = "/v/{id}/pdf"


class ChaveUsuarioFixalog(TypedDict):
    """Schema OpenAPI `ChaveUsuarioFixalog`."""

    fingerprint_sha256: str
    user_id: str
    chave_publica_pem: str
    certificado_x509_pem: str
    atestado_oidc_jwt: str
    provedor_oidc: Literal["google", "apple"]
    nome_declarado: str
    clube_declarado: str | None
    criado_em: str


class LaudoFixalog(TypedDict):
    """Schema OpenAPI `LaudoFixalog`."""

    id_sessao: str
    user_id: str
    categoria: Literal["MANUTENCAO", "MATERIAL"]
    id_protocolo: str
    titulo: str
    escalada_uid: str | None
    latitude: float | None
    longitude: float | None
    versao_atual: NotRequired[int]
    criado_em: str
    atualizado_em: str


class VersaoLaudoFixalog(TypedDict):
    """Schema OpenAPI `VersaoLaudoFixalog`."""

    id_sessao: str
    versao: int
    r2_key: str
    tamanho_bytes: int
    hash_epub_sha256: str
    fingerprint_chave: str
    nome_mantenedor: str
    clube_mantenedor: str | None
    indices_zip_json: str
    materiais_referenciados_json: NotRequired[str]
    status_moderacao: NotRequired[Literal["em_analise", "ativo", "bloqueado", "suspenso"]]
    motivo_moderacao: str | None
    criado_em: str


class RequisicaoRegistroChaveFixalog(TypedDict):
    """Schema OpenAPI `RequisicaoRegistroChaveFixalog`."""

    chave_publica_pem: str
    certificado_x509_pem: str
    atestado_oidc_jwt: str
    provedor_oidc: Literal["google", "apple"]
    nome_declarado: str
    clube_declarado: NotRequired[str | None]


class RespostaUploadLaudoFixalog(TypedDict):
    """Schema OpenAPI `RespostaUploadLaudoFixalog`."""

    id_sessao: str
    versao: int
    status_moderacao: Literal["em_analise", "ativo", "bloqueado"]
    url_publica: str
    hash_epub_sha256: str


class RespostaListaLaudosFixalog(TypedDict):
    """Schema OpenAPI `RespostaListaLaudosFixalog`."""

    laudos: list[LaudoFixalog]


class RequisicaoDenunciaLaudoFixalog(TypedDict):
    """Schema OpenAPI `RequisicaoDenunciaLaudoFixalog`."""

    motivo: str
    detalhes: NotRequired[str | None]


class RespostaDenunciaLaudoFixalog(TypedDict):
    """Schema OpenAPI `RespostaDenunciaLaudoFixalog`."""

    registrado: bool
    status_moderacao: str


class ErroApiFixalog(TypedDict):
    """Schema OpenAPI `ErroApiFixalog`."""

    erro: str
