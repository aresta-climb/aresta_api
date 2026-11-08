// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

const String ddlTabelaChavesUsuarioFixalog = r'''
CREATE TABLE IF NOT EXISTS chaves_usuario_fixalog (
    fingerprint_sha256 TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    chave_publica_pem TEXT NOT NULL,
    certificado_x509_pem TEXT NOT NULL,
    atestado_oidc_jwt TEXT NOT NULL,
    provedor_oidc TEXT NOT NULL,
    nome_declarado TEXT NOT NULL,
    clube_declarado TEXT,
    criado_em TEXT NOT NULL
);
''';

const String ddlTabelaLaudosFixalog = r'''
CREATE TABLE IF NOT EXISTS laudos_fixalog (
    id_sessao TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    categoria TEXT NOT NULL,
    id_protocolo TEXT NOT NULL,
    titulo TEXT NOT NULL,
    escalada_uid TEXT,
    latitude REAL,
    longitude REAL,
    versao_atual INTEGER NOT NULL DEFAULT 1,
    criado_em TEXT NOT NULL,
    atualizado_em TEXT NOT NULL
);
''';

const String ddlTabelaVersoesLaudoFixalog = r'''
CREATE TABLE IF NOT EXISTS versoes_laudo_fixalog (
    id_sessao TEXT NOT NULL,
    versao INTEGER NOT NULL,
    r2_key TEXT NOT NULL,
    tamanho_bytes INTEGER NOT NULL,
    hash_epub_sha256 TEXT NOT NULL,
    fingerprint_chave TEXT NOT NULL,
    nome_mantenedor TEXT NOT NULL,
    clube_mantenedor TEXT,
    indices_zip_json TEXT NOT NULL,
    materiais_referenciados_json TEXT NOT NULL DEFAULT '[]',
    status_moderacao TEXT NOT NULL DEFAULT 'em_analise',
    motivo_moderacao TEXT,
    criado_em TEXT NOT NULL,
    PRIMARY KEY (id_sessao, versao)
);
''';

const String ddlIndiceIdxChavesFixalogUser = r'''
CREATE INDEX IF NOT EXISTS idx_chaves_fixalog_user
ON chaves_usuario_fixalog(user_id);
''';

const String ddlIndiceIdxLaudosFixalogUser = r'''
CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_user
ON laudos_fixalog(user_id);
''';

const String ddlIndiceIdxLaudosFixalogEscalada = r'''
CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_escalada
ON laudos_fixalog(escalada_uid);
''';

const String ddlIndiceIdxVersoesFixalogFingerprint = r'''
CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_fingerprint
ON versoes_laudo_fixalog(fingerprint_chave);
''';

const String ddlIndiceIdxVersoesFixalogStatus = r'''
CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_status
ON versoes_laudo_fixalog(status_moderacao);
''';

const List<String> comandosDdlFixalogD1 = <String>[
  ddlTabelaChavesUsuarioFixalog,
  ddlTabelaLaudosFixalog,
  ddlTabelaVersoesLaudoFixalog,
  ddlIndiceIdxChavesFixalogUser,
  ddlIndiceIdxLaudosFixalogUser,
  ddlIndiceIdxLaudosFixalogEscalada,
  ddlIndiceIdxVersoesFixalogFingerprint,
  ddlIndiceIdxVersoesFixalogStatus,
];

const String ddlCompletoFixalogD1 = r'''
CREATE TABLE IF NOT EXISTS chaves_usuario_fixalog (
    fingerprint_sha256 TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    chave_publica_pem TEXT NOT NULL,
    certificado_x509_pem TEXT NOT NULL,
    atestado_oidc_jwt TEXT NOT NULL,
    provedor_oidc TEXT NOT NULL,
    nome_declarado TEXT NOT NULL,
    clube_declarado TEXT,
    criado_em TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS laudos_fixalog (
    id_sessao TEXT PRIMARY KEY,
    user_id TEXT NOT NULL,
    categoria TEXT NOT NULL,
    id_protocolo TEXT NOT NULL,
    titulo TEXT NOT NULL,
    escalada_uid TEXT,
    latitude REAL,
    longitude REAL,
    versao_atual INTEGER NOT NULL DEFAULT 1,
    criado_em TEXT NOT NULL,
    atualizado_em TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS versoes_laudo_fixalog (
    id_sessao TEXT NOT NULL,
    versao INTEGER NOT NULL,
    r2_key TEXT NOT NULL,
    tamanho_bytes INTEGER NOT NULL,
    hash_epub_sha256 TEXT NOT NULL,
    fingerprint_chave TEXT NOT NULL,
    nome_mantenedor TEXT NOT NULL,
    clube_mantenedor TEXT,
    indices_zip_json TEXT NOT NULL,
    materiais_referenciados_json TEXT NOT NULL DEFAULT '[]',
    status_moderacao TEXT NOT NULL DEFAULT 'em_analise',
    motivo_moderacao TEXT,
    criado_em TEXT NOT NULL,
    PRIMARY KEY (id_sessao, versao)
);

CREATE INDEX IF NOT EXISTS idx_chaves_fixalog_user
ON chaves_usuario_fixalog(user_id);

CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_user
ON laudos_fixalog(user_id);

CREATE INDEX IF NOT EXISTS idx_laudos_fixalog_escalada
ON laudos_fixalog(escalada_uid);

CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_fingerprint
ON versoes_laudo_fixalog(fingerprint_chave);

CREATE INDEX IF NOT EXISTS idx_versoes_fixalog_status
ON versoes_laudo_fixalog(status_moderacao);
''';

class LinhaChavesUsuarioFixalog {
  final String fingerprintSha256;
  final String userId;
  final String chavePublicaPem;
  final String certificadoX509Pem;
  final String atestadoOidcJwt;
  final String provedorOidc;
  final String nomeDeclarado;
  final String? clubeDeclarado;
  final String criadoEm;

  const LinhaChavesUsuarioFixalog({
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

  factory LinhaChavesUsuarioFixalog.fromMap(Map<String, dynamic> map) {
    return LinhaChavesUsuarioFixalog(
      fingerprintSha256: map['fingerprint_sha256'] as String,
      userId: map['user_id'] as String,
      chavePublicaPem: map['chave_publica_pem'] as String,
      certificadoX509Pem: map['certificado_x509_pem'] as String,
      atestadoOidcJwt: map['atestado_oidc_jwt'] as String,
      provedorOidc: map['provedor_oidc'] as String,
      nomeDeclarado: map['nome_declarado'] as String,
      clubeDeclarado: map['clube_declarado'] as String?,
      criadoEm: map['criado_em'] as String,
    );
  }

  Map<String, dynamic> toMap() {
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

class LinhaLaudosFixalog {
  final String idSessao;
  final String userId;
  final String categoria;
  final String idProtocolo;
  final String titulo;
  final String? escaladaUid;
  final double? latitude;
  final double? longitude;
  final int versaoAtual;
  final String criadoEm;
  final String atualizadoEm;

  const LinhaLaudosFixalog({
    required this.idSessao,
    required this.userId,
    required this.categoria,
    required this.idProtocolo,
    required this.titulo,
    this.escaladaUid,
    this.latitude,
    this.longitude,
    this.versaoAtual = 0,
    required this.criadoEm,
    required this.atualizadoEm,
  });

  factory LinhaLaudosFixalog.fromMap(Map<String, dynamic> map) {
    return LinhaLaudosFixalog(
      idSessao: map['id_sessao'] as String,
      userId: map['user_id'] as String,
      categoria: map['categoria'] as String,
      idProtocolo: map['id_protocolo'] as String,
      titulo: map['titulo'] as String,
      escaladaUid: map['escalada_uid'] as String?,
      latitude: (map['latitude'] as num?)?.toDouble(),
      longitude: (map['longitude'] as num?)?.toDouble(),
      versaoAtual: (map['versao_atual'] as int?) ?? 0,
      criadoEm: map['criado_em'] as String,
      atualizadoEm: map['atualizado_em'] as String,
    );
  }

  Map<String, dynamic> toMap() {
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

class LinhaVersoesLaudoFixalog {
  final String idSessao;
  final int versao;
  final String r2Key;
  final int tamanhoBytes;
  final String hashEpubSha256;
  final String fingerprintChave;
  final String nomeMantenedor;
  final String? clubeMantenedor;
  final String indicesZipJson;
  final String materiaisReferenciadosJson;
  final String statusModeracao;
  final String? motivoModeracao;
  final String criadoEm;

  const LinhaVersoesLaudoFixalog({
    required this.idSessao,
    required this.versao,
    required this.r2Key,
    required this.tamanhoBytes,
    required this.hashEpubSha256,
    required this.fingerprintChave,
    required this.nomeMantenedor,
    this.clubeMantenedor,
    required this.indicesZipJson,
    this.materiaisReferenciadosJson = '',
    this.statusModeracao = '',
    this.motivoModeracao,
    required this.criadoEm,
  });

  factory LinhaVersoesLaudoFixalog.fromMap(Map<String, dynamic> map) {
    return LinhaVersoesLaudoFixalog(
      idSessao: map['id_sessao'] as String,
      versao: map['versao'] as int,
      r2Key: map['r2_key'] as String,
      tamanhoBytes: map['tamanho_bytes'] as int,
      hashEpubSha256: map['hash_epub_sha256'] as String,
      fingerprintChave: map['fingerprint_chave'] as String,
      nomeMantenedor: map['nome_mantenedor'] as String,
      clubeMantenedor: map['clube_mantenedor'] as String?,
      indicesZipJson: map['indices_zip_json'] as String,
      materiaisReferenciadosJson: (map['materiais_referenciados_json'] as String?) ?? '',
      statusModeracao: (map['status_moderacao'] as String?) ?? '',
      motivoModeracao: map['motivo_moderacao'] as String?,
      criadoEm: map['criado_em'] as String,
    );
  }

  Map<String, dynamic> toMap() {
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
