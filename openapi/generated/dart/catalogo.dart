// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoCatalogo = 'https://catalogo.arestaclimb.com';
const String rotaVerificarSaudeCatalogo = '/health';
const String rotaSincronizarCatalogo = '/sync';

class CatalogoCroqui {
  final String croquiUid;
  final String idSlug;
  final String nome;
  final String? cidade;
  final String? estado;

  const CatalogoCroqui({
    required this.croquiUid,
    required this.idSlug,
    required this.nome,
    this.cidade,
    this.estado,
  });

  factory CatalogoCroqui.fromJson(Map<String, dynamic> json) {
    return CatalogoCroqui(
      croquiUid: json['croqui_uid'] as String,
      idSlug: json['id_slug'] as String,
      nome: json['nome'] as String,
      cidade: json['cidade'] as String?,
      estado: json['estado'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'croqui_uid': croquiUid,
      'id_slug': idSlug,
      'nome': nome,
      'cidade': cidade,
      'estado': estado,
    };
  }
}

class CatalogoEntidade {
  final String uid;
  final String tipo;
  final String croquiUid;
  final String nome;
  final String? escaladaGrau;
  final String? escaladaTipo;
  final String? setorUid;
  final String? grupoUid;

  const CatalogoEntidade({
    required this.uid,
    required this.tipo,
    required this.croquiUid,
    required this.nome,
    this.escaladaGrau,
    this.escaladaTipo,
    this.setorUid,
    this.grupoUid,
  });

  factory CatalogoEntidade.fromJson(Map<String, dynamic> json) {
    return CatalogoEntidade(
      uid: json['uid'] as String,
      tipo: json['tipo'] as String,
      croquiUid: json['croqui_uid'] as String,
      nome: json['nome'] as String,
      escaladaGrau: json['escalada_grau'] as String?,
      escaladaTipo: json['escalada_tipo'] as String?,
      setorUid: json['setor_uid'] as String?,
      grupoUid: json['grupo_uid'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
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

class UpsertsSyncCatalogo {
  final List<CatalogoCroqui> croquis;
  final List<CatalogoEntidade> entidades;

  const UpsertsSyncCatalogo({
    required this.croquis,
    required this.entidades,
  });

  factory UpsertsSyncCatalogo.fromJson(Map<String, dynamic> json) {
    return UpsertsSyncCatalogo(
      croquis: (json['croquis'] as List<dynamic>).map((e) => CatalogoCroqui.fromJson(e as Map<String, dynamic>)).toList(),
      entidades: (json['entidades'] as List<dynamic>).map((e) => CatalogoEntidade.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'croquis': croquis.map((e) => e.toJson()).toList(),
      'entidades': entidades.map((e) => e.toJson()).toList(),
    };
  }
}

class DeletesSyncCatalogo {
  final List<String> croquis;
  final List<String> entidades;

  const DeletesSyncCatalogo({
    required this.croquis,
    required this.entidades,
  });

  factory DeletesSyncCatalogo.fromJson(Map<String, dynamic> json) {
    return DeletesSyncCatalogo(
      croquis: (json['croquis'] as List<dynamic>).map((e) => e as String).toList(),
      entidades: (json['entidades'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'croquis': croquis,
      'entidades': entidades,
    };
  }
}

class RespostaSyncCatalogo {
  final String acao;
  final String? versaoAtual;
  final int? totalDeltas;
  final String? versaoLocal;
  final String? versaoDestino;
  final UpsertsSyncCatalogo? upserts;
  final DeletesSyncCatalogo? deletes;
  final String? motivo;

  const RespostaSyncCatalogo({
    required this.acao,
    this.versaoAtual,
    this.totalDeltas,
    this.versaoLocal,
    this.versaoDestino,
    this.upserts,
    this.deletes,
    this.motivo,
  });

  factory RespostaSyncCatalogo.fromJson(Map<String, dynamic> json) {
    return RespostaSyncCatalogo(
      acao: json['acao'] as String,
      versaoAtual: json['versao_atual'] as String?,
      totalDeltas: json['total_deltas'] as int?,
      versaoLocal: json['versao_local'] as String?,
      versaoDestino: json['versao_destino'] as String?,
      upserts: json['upserts'] != null ? UpsertsSyncCatalogo.fromJson(json['upserts'] as Map<String, dynamic>) : null,
      deletes: json['deletes'] != null ? DeletesSyncCatalogo.fromJson(json['deletes'] as Map<String, dynamic>) : null,
      motivo: json['motivo'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'acao': acao,
      'versao_atual': versaoAtual,
      'total_deltas': totalDeltas,
      'versao_local': versaoLocal,
      'versao_destino': versaoDestino,
      'upserts': upserts?.toJson(),
      'deletes': deletes?.toJson(),
      'motivo': motivo,
    };
  }
}

class ErroCatalogo {
  final String erro;

  const ErroCatalogo({
    required this.erro,
  });

  factory ErroCatalogo.fromJson(Map<String, dynamic> json) {
    return ErroCatalogo(
      erro: json['erro'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'erro': erro,
    };
  }
}
