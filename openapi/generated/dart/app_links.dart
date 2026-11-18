// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoAppLinks = 'https://arestaclimb.com';
const String rotaVerificarSaudeAppLinks = '/health';
const String rotaObterAssetlinksAndroid = '/.well-known/assetlinks.json';
const String rotaObterAssociacaoIos = '/.well-known/apple-app-site-association';
const String rotaObterRobotsTxt = '/robots.txt';
const String rotaObterFaviconIco = '/favicon.ico';
const String rotaObterFaviconSvg = '/favicon.svg';
const String rotaObterThumbnailOg = '/og/{id_slug}.webp';
const String rotaListarVitrineCroquis = '/croquis';
const String rotaObterIndiceBuscaVitrine = '/croquis/busca.json';
const String rotaObterSitemapVitrine = '/croquis/sitemap.xml';
const String rotaRedirecionarVitrineUid = '/croquis/{uid}';
const String rotaExibirEntidadeVitrine = '/croquis/{uid}/{slug}';
const String rotaResolverLinkUid = '/{uid}';
const String rotaResolverLinkPrefixadoUid = '/{prefixo}/{uid}';

class SubentidadeVitrine {
  final String uid;
  final String tipo;
  final String nome;
  final String? escaladaGrau;
  final String? escaladaTipo;
  final String? setorUid;
  final String? setorNome;
  final String? grupoUid;
  final String? grupoNome;

  const SubentidadeVitrine({
    required this.uid,
    required this.tipo,
    required this.nome,
    this.escaladaGrau,
    this.escaladaTipo,
    this.setorUid,
    this.setorNome,
    this.grupoUid,
    this.grupoNome,
  });

  factory SubentidadeVitrine.fromJson(Map<String, dynamic> json) {
    return SubentidadeVitrine(
      uid: json['uid'] as String,
      tipo: json['tipo'] as String,
      nome: json['nome'] as String,
      escaladaGrau: json['escalada_grau'] as String?,
      escaladaTipo: json['escalada_tipo'] as String?,
      setorUid: json['setor_uid'] as String?,
      setorNome: json['setor_nome'] as String?,
      grupoUid: json['grupo_uid'] as String?,
      grupoNome: json['grupo_nome'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'tipo': tipo,
      'nome': nome,
      'escalada_grau': escaladaGrau,
      'escalada_tipo': escaladaTipo,
      'setor_uid': setorUid,
      'setor_nome': setorNome,
      'grupo_uid': grupoUid,
      'grupo_nome': grupoNome,
    };
  }
}

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
  final String? setorUid;
  final String? setorNome;
  final String? grupoUid;
  final String? grupoNome;
  final int? latitudeE7;
  final int? longitudeE7;
  final String? urlGoogleMaps;
  final List<SubentidadeVitrine>? subentidades;

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
    this.setorUid,
    this.setorNome,
    this.grupoUid,
    this.grupoNome,
    this.latitudeE7,
    this.longitudeE7,
    this.urlGoogleMaps,
    this.subentidades,
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
      setorUid: json['setor_uid'] as String?,
      setorNome: json['setor_nome'] as String?,
      grupoUid: json['grupo_uid'] as String?,
      grupoNome: json['grupo_nome'] as String?,
      latitudeE7: json['latitude_e7'] as int?,
      longitudeE7: json['longitude_e7'] as int?,
      urlGoogleMaps: json['url_google_maps'] as String?,
      subentidades: json['subentidades'] != null ? (json['subentidades'] as List<dynamic>).map((e) => SubentidadeVitrine.fromJson(e as Map<String, dynamic>)).toList() : null,
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
      'setor_uid': setorUid,
      'setor_nome': setorNome,
      'grupo_uid': grupoUid,
      'grupo_nome': grupoNome,
      'latitude_e7': latitudeE7,
      'longitude_e7': longitudeE7,
      'url_google_maps': urlGoogleMaps,
      'subentidades': subentidades?.map((e) => e.toJson()).toList(),
    };
  }
}

class ResumoCroquiVitrine {
  final String croquiUid;
  final String idSlug;
  final String nome;
  final String? cidade;
  final String? estado;
  final int? latitudeE7;
  final int? longitudeE7;
  final String? urlGoogleMaps;
  final int totalSetores;
  final int totalEscaladas;

  const ResumoCroquiVitrine({
    required this.croquiUid,
    required this.idSlug,
    required this.nome,
    this.cidade,
    this.estado,
    this.latitudeE7,
    this.longitudeE7,
    this.urlGoogleMaps,
    required this.totalSetores,
    required this.totalEscaladas,
  });

  factory ResumoCroquiVitrine.fromJson(Map<String, dynamic> json) {
    return ResumoCroquiVitrine(
      croquiUid: json['croqui_uid'] as String,
      idSlug: json['id_slug'] as String,
      nome: json['nome'] as String,
      cidade: json['cidade'] as String?,
      estado: json['estado'] as String?,
      latitudeE7: json['latitude_e7'] as int?,
      longitudeE7: json['longitude_e7'] as int?,
      urlGoogleMaps: json['url_google_maps'] as String?,
      totalSetores: json['total_setores'] as int,
      totalEscaladas: json['total_escaladas'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'croqui_uid': croquiUid,
      'id_slug': idSlug,
      'nome': nome,
      'cidade': cidade,
      'estado': estado,
      'latitude_e7': latitudeE7,
      'longitude_e7': longitudeE7,
      'url_google_maps': urlGoogleMaps,
      'total_setores': totalSetores,
      'total_escaladas': totalEscaladas,
    };
  }
}

class ItemBuscaVitrine {
  final String uid;
  final String tipo;
  final String nome;
  final String? grau;
  final String? modalidade;
  final String croquiNome;
  final String? localizacao;
  final String slug;

  const ItemBuscaVitrine({
    required this.uid,
    required this.tipo,
    required this.nome,
    this.grau,
    this.modalidade,
    required this.croquiNome,
    this.localizacao,
    required this.slug,
  });

  factory ItemBuscaVitrine.fromJson(Map<String, dynamic> json) {
    return ItemBuscaVitrine(
      uid: json['uid'] as String,
      tipo: json['tipo'] as String,
      nome: json['nome'] as String,
      grau: json['grau'] as String?,
      modalidade: json['modalidade'] as String?,
      croquiNome: json['croqui_nome'] as String,
      localizacao: json['localizacao'] as String?,
      slug: json['slug'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'tipo': tipo,
      'nome': nome,
      'grau': grau,
      'modalidade': modalidade,
      'croqui_nome': croquiNome,
      'localizacao': localizacao,
      'slug': slug,
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
