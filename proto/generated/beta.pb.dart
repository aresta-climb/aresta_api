// This is a generated file - do not edit.
//
// Generated from beta.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'beta.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'beta.pbenum.dart';

/// Identifica a plataforma de origem da mídia de beta.
class FonteMidia extends $pb.GeneratedMessage {
  factory FonteMidia() => create();

  FonteMidia._();

  factory FonteMidia.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FonteMidia.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FonteMidia',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FonteMidia clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FonteMidia copyWith(void Function(FonteMidia) updates) =>
      super.copyWith((message) => updates(message as FonteMidia)) as FonteMidia;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FonteMidia create() => FonteMidia._();
  @$core.override
  FonteMidia createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FonteMidia getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FonteMidia>(create);
  static FonteMidia? _defaultInstance;
}

/// Metadados semânticos e resultado avaliado por modelo LLM.
class ResultadoLLMBeta extends $pb.GeneratedMessage {
  factory ResultadoLLMBeta({
    $core.int? llmConfidenceScore,
    $core.String? llmReasoning,
  }) {
    final result = create();
    if (llmConfidenceScore != null)
      result.llmConfidenceScore = llmConfidenceScore;
    if (llmReasoning != null) result.llmReasoning = llmReasoning;
    return result;
  }

  ResultadoLLMBeta._();

  factory ResultadoLLMBeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResultadoLLMBeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultadoLLMBeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'llmConfidenceScore')
    ..aOS(2, _omitFieldNames ? '' : 'llmReasoning')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultadoLLMBeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultadoLLMBeta copyWith(void Function(ResultadoLLMBeta) updates) =>
      super.copyWith((message) => updates(message as ResultadoLLMBeta))
          as ResultadoLLMBeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultadoLLMBeta create() => ResultadoLLMBeta._();
  @$core.override
  ResultadoLLMBeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResultadoLLMBeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultadoLLMBeta>(create);
  static ResultadoLLMBeta? _defaultInstance;

  /// Grau de confiança estimado pelo modelo de IA (0 a 100).
  @$pb.TagNumber(1)
  $core.int get llmConfidenceScore => $_getIZ(0);
  @$pb.TagNumber(1)
  set llmConfidenceScore($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLlmConfidenceScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearLlmConfidenceScore() => $_clearField(1);

  /// Justificativa e raciocínio textual gerado pelo modelo de IA sobre a correspondência.
  @$pb.TagNumber(2)
  $core.String get llmReasoning => $_getSZ(1);
  @$pb.TagNumber(2)
  set llmReasoning($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLlmReasoning() => $_has(1);
  @$pb.TagNumber(2)
  void clearLlmReasoning() => $_clearField(2);
}

/// Representa uma referência multimídia (vídeo ou post) contendo o beta da escalada.
class MidiaBeta extends $pb.GeneratedMessage {
  factory MidiaBeta({
    $core.String? url,
    $core.String? titulo,
    $core.String? thumbnailUrl,
    FonteMidia_Enum? fonte,
    ResultadoLLMBeta? resultadoLlm,
    $core.bool? matchMultiplasFontes,
    $core.bool? matchNomeNoSnippet,
    $core.Iterable<$core.String>? snippets,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (titulo != null) result.titulo = titulo;
    if (thumbnailUrl != null) result.thumbnailUrl = thumbnailUrl;
    if (fonte != null) result.fonte = fonte;
    if (resultadoLlm != null) result.resultadoLlm = resultadoLlm;
    if (matchMultiplasFontes != null)
      result.matchMultiplasFontes = matchMultiplasFontes;
    if (matchNomeNoSnippet != null)
      result.matchNomeNoSnippet = matchNomeNoSnippet;
    if (snippets != null) result.snippets.addAll(snippets);
    return result;
  }

  MidiaBeta._();

  factory MidiaBeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MidiaBeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MidiaBeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'titulo')
    ..aOS(3, _omitFieldNames ? '' : 'thumbnailUrl')
    ..aE<FonteMidia_Enum>(4, _omitFieldNames ? '' : 'fonte',
        enumValues: FonteMidia_Enum.values)
    ..aOM<ResultadoLLMBeta>(5, _omitFieldNames ? '' : 'resultadoLlm',
        subBuilder: ResultadoLLMBeta.create)
    ..aOB(6, _omitFieldNames ? '' : 'matchMultiplasFontes')
    ..aOB(7, _omitFieldNames ? '' : 'matchNomeNoSnippet')
    ..pPS(8, _omitFieldNames ? '' : 'snippets')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MidiaBeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MidiaBeta copyWith(void Function(MidiaBeta) updates) =>
      super.copyWith((message) => updates(message as MidiaBeta)) as MidiaBeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MidiaBeta create() => MidiaBeta._();
  @$core.override
  MidiaBeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MidiaBeta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MidiaBeta>(create);
  static MidiaBeta? _defaultInstance;

  /// URL pública de acesso ao vídeo ou postagem.
  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  /// Título da postagem ou do vídeo.
  @$pb.TagNumber(2)
  $core.String get titulo => $_getSZ(1);
  @$pb.TagNumber(2)
  set titulo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitulo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitulo() => $_clearField(2);

  /// URL da imagem de thumbnail (se disponível).
  @$pb.TagNumber(3)
  $core.String get thumbnailUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set thumbnailUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasThumbnailUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearThumbnailUrl() => $_clearField(3);

  /// Plataforma de onde a mídia foi extraída.
  @$pb.TagNumber(4)
  FonteMidia_Enum get fonte => $_getN(3);
  @$pb.TagNumber(4)
  set fonte(FonteMidia_Enum value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFonte() => $_has(3);
  @$pb.TagNumber(4)
  void clearFonte() => $_clearField(4);

  /// Resultado da avaliação e metadados gerados pelo modelo de IA.
  @$pb.TagNumber(5)
  ResultadoLLMBeta get resultadoLlm => $_getN(4);
  @$pb.TagNumber(5)
  set resultadoLlm(ResultadoLLMBeta value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasResultadoLlm() => $_has(4);
  @$pb.TagNumber(5)
  void clearResultadoLlm() => $_clearField(5);
  @$pb.TagNumber(5)
  ResultadoLLMBeta ensureResultadoLlm() => $_ensure(4);

  /// Se a mídia foi encontrada em múltiplas fontes (ex: Google e DuckDuckGo).
  @$pb.TagNumber(6)
  $core.bool get matchMultiplasFontes => $_getBF(5);
  @$pb.TagNumber(6)
  set matchMultiplasFontes($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMatchMultiplasFontes() => $_has(5);
  @$pb.TagNumber(6)
  void clearMatchMultiplasFontes() => $_clearField(6);

  /// Se o nome da via foi explicitamente identificado no snippet textual.
  @$pb.TagNumber(7)
  $core.bool get matchNomeNoSnippet => $_getBF(6);
  @$pb.TagNumber(7)
  set matchNomeNoSnippet($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMatchNomeNoSnippet() => $_has(6);
  @$pb.TagNumber(7)
  void clearMatchNomeNoSnippet() => $_clearField(7);

  /// Trechos textuais e snippets coletados nas buscas.
  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get snippets => $_getList(7);
}

/// Container para os candidatos de beta de uma escalada específica em fase de curadoria.
class CandidatosBetaPorEscalada extends $pb.GeneratedMessage {
  factory CandidatosBetaPorEscalada({
    $core.String? nomeEscalada,
    $core.String? nomeSetor,
    $core.String? nomeGrupo,
    $core.Iterable<MidiaBeta>? candidatos,
  }) {
    final result = create();
    if (nomeEscalada != null) result.nomeEscalada = nomeEscalada;
    if (nomeSetor != null) result.nomeSetor = nomeSetor;
    if (nomeGrupo != null) result.nomeGrupo = nomeGrupo;
    if (candidatos != null) result.candidatos.addAll(candidatos);
    return result;
  }

  CandidatosBetaPorEscalada._();

  factory CandidatosBetaPorEscalada.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CandidatosBetaPorEscalada.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CandidatosBetaPorEscalada',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nomeEscalada')
    ..aOS(2, _omitFieldNames ? '' : 'nomeSetor')
    ..aOS(3, _omitFieldNames ? '' : 'nomeGrupo')
    ..pPM<MidiaBeta>(4, _omitFieldNames ? '' : 'candidatos',
        subBuilder: MidiaBeta.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CandidatosBetaPorEscalada clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CandidatosBetaPorEscalada copyWith(
          void Function(CandidatosBetaPorEscalada) updates) =>
      super.copyWith((message) => updates(message as CandidatosBetaPorEscalada))
          as CandidatosBetaPorEscalada;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CandidatosBetaPorEscalada create() => CandidatosBetaPorEscalada._();
  @$core.override
  CandidatosBetaPorEscalada createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CandidatosBetaPorEscalada getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CandidatosBetaPorEscalada>(create);
  static CandidatosBetaPorEscalada? _defaultInstance;

  /// Identificador ou nome da escalada associada.
  @$pb.TagNumber(1)
  $core.String get nomeEscalada => $_getSZ(0);
  @$pb.TagNumber(1)
  set nomeEscalada($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNomeEscalada() => $_has(0);
  @$pb.TagNumber(1)
  void clearNomeEscalada() => $_clearField(1);

  /// Nome do setor onde a escalada está localizada.
  @$pb.TagNumber(2)
  $core.String get nomeSetor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nomeSetor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNomeSetor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNomeSetor() => $_clearField(2);

  /// Nome do grupo ou setor pai onde a escalada está localizada.
  @$pb.TagNumber(3)
  $core.String get nomeGrupo => $_getSZ(2);
  @$pb.TagNumber(3)
  set nomeGrupo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNomeGrupo() => $_has(2);
  @$pb.TagNumber(3)
  void clearNomeGrupo() => $_clearField(3);

  /// Lista de mídias candidatas coletadas para esta escalada.
  @$pb.TagNumber(4)
  $pb.PbList<MidiaBeta> get candidatos => $_getList(3);
}

/// Mensagem raiz para o arquivo intermediário de trabalho (betas_pendentes.binarypb).
class BetasPendentes extends $pb.GeneratedMessage {
  factory BetasPendentes({
    $core.String? idCroqui,
    $core.Iterable<CandidatosBetaPorEscalada>? candidatosPorEscalada,
  }) {
    final result = create();
    if (idCroqui != null) result.idCroqui = idCroqui;
    if (candidatosPorEscalada != null)
      result.candidatosPorEscalada.addAll(candidatosPorEscalada);
    return result;
  }

  BetasPendentes._();

  factory BetasPendentes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BetasPendentes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BetasPendentes',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idCroqui')
    ..pPM<CandidatosBetaPorEscalada>(
        2, _omitFieldNames ? '' : 'candidatosPorEscalada',
        subBuilder: CandidatosBetaPorEscalada.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BetasPendentes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BetasPendentes copyWith(void Function(BetasPendentes) updates) =>
      super.copyWith((message) => updates(message as BetasPendentes))
          as BetasPendentes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BetasPendentes create() => BetasPendentes._();
  @$core.override
  BetasPendentes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BetasPendentes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BetasPendentes>(create);
  static BetasPendentes? _defaultInstance;

  /// Identificador único ou nome do croqui associado.
  @$pb.TagNumber(1)
  $core.String get idCroqui => $_getSZ(0);
  @$pb.TagNumber(1)
  set idCroqui($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdCroqui() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdCroqui() => $_clearField(1);

  /// Lista de escaladas com seus respectivos candidatos a beta pendentes de curadoria.
  @$pb.TagNumber(2)
  $pb.PbList<CandidatosBetaPorEscalada> get candidatosPorEscalada =>
      $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
