// This is a generated file - do not edit.
//
// Generated from indice.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

import 'croqui.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Representa um índice de croquis de escalada, apontando para onde recuperar o
/// croqui inteiro.
class Indice extends $pb.GeneratedMessage {
  factory Indice({
    $core.Iterable<ResumoCroqui>? croquis,
  }) {
    final result = create();
    if (croquis != null) result.croquis.addAll(croquis);
    return result;
  }

  Indice._();

  factory Indice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Indice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Indice',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..pPM<ResumoCroqui>(2, _omitFieldNames ? '' : 'croquis',
        subBuilder: ResumoCroqui.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Indice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Indice copyWith(void Function(Indice) updates) =>
      super.copyWith((message) => updates(message as Indice)) as Indice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Indice create() => Indice._();
  @$core.override
  Indice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Indice getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Indice>(create);
  static Indice? _defaultInstance;

  /// Lista de croquis disponíveis.
  @$pb.TagNumber(2)
  $pb.PbList<ResumoCroqui> get croquis => $_getList(0);
}

/// Pré-computados para acesso rápido a estatísticas do croqui no índice.
class PrecomputadosResumoCroqui extends $pb.GeneratedMessage {
  factory PrecomputadosResumoCroqui({
    $core.int? totalEscaladas,
    $core.int? totalSetores,
    $core.int? totalGrupos,
    $core.int? totalEsportivas,
    $core.int? totalMoveis,
    $core.int? totalBoulders,
    $core.int? totalMultiplasEnfiadas,
    $core.int? totalHighlines,
    $fixnum.Int64? tamanhoDownloadBytes,
  }) {
    final result = create();
    if (totalEscaladas != null) result.totalEscaladas = totalEscaladas;
    if (totalSetores != null) result.totalSetores = totalSetores;
    if (totalGrupos != null) result.totalGrupos = totalGrupos;
    if (totalEsportivas != null) result.totalEsportivas = totalEsportivas;
    if (totalMoveis != null) result.totalMoveis = totalMoveis;
    if (totalBoulders != null) result.totalBoulders = totalBoulders;
    if (totalMultiplasEnfiadas != null)
      result.totalMultiplasEnfiadas = totalMultiplasEnfiadas;
    if (totalHighlines != null) result.totalHighlines = totalHighlines;
    if (tamanhoDownloadBytes != null)
      result.tamanhoDownloadBytes = tamanhoDownloadBytes;
    return result;
  }

  PrecomputadosResumoCroqui._();

  factory PrecomputadosResumoCroqui.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrecomputadosResumoCroqui.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrecomputadosResumoCroqui',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'totalEscaladas')
    ..aI(2, _omitFieldNames ? '' : 'totalSetores')
    ..aI(3, _omitFieldNames ? '' : 'totalGrupos')
    ..aI(4, _omitFieldNames ? '' : 'totalEsportivas')
    ..aI(5, _omitFieldNames ? '' : 'totalMoveis')
    ..aI(6, _omitFieldNames ? '' : 'totalBoulders')
    ..aI(7, _omitFieldNames ? '' : 'totalMultiplasEnfiadas')
    ..aI(8, _omitFieldNames ? '' : 'totalHighlines')
    ..aInt64(9, _omitFieldNames ? '' : 'tamanhoDownloadBytes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrecomputadosResumoCroqui clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrecomputadosResumoCroqui copyWith(
          void Function(PrecomputadosResumoCroqui) updates) =>
      super.copyWith((message) => updates(message as PrecomputadosResumoCroqui))
          as PrecomputadosResumoCroqui;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrecomputadosResumoCroqui create() => PrecomputadosResumoCroqui._();
  @$core.override
  PrecomputadosResumoCroqui createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrecomputadosResumoCroqui getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrecomputadosResumoCroqui>(create);
  static PrecomputadosResumoCroqui? _defaultInstance;

  /// Soma total de escaladas em todos os picos do croqui.
  @$pb.TagNumber(1)
  $core.int get totalEscaladas => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalEscaladas($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalEscaladas() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalEscaladas() => $_clearField(1);

  /// Número total de setores no croqui.
  @$pb.TagNumber(2)
  $core.int get totalSetores => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalSetores($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalSetores() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalSetores() => $_clearField(2);

  /// Número total de grupos no croqui.
  @$pb.TagNumber(3)
  $core.int get totalGrupos => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalGrupos($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalGrupos() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalGrupos() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalEsportivas => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalEsportivas($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalEsportivas() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalEsportivas() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalMoveis => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalMoveis($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalMoveis() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalMoveis() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalBoulders => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalBoulders($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTotalBoulders() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalBoulders() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalMultiplasEnfiadas => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalMultiplasEnfiadas($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTotalMultiplasEnfiadas() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalMultiplasEnfiadas() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get totalHighlines => $_getIZ(7);
  @$pb.TagNumber(8)
  set totalHighlines($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTotalHighlines() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalHighlines() => $_clearField(8);

  /// Tamanho total estimado em bytes para download offline do croqui (compilado.binarypb + imagens).
  @$pb.TagNumber(9)
  $fixnum.Int64 get tamanhoDownloadBytes => $_getI64(8);
  @$pb.TagNumber(9)
  set tamanhoDownloadBytes($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTamanhoDownloadBytes() => $_has(8);
  @$pb.TagNumber(9)
  void clearTamanhoDownloadBytes() => $_clearField(9);
}

/// Resumo de um croqui que está disponível para o índice.
class ResumoCroqui extends $pb.GeneratedMessage {
  factory ResumoCroqui({
    $core.String? id,
    $core.String? nome,
    $core.String? descricao,
    $core.String? caminhoRelativo,
    $core.String? checksumSha256Croqui,
    $core.String? checksumSha256Thumbnail,
    $0.Timestamp? timestampUpdate,
    $1.Coordenada? localizacao,
    PrecomputadosResumoCroqui? precomputados,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (nome != null) result.nome = nome;
    if (descricao != null) result.descricao = descricao;
    if (caminhoRelativo != null) result.caminhoRelativo = caminhoRelativo;
    if (checksumSha256Croqui != null)
      result.checksumSha256Croqui = checksumSha256Croqui;
    if (checksumSha256Thumbnail != null)
      result.checksumSha256Thumbnail = checksumSha256Thumbnail;
    if (timestampUpdate != null) result.timestampUpdate = timestampUpdate;
    if (localizacao != null) result.localizacao = localizacao;
    if (precomputados != null) result.precomputados = precomputados;
    return result;
  }

  ResumoCroqui._();

  factory ResumoCroqui.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResumoCroqui.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResumoCroqui',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'nome')
    ..aOS(3, _omitFieldNames ? '' : 'descricao')
    ..aOS(5, _omitFieldNames ? '' : 'caminhoRelativo')
    ..aOS(6, _omitFieldNames ? '' : 'checksumSha256Croqui')
    ..aOS(8, _omitFieldNames ? '' : 'checksumSha256Thumbnail')
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'timestampUpdate',
        subBuilder: $0.Timestamp.create)
    ..aOM<$1.Coordenada>(10, _omitFieldNames ? '' : 'localizacao',
        subBuilder: $1.Coordenada.create)
    ..aOM<PrecomputadosResumoCroqui>(11, _omitFieldNames ? '' : 'precomputados',
        subBuilder: PrecomputadosResumoCroqui.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResumoCroqui clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResumoCroqui copyWith(void Function(ResumoCroqui) updates) =>
      super.copyWith((message) => updates(message as ResumoCroqui))
          as ResumoCroqui;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResumoCroqui create() => ResumoCroqui._();
  @$core.override
  ResumoCroqui createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResumoCroqui getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResumoCroqui>(create);
  static ResumoCroqui? _defaultInstance;

  /// Identificador único do croqui.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Nome do local do croqui.
  @$pb.TagNumber(2)
  $core.String get nome => $_getSZ(1);
  @$pb.TagNumber(2)
  set nome($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNome() => $_has(1);
  @$pb.TagNumber(2)
  void clearNome() => $_clearField(2);

  /// Descrição curta e em alto nível do local.
  @$pb.TagNumber(3)
  $core.String get descricao => $_getSZ(2);
  @$pb.TagNumber(3)
  set descricao($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescricao() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescricao() => $_clearField(3);

  /// localização do arquivo relativo ao indice (i.e.
  /// "br_mg_pedro_leopoldo_gruta_do_bau/compilado.binarypb").
  @$pb.TagNumber(5)
  $core.String get caminhoRelativo => $_getSZ(3);
  @$pb.TagNumber(5)
  set caminhoRelativo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(5)
  $core.bool hasCaminhoRelativo() => $_has(3);
  @$pb.TagNumber(5)
  void clearCaminhoRelativo() => $_clearField(5);

  /// Checksum SHA256 da última versão do croqui.
  /// Se diferente do checksum da versão baixada, há atualizações.
  @$pb.TagNumber(6)
  $core.String get checksumSha256Croqui => $_getSZ(4);
  @$pb.TagNumber(6)
  set checksumSha256Croqui($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasChecksumSha256Croqui() => $_has(4);
  @$pb.TagNumber(6)
  void clearChecksumSha256Croqui() => $_clearField(6);

  /// Checksum SHA256 da última versão da thumbnail.
  /// Se diferente do checksum da versão baixada, há atualizações.
  /// A thumbnail *sempre* será localizada em "imagens/thumbnail.webp", relativa
  /// à pasta onde está o croqui.binarypb.
  @$pb.TagNumber(8)
  $core.String get checksumSha256Thumbnail => $_getSZ(5);
  @$pb.TagNumber(8)
  set checksumSha256Thumbnail($core.String value) => $_setString(5, value);
  @$pb.TagNumber(8)
  $core.bool hasChecksumSha256Thumbnail() => $_has(5);
  @$pb.TagNumber(8)
  void clearChecksumSha256Thumbnail() => $_clearField(8);

  /// Timestamp do último update.
  @$pb.TagNumber(9)
  $0.Timestamp get timestampUpdate => $_getN(6);
  @$pb.TagNumber(9)
  set timestampUpdate($0.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTimestampUpdate() => $_has(6);
  @$pb.TagNumber(9)
  void clearTimestampUpdate() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureTimestampUpdate() => $_ensure(6);

  /// Coordenada principal do croqui (baseada no estacionamento do primeiro pico).
  @$pb.TagNumber(10)
  $1.Coordenada get localizacao => $_getN(7);
  @$pb.TagNumber(10)
  set localizacao($1.Coordenada value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasLocalizacao() => $_has(7);
  @$pb.TagNumber(10)
  void clearLocalizacao() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.Coordenada ensureLocalizacao() => $_ensure(7);

  /// Estatísticas pré-computadas agregando todos os picos do croqui.
  @$pb.TagNumber(11)
  PrecomputadosResumoCroqui get precomputados => $_getN(8);
  @$pb.TagNumber(11)
  set precomputados(PrecomputadosResumoCroqui value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasPrecomputados() => $_has(8);
  @$pb.TagNumber(11)
  void clearPrecomputados() => $_clearField(11);
  @$pb.TagNumber(11)
  PrecomputadosResumoCroqui ensurePrecomputados() => $_ensure(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
