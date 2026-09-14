// This is a generated file - do not edit.
//
// Generated from croqui_experimental.proto.

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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Representa os metadados básicos de um croqui experimental sendo editado localmente.
class CroquiExperimental extends $pb.GeneratedMessage {
  factory CroquiExperimental({
    $core.Iterable<$core.String>? autores,
    $0.Timestamp? dataCriacao,
    $0.Timestamp? ultimaEdicao,
    $core.String? resumoEdicao,
    $core.String? idOriginal,
    $core.String? pullRequestUrl,
    $core.String? pullRequestBranch,
    $core.String? pullRequestForkOwner,
    $core.String? commitBaseSha,
  }) {
    final result = create();
    if (autores != null) result.autores.addAll(autores);
    if (dataCriacao != null) result.dataCriacao = dataCriacao;
    if (ultimaEdicao != null) result.ultimaEdicao = ultimaEdicao;
    if (resumoEdicao != null) result.resumoEdicao = resumoEdicao;
    if (idOriginal != null) result.idOriginal = idOriginal;
    if (pullRequestUrl != null) result.pullRequestUrl = pullRequestUrl;
    if (pullRequestBranch != null) result.pullRequestBranch = pullRequestBranch;
    if (pullRequestForkOwner != null)
      result.pullRequestForkOwner = pullRequestForkOwner;
    if (commitBaseSha != null) result.commitBaseSha = commitBaseSha;
    return result;
  }

  CroquiExperimental._();

  factory CroquiExperimental.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CroquiExperimental.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CroquiExperimental',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'autores')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'dataCriacao',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'ultimaEdicao',
        subBuilder: $0.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'resumoEdicao')
    ..aOS(5, _omitFieldNames ? '' : 'idOriginal')
    ..aOS(6, _omitFieldNames ? '' : 'pullRequestUrl')
    ..aOS(7, _omitFieldNames ? '' : 'pullRequestBranch')
    ..aOS(8, _omitFieldNames ? '' : 'pullRequestForkOwner')
    ..aOS(9, _omitFieldNames ? '' : 'commitBaseSha')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CroquiExperimental clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CroquiExperimental copyWith(void Function(CroquiExperimental) updates) =>
      super.copyWith((message) => updates(message as CroquiExperimental))
          as CroquiExperimental;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CroquiExperimental create() => CroquiExperimental._();
  @$core.override
  CroquiExperimental createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CroquiExperimental getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CroquiExperimental>(create);
  static CroquiExperimental? _defaultInstance;

  /// Autores ou editores trabalhando neste croqui experimental.
  /// Funciona como um set: toda vez que um croqui experimental é criado ou aberto,
  /// é feito o append do nome de usuário do GitHub, caso não esteja na lista.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get autores => $_getList(0);

  /// Timestamp de criação do croqui experimental (ISO-8601).
  @$pb.TagNumber(2)
  $0.Timestamp get dataCriacao => $_getN(1);
  @$pb.TagNumber(2)
  set dataCriacao($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDataCriacao() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataCriacao() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureDataCriacao() => $_ensure(1);

  /// Timestamp da última edição do croqui experimental (ISO-8601).
  @$pb.TagNumber(3)
  $0.Timestamp get ultimaEdicao => $_getN(2);
  @$pb.TagNumber(3)
  set ultimaEdicao($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUltimaEdicao() => $_has(2);
  @$pb.TagNumber(3)
  void clearUltimaEdicao() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureUltimaEdicao() => $_ensure(2);

  /// Breve resumo ou objetivo desta edição (ex: "Corrigindo graduação do Setor 1").
  @$pb.TagNumber(4)
  $core.String get resumoEdicao => $_getSZ(3);
  @$pb.TagNumber(4)
  set resumoEdicao($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasResumoEdicao() => $_has(3);
  @$pb.TagNumber(4)
  void clearResumoEdicao() => $_clearField(4);

  /// ID original do croqui antes de qualquer renomeação.
  /// Usado para rastrear a ancestralidade na hora de publicar um PR de um croqui renomeado.
  @$pb.TagNumber(5)
  $core.String get idOriginal => $_getSZ(4);
  @$pb.TagNumber(5)
  set idOriginal($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIdOriginal() => $_has(4);
  @$pb.TagNumber(5)
  void clearIdOriginal() => $_clearField(5);

  /// URL do pull request no GitHub, se este croqui já possuir um associado.
  @$pb.TagNumber(6)
  $core.String get pullRequestUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set pullRequestUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPullRequestUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearPullRequestUrl() => $_clearField(6);

  /// Nome da branch no fork do usuário onde este croqui está sendo editado.
  @$pb.TagNumber(7)
  $core.String get pullRequestBranch => $_getSZ(6);
  @$pb.TagNumber(7)
  set pullRequestBranch($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPullRequestBranch() => $_has(6);
  @$pb.TagNumber(7)
  void clearPullRequestBranch() => $_clearField(7);

  /// Nome de usuário (login) do proprietário do fork onde a branch reside.
  @$pb.TagNumber(8)
  $core.String get pullRequestForkOwner => $_getSZ(7);
  @$pb.TagNumber(8)
  set pullRequestForkOwner($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPullRequestForkOwner() => $_has(7);
  @$pb.TagNumber(8)
  void clearPullRequestForkOwner() => $_clearField(8);

  /// Hash SHA do commit base do repositório oficial (aresta_db) de onde este croqui se originou.
  @$pb.TagNumber(9)
  $core.String get commitBaseSha => $_getSZ(8);
  @$pb.TagNumber(9)
  set commitBaseSha($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCommitBaseSha() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommitBaseSha() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
