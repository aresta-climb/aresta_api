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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
