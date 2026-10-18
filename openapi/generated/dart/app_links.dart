// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoAppLinks = 'https://aresta.cc';
const String rotaVerificarSaudeAppLinks = '/health';
const String rotaObterAssetlinksAndroid = '/.well-known/assetlinks.json';
const String rotaObterAssociacaoIos = '/.well-known/apple-app-site-association';
const String rotaObterRobotsTxt = '/robots.txt';
const String rotaObterFaviconIco = '/favicon.ico';
const String rotaObterFaviconSvg = '/favicon.svg';
const String rotaResolverLinkUid = '/{uid}';
const String rotaResolverLinkPrefixadoUid = '/{prefixo}/{uid}';

class ResumoEntidadeLink {
  final String uid;
  final String tipo;
  final String nome;
  final String croquiUid;
  final String idSlug;
  final String croquiNome;
  final String? cidade;
  final String? estado;
  final String? escaladaGrau;
  final String? escaladaTipo;
  final String? setorNome;
  final String? grupoNome;

  const ResumoEntidadeLink({
    required this.uid,
    required this.tipo,
    required this.nome,
    required this.croquiUid,
    required this.idSlug,
    required this.croquiNome,
    this.cidade,
    this.estado,
    this.escaladaGrau,
    this.escaladaTipo,
    this.setorNome,
    this.grupoNome,
  });

  factory ResumoEntidadeLink.fromJson(Map<String, dynamic> json) {
    return ResumoEntidadeLink(
      uid: json['uid'] as String,
      tipo: json['tipo'] as String,
      nome: json['nome'] as String,
      croquiUid: json['croqui_uid'] as String,
      idSlug: json['id_slug'] as String,
      croquiNome: json['croqui_nome'] as String,
      cidade: json['cidade'] as String?,
      estado: json['estado'] as String?,
      escaladaGrau: json['escalada_grau'] as String?,
      escaladaTipo: json['escalada_tipo'] as String?,
      setorNome: json['setor_nome'] as String?,
      grupoNome: json['grupo_nome'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'tipo': tipo,
      'nome': nome,
      'croqui_uid': croquiUid,
      'id_slug': idSlug,
      'croqui_nome': croquiNome,
      'cidade': cidade,
      'estado': estado,
      'escalada_grau': escaladaGrau,
      'escalada_tipo': escaladaTipo,
      'setor_nome': setorNome,
      'grupo_nome': grupoNome,
    };
  }
}

class MetadadosRotaLink {
  final String uid;
  final String? prefixo;
  final bool abrirMapa;
  final String? origemLink;
  final String? utmSource;
  final String? utmMedium;

  const MetadadosRotaLink({
    required this.uid,
    this.prefixo,
    required this.abrirMapa,
    this.origemLink,
    this.utmSource,
    this.utmMedium,
  });

  factory MetadadosRotaLink.fromJson(Map<String, dynamic> json) {
    return MetadadosRotaLink(
      uid: json['uid'] as String,
      prefixo: json['prefixo'] as String?,
      abrirMapa: json['abrir_mapa'] as bool,
      origemLink: json['origem_link'] as String?,
      utmSource: json['utm_source'] as String?,
      utmMedium: json['utm_medium'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'prefixo': prefixo,
      'abrir_mapa': abrirMapa,
      'origem_link': origemLink,
      'utm_source': utmSource,
      'utm_medium': utmMedium,
    };
  }
}
