// This is a generated file - do not edit.
//
// Generated from beta.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fonteMidiaDescriptor instead')
const FonteMidia$json = {
  '1': 'FonteMidia',
  '4': [FonteMidia_Enum$json],
};

@$core.Deprecated('Use fonteMidiaDescriptor instead')
const FonteMidia_Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'YOUTUBE', '2': 1},
    {'1': 'INSTAGRAM', '2': 2},
    {'1': 'BLOG', '2': 3},
    {'1': 'TIKTOK', '2': 4},
    {'1': 'FACEBOOK', '2': 5},
    {'1': 'TWITTER', '2': 6},
    {'1': 'REDDIT', '2': 7},
    {'1': 'OUTRO_UGC', '2': 8},
  ],
};

/// Descriptor for `FonteMidia`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fonteMidiaDescriptor = $convert.base64Decode(
    'CgpGb250ZU1pZGlhIn4KBEVudW0SDgoKSU5ERUZJTklETxAAEgsKB1lPVVRVQkUQARINCglJTl'
    'NUQUdSQU0QAhIICgRCTE9HEAMSCgoGVElLVE9LEAQSDAoIRkFDRUJPT0sQBRILCgdUV0lUVEVS'
    'EAYSCgoGUkVERElUEAcSDQoJT1VUUk9fVUdDEAg=');

@$core.Deprecated('Use resultadoLLMBetaDescriptor instead')
const ResultadoLLMBeta$json = {
  '1': 'ResultadoLLMBeta',
  '2': [
    {
      '1': 'llm_confidence_score',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'llmConfidenceScore'
    },
    {'1': 'llm_reasoning', '3': 2, '4': 1, '5': 9, '10': 'llmReasoning'},
  ],
};

/// Descriptor for `ResultadoLLMBeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultadoLLMBetaDescriptor = $convert.base64Decode(
    'ChBSZXN1bHRhZG9MTE1CZXRhEjAKFGxsbV9jb25maWRlbmNlX3Njb3JlGAEgASgFUhJsbG1Db2'
    '5maWRlbmNlU2NvcmUSIwoNbGxtX3JlYXNvbmluZxgCIAEoCVIMbGxtUmVhc29uaW5n');

@$core.Deprecated('Use midiaBetaDescriptor instead')
const MidiaBeta$json = {
  '1': 'MidiaBeta',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'titulo', '3': 2, '4': 1, '5': 9, '10': 'titulo'},
    {
      '1': 'fonte',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aresta.FonteMidia.Enum',
      '10': 'fonte'
    },
  ],
};

/// Descriptor for `MidiaBeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List midiaBetaDescriptor = $convert.base64Decode(
    'CglNaWRpYUJldGESEAoDdXJsGAEgASgJUgN1cmwSFgoGdGl0dWxvGAIgASgJUgZ0aXR1bG8SLQ'
    'oFZm9udGUYAyABKA4yFy5hcmVzdGEuRm9udGVNaWRpYS5FbnVtUgVmb250ZQ==');

@$core.Deprecated('Use candidatoMidiaBetaDescriptor instead')
const CandidatoMidiaBeta$json = {
  '1': 'CandidatoMidiaBeta',
  '2': [
    {
      '1': 'midia',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aresta.MidiaBeta',
      '10': 'midia'
    },
    {
      '1': 'resultado_llm',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.ResultadoLLMBeta',
      '10': 'resultadoLlm'
    },
    {
      '1': 'match_multiplas_fontes',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'matchMultiplasFontes'
    },
    {
      '1': 'match_nome_no_snippet',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'matchNomeNoSnippet'
    },
    {'1': 'snippets', '3': 5, '4': 3, '5': 9, '10': 'snippets'},
  ],
};

/// Descriptor for `CandidatoMidiaBeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List candidatoMidiaBetaDescriptor = $convert.base64Decode(
    'ChJDYW5kaWRhdG9NaWRpYUJldGESJwoFbWlkaWEYASABKAsyES5hcmVzdGEuTWlkaWFCZXRhUg'
    'VtaWRpYRI9Cg1yZXN1bHRhZG9fbGxtGAIgASgLMhguYXJlc3RhLlJlc3VsdGFkb0xMTUJldGFS'
    'DHJlc3VsdGFkb0xsbRI0ChZtYXRjaF9tdWx0aXBsYXNfZm9udGVzGAMgASgIUhRtYXRjaE11bH'
    'RpcGxhc0ZvbnRlcxIxChVtYXRjaF9ub21lX25vX3NuaXBwZXQYBCABKAhSEm1hdGNoTm9tZU5v'
    'U25pcHBldBIaCghzbmlwcGV0cxgFIAMoCVIIc25pcHBldHM=');

@$core.Deprecated('Use curadoriaBetasEscaladaDescriptor instead')
const CuradoriaBetasEscalada$json = {
  '1': 'CuradoriaBetasEscalada',
  '2': [
    {'1': 'escalada_uid', '3': 1, '4': 1, '5': 9, '10': 'escaladaUid'},
    {
      '1': 'betas_nao_scorados',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.aresta.CandidatoMidiaBeta',
      '10': 'betasNaoScorados'
    },
    {
      '1': 'betas_nao_revisados',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.aresta.CandidatoMidiaBeta',
      '10': 'betasNaoRevisados'
    },
    {
      '1': 'betas_rejeitados',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aresta.MidiaBeta',
      '10': 'betasRejeitados'
    },
  ],
};

/// Descriptor for `CuradoriaBetasEscalada`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List curadoriaBetasEscaladaDescriptor = $convert.base64Decode(
    'ChZDdXJhZG9yaWFCZXRhc0VzY2FsYWRhEiEKDGVzY2FsYWRhX3VpZBgBIAEoCVILZXNjYWxhZG'
    'FVaWQSSAoSYmV0YXNfbmFvX3Njb3JhZG9zGAIgAygLMhouYXJlc3RhLkNhbmRpZGF0b01pZGlh'
    'QmV0YVIQYmV0YXNOYW9TY29yYWRvcxJKChNiZXRhc19uYW9fcmV2aXNhZG9zGAMgAygLMhouYX'
    'Jlc3RhLkNhbmRpZGF0b01pZGlhQmV0YVIRYmV0YXNOYW9SZXZpc2Fkb3MSPAoQYmV0YXNfcmVq'
    'ZWl0YWRvcxgEIAMoCzIRLmFyZXN0YS5NaWRpYUJldGFSD2JldGFzUmVqZWl0YWRvcw==');

@$core.Deprecated('Use colecaoCuradoriaBetasDescriptor instead')
const ColecaoCuradoriaBetas$json = {
  '1': 'ColecaoCuradoriaBetas',
  '2': [
    {
      '1': 'escaladas',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aresta.CuradoriaBetasEscalada',
      '10': 'escaladas'
    },
  ],
};

/// Descriptor for `ColecaoCuradoriaBetas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colecaoCuradoriaBetasDescriptor = $convert.base64Decode(
    'ChVDb2xlY2FvQ3VyYWRvcmlhQmV0YXMSPAoJZXNjYWxhZGFzGAEgAygLMh4uYXJlc3RhLkN1cm'
    'Fkb3JpYUJldGFzRXNjYWxhZGFSCWVzY2FsYWRhcw==');
