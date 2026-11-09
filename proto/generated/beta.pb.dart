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
  factory FonteMidia() => FonteMidia._();

  FonteMidia._();

  factory FonteMidia.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      FonteMidia()..mergeFromBuffer(data, registry);
  factory FonteMidia.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      FonteMidia()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FonteMidia',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: FonteMidia.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FonteMidia clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FonteMidia copyWith(void Function(FonteMidia) updates) =>
      super.copyWith((message) => updates(message as FonteMidia)) as FonteMidia;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use FonteMidia() / FonteMidia.new instead')
  static FonteMidia create() => FonteMidia._();
  static $pb.GeneratedMessage $_createMessage() => FonteMidia._();
  @$core.override
  FonteMidia createEmptyInstance() => FonteMidia._();
  @$core.pragma('dart2js:noInline')
  static FonteMidia getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FonteMidia>(FonteMidia.$_createMessage);
  static FonteMidia? _defaultInstance;
}

/// Metadados semânticos e resultado avaliado por modelo LLM.
class ResultadoLLMBeta extends $pb.GeneratedMessage {
  factory ResultadoLLMBeta({
    $core.int? llmConfidenceScore,
    $core.String? llmReasoning,
  }) {
    final result = ResultadoLLMBeta._();
    if (llmConfidenceScore != null)
      result.llmConfidenceScore = llmConfidenceScore;
    if (llmReasoning != null) result.llmReasoning = llmReasoning;
    return result;
  }

  ResultadoLLMBeta._();

  factory ResultadoLLMBeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ResultadoLLMBeta()..mergeFromBuffer(data, registry);
  factory ResultadoLLMBeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ResultadoLLMBeta()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultadoLLMBeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: ResultadoLLMBeta.$_createMessage)
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
  @$core.Deprecated('Use ResultadoLLMBeta() / ResultadoLLMBeta.new instead')
  static ResultadoLLMBeta create() => ResultadoLLMBeta._();
  static $pb.GeneratedMessage $_createMessage() => ResultadoLLMBeta._();
  @$core.override
  ResultadoLLMBeta createEmptyInstance() => ResultadoLLMBeta._();
  @$core.pragma('dart2js:noInline')
  static ResultadoLLMBeta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultadoLLMBeta>(
          ResultadoLLMBeta.$_createMessage);
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

/// Representa uma referência multimídia aprovada (vídeo, post ou artigo de blog) contendo o beta da escalada.
class MidiaBeta extends $pb.GeneratedMessage {
  factory MidiaBeta({
    $core.String? url,
    $core.String? titulo,
    FonteMidia_Enum? fonte,
  }) {
    final result = MidiaBeta._();
    if (url != null) result.url = url;
    if (titulo != null) result.titulo = titulo;
    if (fonte != null) result.fonte = fonte;
    return result;
  }

  MidiaBeta._();

  factory MidiaBeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      MidiaBeta()..mergeFromBuffer(data, registry);
  factory MidiaBeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      MidiaBeta()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MidiaBeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: MidiaBeta.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'titulo')
    ..aE<FonteMidia_Enum>(3, _omitFieldNames ? '' : 'fonte',
        enumValues: FonteMidia_Enum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MidiaBeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MidiaBeta copyWith(void Function(MidiaBeta) updates) =>
      super.copyWith((message) => updates(message as MidiaBeta)) as MidiaBeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use MidiaBeta() / MidiaBeta.new instead')
  static MidiaBeta create() => MidiaBeta._();
  static $pb.GeneratedMessage $_createMessage() => MidiaBeta._();
  @$core.override
  MidiaBeta createEmptyInstance() => MidiaBeta._();
  @$core.pragma('dart2js:noInline')
  static MidiaBeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MidiaBeta>(MidiaBeta.$_createMessage);
  static MidiaBeta? _defaultInstance;

  /// URL pública de acesso ao vídeo, postagem ou artigo de blog.
  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  /// Título da postagem, vídeo ou artigo.
  @$pb.TagNumber(2)
  $core.String get titulo => $_getSZ(1);
  @$pb.TagNumber(2)
  set titulo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitulo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitulo() => $_clearField(2);

  /// Plataforma de onde a mídia foi extraída.
  @$pb.TagNumber(3)
  FonteMidia_Enum get fonte => $_getN(2);
  @$pb.TagNumber(3)
  set fonte(FonteMidia_Enum value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFonte() => $_has(2);
  @$pb.TagNumber(3)
  void clearFonte() => $_clearField(3);
}

/// Representa um candidato a beta em fase de coleta ou avaliação semântica.
class CandidatoMidiaBeta extends $pb.GeneratedMessage {
  factory CandidatoMidiaBeta({
    MidiaBeta? midia,
    ResultadoLLMBeta? resultadoLlm,
    $core.bool? matchMultiplasFontes,
    $core.bool? matchNomeNoSnippet,
    $core.Iterable<$core.String>? snippets,
  }) {
    final result = CandidatoMidiaBeta._();
    if (midia != null) result.midia = midia;
    if (resultadoLlm != null) result.resultadoLlm = resultadoLlm;
    if (matchMultiplasFontes != null)
      result.matchMultiplasFontes = matchMultiplasFontes;
    if (matchNomeNoSnippet != null)
      result.matchNomeNoSnippet = matchNomeNoSnippet;
    if (snippets != null) result.snippets.addAll(snippets);
    return result;
  }

  CandidatoMidiaBeta._();

  factory CandidatoMidiaBeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CandidatoMidiaBeta()..mergeFromBuffer(data, registry);
  factory CandidatoMidiaBeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CandidatoMidiaBeta()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CandidatoMidiaBeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: CandidatoMidiaBeta.$_createMessage)
    ..aOM<MidiaBeta>(1, _omitFieldNames ? '' : 'midia',
        subBuilder: MidiaBeta.$_createMessage)
    ..aOM<ResultadoLLMBeta>(2, _omitFieldNames ? '' : 'resultadoLlm',
        subBuilder: ResultadoLLMBeta.$_createMessage)
    ..aOB(3, _omitFieldNames ? '' : 'matchMultiplasFontes')
    ..aOB(4, _omitFieldNames ? '' : 'matchNomeNoSnippet')
    ..pPS(5, _omitFieldNames ? '' : 'snippets')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CandidatoMidiaBeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CandidatoMidiaBeta copyWith(void Function(CandidatoMidiaBeta) updates) =>
      super.copyWith((message) => updates(message as CandidatoMidiaBeta))
          as CandidatoMidiaBeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use CandidatoMidiaBeta() / CandidatoMidiaBeta.new instead')
  static CandidatoMidiaBeta create() => CandidatoMidiaBeta._();
  static $pb.GeneratedMessage $_createMessage() => CandidatoMidiaBeta._();
  @$core.override
  CandidatoMidiaBeta createEmptyInstance() => CandidatoMidiaBeta._();
  @$core.pragma('dart2js:noInline')
  static CandidatoMidiaBeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CandidatoMidiaBeta>(
          CandidatoMidiaBeta.$_createMessage);
  static CandidatoMidiaBeta? _defaultInstance;

  /// Dados limpos da mídia candidata.
  @$pb.TagNumber(1)
  MidiaBeta get midia => $_getN(0);
  @$pb.TagNumber(1)
  set midia(MidiaBeta value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMidia() => $_has(0);
  @$pb.TagNumber(1)
  void clearMidia() => $_clearField(1);
  @$pb.TagNumber(1)
  MidiaBeta ensureMidia() => $_ensure(0);

  /// Resultado da avaliação e metadados gerados pelo modelo de IA.
  @$pb.TagNumber(2)
  ResultadoLLMBeta get resultadoLlm => $_getN(1);
  @$pb.TagNumber(2)
  set resultadoLlm(ResultadoLLMBeta value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasResultadoLlm() => $_has(1);
  @$pb.TagNumber(2)
  void clearResultadoLlm() => $_clearField(2);
  @$pb.TagNumber(2)
  ResultadoLLMBeta ensureResultadoLlm() => $_ensure(1);

  /// Se a mídia foi encontrada em múltiplas fontes de busca.
  @$pb.TagNumber(3)
  $core.bool get matchMultiplasFontes => $_getBF(2);
  @$pb.TagNumber(3)
  set matchMultiplasFontes($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMatchMultiplasFontes() => $_has(2);
  @$pb.TagNumber(3)
  void clearMatchMultiplasFontes() => $_clearField(3);

  /// Se o nome da via foi explicitamente identificado no snippet textual.
  @$pb.TagNumber(4)
  $core.bool get matchNomeNoSnippet => $_getBF(3);
  @$pb.TagNumber(4)
  set matchNomeNoSnippet($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMatchNomeNoSnippet() => $_has(3);
  @$pb.TagNumber(4)
  void clearMatchNomeNoSnippet() => $_clearField(4);

  /// Trechos textuais e janelas de contexto coletados nas buscas ou extraídos de blogs.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get snippets => $_getList(4);
}

/// Armazena as listas de curadoria de betas de uma escalada específica identificada por seu UID.
class CuradoriaBetasEscalada extends $pb.GeneratedMessage {
  factory CuradoriaBetasEscalada({
    $core.String? escaladaUid,
    $core.Iterable<CandidatoMidiaBeta>? betasNaoScorados,
    $core.Iterable<CandidatoMidiaBeta>? betasNaoRevisados,
    $core.Iterable<MidiaBeta>? betasRejeitados,
  }) {
    final result = CuradoriaBetasEscalada._();
    if (escaladaUid != null) result.escaladaUid = escaladaUid;
    if (betasNaoScorados != null)
      result.betasNaoScorados.addAll(betasNaoScorados);
    if (betasNaoRevisados != null)
      result.betasNaoRevisados.addAll(betasNaoRevisados);
    if (betasRejeitados != null) result.betasRejeitados.addAll(betasRejeitados);
    return result;
  }

  CuradoriaBetasEscalada._();

  factory CuradoriaBetasEscalada.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CuradoriaBetasEscalada()..mergeFromBuffer(data, registry);
  factory CuradoriaBetasEscalada.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CuradoriaBetasEscalada()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CuradoriaBetasEscalada',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: CuradoriaBetasEscalada.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'escaladaUid')
    ..pPM<CandidatoMidiaBeta>(2, _omitFieldNames ? '' : 'betasNaoScorados',
        subBuilder: CandidatoMidiaBeta.$_createMessage)
    ..pPM<CandidatoMidiaBeta>(3, _omitFieldNames ? '' : 'betasNaoRevisados',
        subBuilder: CandidatoMidiaBeta.$_createMessage)
    ..pPM<MidiaBeta>(4, _omitFieldNames ? '' : 'betasRejeitados',
        subBuilder: MidiaBeta.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CuradoriaBetasEscalada clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CuradoriaBetasEscalada copyWith(
          void Function(CuradoriaBetasEscalada) updates) =>
      super.copyWith((message) => updates(message as CuradoriaBetasEscalada))
          as CuradoriaBetasEscalada;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use CuradoriaBetasEscalada() / CuradoriaBetasEscalada.new instead')
  static CuradoriaBetasEscalada create() => CuradoriaBetasEscalada._();
  static $pb.GeneratedMessage $_createMessage() => CuradoriaBetasEscalada._();
  @$core.override
  CuradoriaBetasEscalada createEmptyInstance() => CuradoriaBetasEscalada._();
  @$core.pragma('dart2js:noInline')
  static CuradoriaBetasEscalada getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CuradoriaBetasEscalada>(
          CuradoriaBetasEscalada.$_createMessage);
  static CuradoriaBetasEscalada? _defaultInstance;

  /// Identificador único permanente (NanoID 14c) da escalada associada.
  @$pb.TagNumber(1)
  $core.String get escaladaUid => $_getSZ(0);
  @$pb.TagNumber(1)
  set escaladaUid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEscaladaUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearEscaladaUid() => $_clearField(1);

  /// Candidatos recém-coletados que ainda não passaram pela avaliação de score do LLM.
  @$pb.TagNumber(2)
  $pb.PbList<CandidatoMidiaBeta> get betasNaoScorados => $_getList(1);

  /// Candidatos já pontuados pelo LLM que aguardam revisão humana (aprovação ou rejeição).
  @$pb.TagNumber(3)
  $pb.PbList<CandidatoMidiaBeta> get betasNaoRevisados => $_getList(2);

  /// Mídias rejeitadas manualmente na curadoria (mantidas para evitar re-scraping futuro).
  @$pb.TagNumber(4)
  $pb.PbList<MidiaBeta> get betasRejeitados => $_getList(3);
}

/// Coleção de curadoria de betas de todas as escaladas de um croqui (persistida em curadoria_betas.md).
class ColecaoCuradoriaBetas extends $pb.GeneratedMessage {
  factory ColecaoCuradoriaBetas({
    $core.Iterable<CuradoriaBetasEscalada>? escaladas,
  }) {
    final result = ColecaoCuradoriaBetas._();
    if (escaladas != null) result.escaladas.addAll(escaladas);
    return result;
  }

  ColecaoCuradoriaBetas._();

  factory ColecaoCuradoriaBetas.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ColecaoCuradoriaBetas()..mergeFromBuffer(data, registry);
  factory ColecaoCuradoriaBetas.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ColecaoCuradoriaBetas()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColecaoCuradoriaBetas',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'aresta'),
      createEmptyInstance: ColecaoCuradoriaBetas.$_createMessage)
    ..pPM<CuradoriaBetasEscalada>(1, _omitFieldNames ? '' : 'escaladas',
        subBuilder: CuradoriaBetasEscalada.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColecaoCuradoriaBetas clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColecaoCuradoriaBetas copyWith(
          void Function(ColecaoCuradoriaBetas) updates) =>
      super.copyWith((message) => updates(message as ColecaoCuradoriaBetas))
          as ColecaoCuradoriaBetas;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ColecaoCuradoriaBetas() / ColecaoCuradoriaBetas.new instead')
  static ColecaoCuradoriaBetas create() => ColecaoCuradoriaBetas._();
  static $pb.GeneratedMessage $_createMessage() => ColecaoCuradoriaBetas._();
  @$core.override
  ColecaoCuradoriaBetas createEmptyInstance() => ColecaoCuradoriaBetas._();
  @$core.pragma('dart2js:noInline')
  static ColecaoCuradoriaBetas getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColecaoCuradoriaBetas>(
          ColecaoCuradoriaBetas.$_createMessage);
  static ColecaoCuradoriaBetas? _defaultInstance;

  /// Lista de entradas de curadoria por escalada.
  @$pb.TagNumber(1)
  $pb.PbList<CuradoriaBetasEscalada> get escaladas => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
