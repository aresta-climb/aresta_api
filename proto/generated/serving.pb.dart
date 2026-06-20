// This is a generated file - do not edit.
//
// Generated from serving.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Representa um único arquivo servido no bucket R2
class ArquivosServing_ArquivoServido extends $pb.GeneratedMessage {
  factory ArquivosServing_ArquivoServido({
    $core.String? caminhoRelativo,
    $core.String? checksumSha256,
  }) {
    final result = create();
    if (caminhoRelativo != null) result.caminhoRelativo = caminhoRelativo;
    if (checksumSha256 != null) result.checksumSha256 = checksumSha256;
    return result;
  }

  ArquivosServing_ArquivoServido._();

  factory ArquivosServing_ArquivoServido.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArquivosServing_ArquivoServido.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArquivosServing.ArquivoServido',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'caminhoRelativo')
    ..aOS(2, _omitFieldNames ? '' : 'checksumSha256')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArquivosServing_ArquivoServido clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArquivosServing_ArquivoServido copyWith(
          void Function(ArquivosServing_ArquivoServido) updates) =>
      super.copyWith(
              (message) => updates(message as ArquivosServing_ArquivoServido))
          as ArquivosServing_ArquivoServido;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArquivosServing_ArquivoServido create() =>
      ArquivosServing_ArquivoServido._();
  @$core.override
  ArquivosServing_ArquivoServido createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArquivosServing_ArquivoServido getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArquivosServing_ArquivoServido>(create);
  static ArquivosServing_ArquivoServido? _defaultInstance;

  /// Caminho relativo ao bucket
  @$pb.TagNumber(1)
  $core.String get caminhoRelativo => $_getSZ(0);
  @$pb.TagNumber(1)
  set caminhoRelativo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCaminhoRelativo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaminhoRelativo() => $_clearField(1);

  /// Checksum SHA256 do arquivo
  @$pb.TagNumber(2)
  $core.String get checksumSha256 => $_getSZ(1);
  @$pb.TagNumber(2)
  set checksumSha256($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChecksumSha256() => $_has(1);
  @$pb.TagNumber(2)
  void clearChecksumSha256() => $_clearField(2);
}

class ArquivosServing extends $pb.GeneratedMessage {
  factory ArquivosServing({
    $core.Iterable<ArquivosServing_ArquivoServido>? arquivos,
  }) {
    final result = create();
    if (arquivos != null) result.arquivos.addAll(arquivos);
    return result;
  }

  ArquivosServing._();

  factory ArquivosServing.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArquivosServing.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArquivosServing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..pPM<ArquivosServing_ArquivoServido>(1, _omitFieldNames ? '' : 'arquivos',
        subBuilder: ArquivosServing_ArquivoServido.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArquivosServing clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArquivosServing copyWith(void Function(ArquivosServing) updates) =>
      super.copyWith((message) => updates(message as ArquivosServing))
          as ArquivosServing;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArquivosServing create() => ArquivosServing._();
  @$core.override
  ArquivosServing createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArquivosServing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArquivosServing>(create);
  static ArquivosServing? _defaultInstance;

  /// Lista de todos os arquivos no R2
  @$pb.TagNumber(1)
  $pb.PbList<ArquivosServing_ArquivoServido> get arquivos => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
