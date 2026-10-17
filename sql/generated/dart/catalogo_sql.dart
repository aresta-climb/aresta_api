// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

const String ddlTabelaCatalogoCroquis = r'''
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT,
    atualizado_em INTEGER NOT NULL DEFAULT 0
);
''';

const String ddlTabelaCatalogoAresta = r'''
CREATE TABLE IF NOT EXISTS catalogo_aresta (
    uid TEXT PRIMARY KEY,
    tipo TEXT NOT NULL,
    croqui_uid TEXT NOT NULL,
    nome TEXT NOT NULL,
    escalada_grau TEXT,
    escalada_tipo TEXT,
    setor_uid TEXT,
    grupo_uid TEXT
);
''';

const String ddlTabelaCatalogoMeta = r'''
CREATE TABLE IF NOT EXISTS catalogo_meta (
    chave TEXT PRIMARY KEY,
    valor TEXT NOT NULL
);
''';

const String ddlIndiceIdxCatalogoArestaCroqui = r'''
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_croqui
ON catalogo_aresta(croqui_uid);
''';

const String ddlIndiceIdxCatalogoArestaNome = r'''
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_nome
ON catalogo_aresta(nome COLLATE NOCASE);
''';

const String ddlIndiceIdxCatalogoArestaTipo = r'''
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_tipo
ON catalogo_aresta(tipo);
''';

const List<String> comandosDdlCatalogo = <String>[
  ddlTabelaCatalogoCroquis,
  ddlTabelaCatalogoAresta,
  ddlTabelaCatalogoMeta,
  ddlIndiceIdxCatalogoArestaCroqui,
  ddlIndiceIdxCatalogoArestaNome,
  ddlIndiceIdxCatalogoArestaTipo,
];

const String ddlCompletoCatalogo = r'''
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT,
    atualizado_em INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS catalogo_aresta (
    uid TEXT PRIMARY KEY,
    tipo TEXT NOT NULL,
    croqui_uid TEXT NOT NULL,
    nome TEXT NOT NULL,
    escalada_grau TEXT,
    escalada_tipo TEXT,
    setor_uid TEXT,
    grupo_uid TEXT
);

CREATE TABLE IF NOT EXISTS catalogo_meta (
    chave TEXT PRIMARY KEY,
    valor TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_croqui
ON catalogo_aresta(croqui_uid);

CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_nome
ON catalogo_aresta(nome COLLATE NOCASE);

CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_tipo
ON catalogo_aresta(tipo);
''';

class LinhaCatalogoCroquis {
  final String croquiUid;
  final String idSlug;
  final String nome;
  final String? cidade;
  final String? estado;
  final int atualizadoEm;

  const LinhaCatalogoCroquis({
    required this.croquiUid,
    required this.idSlug,
    required this.nome,
    this.cidade,
    this.estado,
    this.atualizadoEm = 0,
  });

  factory LinhaCatalogoCroquis.fromMap(Map<String, dynamic> map) {
    return LinhaCatalogoCroquis(
      croquiUid: map['croqui_uid'] as String,
      idSlug: map['id_slug'] as String,
      nome: map['nome'] as String,
      cidade: map['cidade'] as String?,
      estado: map['estado'] as String?,
      atualizadoEm: (map['atualizado_em'] as int?) ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'croqui_uid': croquiUid,
      'id_slug': idSlug,
      'nome': nome,
      'cidade': cidade,
      'estado': estado,
      'atualizado_em': atualizadoEm,
    };
  }
}

class LinhaCatalogoAresta {
  final String uid;
  final String tipo;
  final String croquiUid;
  final String nome;
  final String? escaladaGrau;
  final String? escaladaTipo;
  final String? setorUid;
  final String? grupoUid;

  const LinhaCatalogoAresta({
    required this.uid,
    required this.tipo,
    required this.croquiUid,
    required this.nome,
    this.escaladaGrau,
    this.escaladaTipo,
    this.setorUid,
    this.grupoUid,
  });

  factory LinhaCatalogoAresta.fromMap(Map<String, dynamic> map) {
    return LinhaCatalogoAresta(
      uid: map['uid'] as String,
      tipo: map['tipo'] as String,
      croquiUid: map['croqui_uid'] as String,
      nome: map['nome'] as String,
      escaladaGrau: map['escalada_grau'] as String?,
      escaladaTipo: map['escalada_tipo'] as String?,
      setorUid: map['setor_uid'] as String?,
      grupoUid: map['grupo_uid'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'tipo': tipo,
      'croqui_uid': croquiUid,
      'nome': nome,
      'escalada_grau': escaladaGrau,
      'escalada_tipo': escaladaTipo,
      'setor_uid': setorUid,
      'grupo_uid': grupoUid,
    };
  }
}

class LinhaCatalogoMeta {
  final String chave;
  final String valor;

  const LinhaCatalogoMeta({
    required this.chave,
    required this.valor,
  });

  factory LinhaCatalogoMeta.fromMap(Map<String, dynamic> map) {
    return LinhaCatalogoMeta(
      chave: map['chave'] as String,
      valor: map['valor'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chave': chave,
      'valor': valor,
    };
  }
}
