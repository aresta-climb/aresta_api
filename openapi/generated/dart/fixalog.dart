// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoFixalog = 'https://fixalog.app';
const String rotaRegistrarChavePublicaFixalog = '/api/v1/chaves';
const String rotaListarLaudosUsuarioFixalog = '/api/v1/laudos';
const String rotaEnviarVersaoLaudoFixalog = '/api/v1/laudos/{id}';
const String rotaDenunciarLaudoFixalog = '/api/v1/laudos/{id}/denunciar';
const String rotaVisualizarLaudoPublicoFixalog = '/v/{id}';
const String rotaObterMidiaByteRangeFixalog = '/v/{id}/midias/{caminho}';
const String rotaBaixarEpubAssinadoFixalog = '/v/{id}/epub';
const String rotaBaixarPdfResumoFixalog = '/v/{id}/pdf';

class ChaveUsuarioFixalog {
  final String fingerprintSha256;
  final String userId;
  final String chavePublicaPem;
  final String certificadoX509Pem;
  final String atestadoOidcJwt;
  final String provedorOidc;
  final String nomeDeclarado;
  final String? clubeDeclarado;
  final String criadoEm;

  const ChaveUsuarioFixalog({
    required this.fingerprintSha256,
    required this.userId,
    required this.chavePublicaPem,
    required this.certificadoX509Pem,
    required this.atestadoOidcJwt,
    required this.provedorOidc,
    required this.nomeDeclarado,
    this.clubeDeclarado,
    required this.criadoEm,
  });

  factory ChaveUsuarioFixalog.fromJson(Map<String, dynamic> json) {
    return ChaveUsuarioFixalog(
      fingerprintSha256: json['fingerprint_sha256'] as String,
      userId: json['user_id'] as String,
      chavePublicaPem: json['chave_publica_pem'] as String,
      certificadoX509Pem: json['certificado_x509_pem'] as String,
      atestadoOidcJwt: json['atestado_oidc_jwt'] as String,
      provedorOidc: json['provedor_oidc'] as String,
      nomeDeclarado: json['nome_declarado'] as String,
      clubeDeclarado: json['clube_declarado'] as String?,
      criadoEm: json['criado_em'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'fingerprint_sha256': fingerprintSha256,
      'user_id': userId,
      'chave_publica_pem': chavePublicaPem,
      'certificado_x509_pem': certificadoX509Pem,
      'atestado_oidc_jwt': atestadoOidcJwt,
      'provedor_oidc': provedorOidc,
      'nome_declarado': nomeDeclarado,
      'clube_declarado': clubeDeclarado,
      'criado_em': criadoEm,
    };
  }
}

class LaudoFixalog {
  final String idSessao;
  final String userId;
  final String categoria;
  final String idProtocolo;
  final String titulo;
  final String? escaladaUid;
  final double? latitude;
  final double? longitude;
  final int? versaoAtual;
  final String criadoEm;
  final String atualizadoEm;

  const LaudoFixalog({
    required this.idSessao,
    required this.userId,
    required this.categoria,
    required this.idProtocolo,
    required this.titulo,
    this.escaladaUid,
    this.latitude,
    this.longitude,
    this.versaoAtual,
    required this.criadoEm,
    required this.atualizadoEm,
  });

  factory LaudoFixalog.fromJson(Map<String, dynamic> json) {
    return LaudoFixalog(
      idSessao: json['id_sessao'] as String,
      userId: json['user_id'] as String,
      categoria: json['categoria'] as String,
      idProtocolo: json['id_protocolo'] as String,
      titulo: json['titulo'] as String,
      escaladaUid: json['escalada_uid'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      versaoAtual: json['versao_atual'] as int?,
      criadoEm: json['criado_em'] as String,
      atualizadoEm: json['atualizado_em'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id_sessao': idSessao,
      'user_id': userId,
      'categoria': categoria,
      'id_protocolo': idProtocolo,
      'titulo': titulo,
      'escalada_uid': escaladaUid,
      'latitude': latitude,
      'longitude': longitude,
      'versao_atual': versaoAtual,
      'criado_em': criadoEm,
      'atualizado_em': atualizadoEm,
    };
  }
}

class VersaoLaudoFixalog {
  final String idSessao;
  final int versao;
  final String r2Key;
  final int tamanhoBytes;
  final String hashEpubSha256;
  final String fingerprintChave;
  final String nomeMantenedor;
  final String? clubeMantenedor;
  final String indicesZipJson;
  final String? materiaisReferenciadosJson;
  final String? statusModeracao;
  final String? motivoModeracao;
  final String criadoEm;

  const VersaoLaudoFixalog({
    required this.idSessao,
    required this.versao,
    required this.r2Key,
    required this.tamanhoBytes,
    required this.hashEpubSha256,
    required this.fingerprintChave,
    required this.nomeMantenedor,
    this.clubeMantenedor,
    required this.indicesZipJson,
    this.materiaisReferenciadosJson,
    this.statusModeracao,
    this.motivoModeracao,
    required this.criadoEm,
  });

  factory VersaoLaudoFixalog.fromJson(Map<String, dynamic> json) {
    return VersaoLaudoFixalog(
      idSessao: json['id_sessao'] as String,
      versao: json['versao'] as int,
      r2Key: json['r2_key'] as String,
      tamanhoBytes: json['tamanho_bytes'] as int,
      hashEpubSha256: json['hash_epub_sha256'] as String,
      fingerprintChave: json['fingerprint_chave'] as String,
      nomeMantenedor: json['nome_mantenedor'] as String,
      clubeMantenedor: json['clube_mantenedor'] as String?,
      indicesZipJson: json['indices_zip_json'] as String,
      materiaisReferenciadosJson: json['materiais_referenciados_json'] as String?,
      statusModeracao: json['status_moderacao'] as String?,
      motivoModeracao: json['motivo_moderacao'] as String?,
      criadoEm: json['criado_em'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id_sessao': idSessao,
      'versao': versao,
      'r2_key': r2Key,
      'tamanho_bytes': tamanhoBytes,
      'hash_epub_sha256': hashEpubSha256,
      'fingerprint_chave': fingerprintChave,
      'nome_mantenedor': nomeMantenedor,
      'clube_mantenedor': clubeMantenedor,
      'indices_zip_json': indicesZipJson,
      'materiais_referenciados_json': materiaisReferenciadosJson,
      'status_moderacao': statusModeracao,
      'motivo_moderacao': motivoModeracao,
      'criado_em': criadoEm,
    };
  }
}

class RequisicaoRegistroChaveFixalog {
  final String chavePublicaPem;
  final String certificadoX509Pem;
  final String atestadoOidcJwt;
  final String provedorOidc;
  final String nomeDeclarado;
  final String? clubeDeclarado;

  const RequisicaoRegistroChaveFixalog({
    required this.chavePublicaPem,
    required this.certificadoX509Pem,
    required this.atestadoOidcJwt,
    required this.provedorOidc,
    required this.nomeDeclarado,
    this.clubeDeclarado,
  });

  factory RequisicaoRegistroChaveFixalog.fromJson(Map<String, dynamic> json) {
    return RequisicaoRegistroChaveFixalog(
      chavePublicaPem: json['chave_publica_pem'] as String,
      certificadoX509Pem: json['certificado_x509_pem'] as String,
      atestadoOidcJwt: json['atestado_oidc_jwt'] as String,
      provedorOidc: json['provedor_oidc'] as String,
      nomeDeclarado: json['nome_declarado'] as String,
      clubeDeclarado: json['clube_declarado'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'chave_publica_pem': chavePublicaPem,
      'certificado_x509_pem': certificadoX509Pem,
      'atestado_oidc_jwt': atestadoOidcJwt,
      'provedor_oidc': provedorOidc,
      'nome_declarado': nomeDeclarado,
      'clube_declarado': clubeDeclarado,
    };
  }
}

class RespostaUploadLaudoFixalog {
  final String idSessao;
  final int versao;
  final String statusModeracao;
  final String urlPublica;
  final String hashEpubSha256;

  const RespostaUploadLaudoFixalog({
    required this.idSessao,
    required this.versao,
    required this.statusModeracao,
    required this.urlPublica,
    required this.hashEpubSha256,
  });

  factory RespostaUploadLaudoFixalog.fromJson(Map<String, dynamic> json) {
    return RespostaUploadLaudoFixalog(
      idSessao: json['id_sessao'] as String,
      versao: json['versao'] as int,
      statusModeracao: json['status_moderacao'] as String,
      urlPublica: json['url_publica'] as String,
      hashEpubSha256: json['hash_epub_sha256'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id_sessao': idSessao,
      'versao': versao,
      'status_moderacao': statusModeracao,
      'url_publica': urlPublica,
      'hash_epub_sha256': hashEpubSha256,
    };
  }
}

class RespostaListaLaudosFixalog {
  final List<LaudoFixalog> laudos;

  const RespostaListaLaudosFixalog({
    required this.laudos,
  });

  factory RespostaListaLaudosFixalog.fromJson(Map<String, dynamic> json) {
    return RespostaListaLaudosFixalog(
      laudos: (json['laudos'] as List<dynamic>).map((e) => LaudoFixalog.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'laudos': laudos.map((e) => e.toJson()).toList(),
    };
  }
}

class RequisicaoDenunciaLaudoFixalog {
  final String motivo;
  final String? detalhes;

  const RequisicaoDenunciaLaudoFixalog({
    required this.motivo,
    this.detalhes,
  });

  factory RequisicaoDenunciaLaudoFixalog.fromJson(Map<String, dynamic> json) {
    return RequisicaoDenunciaLaudoFixalog(
      motivo: json['motivo'] as String,
      detalhes: json['detalhes'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'motivo': motivo,
      'detalhes': detalhes,
    };
  }
}

class RespostaDenunciaLaudoFixalog {
  final bool registrado;
  final String statusModeracao;

  const RespostaDenunciaLaudoFixalog({
    required this.registrado,
    required this.statusModeracao,
  });

  factory RespostaDenunciaLaudoFixalog.fromJson(Map<String, dynamic> json) {
    return RespostaDenunciaLaudoFixalog(
      registrado: json['registrado'] as bool,
      statusModeracao: json['status_moderacao'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'registrado': registrado,
      'status_moderacao': statusModeracao,
    };
  }
}

class ErroApiFixalog {
  final String erro;

  const ErroApiFixalog({
    required this.erro,
  });

  factory ErroApiFixalog.fromJson(Map<String, dynamic> json) {
    return ErroApiFixalog(
      erro: json['erro'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'erro': erro,
    };
  }
}
