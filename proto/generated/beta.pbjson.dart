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
  ],
};

/// Descriptor for `FonteMidia`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fonteMidiaDescriptor = $convert.base64Decode(
    'CgpGb250ZU1pZGlhIjIKBEVudW0SDgoKSU5ERUZJTklETxAAEgsKB1lPVVRVQkUQARINCglJTl'
    'NUQUdSQU0QAg==');

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
    {'1': 'thumbnail_url', '3': 3, '4': 1, '5': 9, '10': 'thumbnailUrl'},
    {
      '1': 'fonte',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.aresta.FonteMidia.Enum',
      '10': 'fonte'
    },
    {
      '1': 'resultado_llm',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aresta.ResultadoLLMBeta',
      '10': 'resultadoLlm'
    },
    {
      '1': 'match_multiplas_fontes',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'matchMultiplasFontes'
    },
    {
      '1': 'match_nome_no_snippet',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'matchNomeNoSnippet'
    },
    {'1': 'snippets', '3': 8, '4': 3, '5': 9, '10': 'snippets'},
  ],
};

/// Descriptor for `MidiaBeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List midiaBetaDescriptor = $convert.base64Decode(
    'CglNaWRpYUJldGESEAoDdXJsGAEgASgJUgN1cmwSFgoGdGl0dWxvGAIgASgJUgZ0aXR1bG8SIw'
    'oNdGh1bWJuYWlsX3VybBgDIAEoCVIMdGh1bWJuYWlsVXJsEi0KBWZvbnRlGAQgASgOMhcuYXJl'
    'c3RhLkZvbnRlTWlkaWEuRW51bVIFZm9udGUSPQoNcmVzdWx0YWRvX2xsbRgFIAEoCzIYLmFyZX'
    'N0YS5SZXN1bHRhZG9MTE1CZXRhUgxyZXN1bHRhZG9MbG0SNAoWbWF0Y2hfbXVsdGlwbGFzX2Zv'
    'bnRlcxgGIAEoCFIUbWF0Y2hNdWx0aXBsYXNGb250ZXMSMQoVbWF0Y2hfbm9tZV9ub19zbmlwcG'
    'V0GAcgASgIUhJtYXRjaE5vbWVOb1NuaXBwZXQSGgoIc25pcHBldHMYCCADKAlSCHNuaXBwZXRz');

@$core.Deprecated('Use candidatosBetaPorEscaladaDescriptor instead')
const CandidatosBetaPorEscalada$json = {
  '1': 'CandidatosBetaPorEscalada',
  '2': [
    {'1': 'nome_escalada', '3': 1, '4': 1, '5': 9, '10': 'nomeEscalada'},
    {'1': 'nome_setor', '3': 2, '4': 1, '5': 9, '10': 'nomeSetor'},
    {'1': 'nome_grupo', '3': 3, '4': 1, '5': 9, '10': 'nomeGrupo'},
    {
      '1': 'candidatos',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aresta.MidiaBeta',
      '10': 'candidatos'
    },
  ],
};

/// Descriptor for `CandidatosBetaPorEscalada`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List candidatosBetaPorEscaladaDescriptor = $convert.base64Decode(
    'ChlDYW5kaWRhdG9zQmV0YVBvckVzY2FsYWRhEiMKDW5vbWVfZXNjYWxhZGEYASABKAlSDG5vbW'
    'VFc2NhbGFkYRIdCgpub21lX3NldG9yGAIgASgJUglub21lU2V0b3ISHQoKbm9tZV9ncnVwbxgD'
    'IAEoCVIJbm9tZUdydXBvEjEKCmNhbmRpZGF0b3MYBCADKAsyES5hcmVzdGEuTWlkaWFCZXRhUg'
    'pjYW5kaWRhdG9z');

@$core.Deprecated('Use betasPendentesDescriptor instead')
const BetasPendentes$json = {
  '1': 'BetasPendentes',
  '2': [
    {'1': 'id_croqui', '3': 1, '4': 1, '5': 9, '10': 'idCroqui'},
    {
      '1': 'candidatos_por_escalada',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.aresta.CandidatosBetaPorEscalada',
      '10': 'candidatosPorEscalada'
    },
  ],
};

/// Descriptor for `BetasPendentes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List betasPendentesDescriptor = $convert.base64Decode(
    'Cg5CZXRhc1BlbmRlbnRlcxIbCglpZF9jcm9xdWkYASABKAlSCGlkQ3JvcXVpElkKF2NhbmRpZG'
    'F0b3NfcG9yX2VzY2FsYWRhGAIgAygLMiEuYXJlc3RhLkNhbmRpZGF0b3NCZXRhUG9yRXNjYWxh'
    'ZGFSFWNhbmRpZGF0b3NQb3JFc2NhbGFkYQ==');
