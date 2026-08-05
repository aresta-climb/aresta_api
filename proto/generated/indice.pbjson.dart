// This is a generated file - do not edit.
//
// Generated from indice.proto.

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

@$core.Deprecated('Use indiceDescriptor instead')
const Indice$json = {
  '1': 'Indice',
  '2': [
    {
      '1': 'croquis',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.aresta.ResumoCroqui',
      '10': 'croquis'
    },
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
  '10': ['url_base'],
};

/// Descriptor for `Indice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indiceDescriptor = $convert.base64Decode(
    'CgZJbmRpY2USLgoHY3JvcXVpcxgCIAMoCzIULmFyZXN0YS5SZXN1bW9Dcm9xdWlSB2Nyb3F1aX'
    'NKBAgBEAJSCHVybF9iYXNl');

@$core.Deprecated('Use precomputadosResumoCroquiDescriptor instead')
const PrecomputadosResumoCroqui$json = {
  '1': 'PrecomputadosResumoCroqui',
  '2': [
    {'1': 'total_escaladas', '3': 1, '4': 1, '5': 5, '10': 'totalEscaladas'},
    {'1': 'total_setores', '3': 2, '4': 1, '5': 5, '10': 'totalSetores'},
    {'1': 'total_grupos', '3': 3, '4': 1, '5': 5, '10': 'totalGrupos'},
  ],
};

/// Descriptor for `PrecomputadosResumoCroqui`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List precomputadosResumoCroquiDescriptor = $convert.base64Decode(
    'ChlQcmVjb21wdXRhZG9zUmVzdW1vQ3JvcXVpEicKD3RvdGFsX2VzY2FsYWRhcxgBIAEoBVIOdG'
    '90YWxFc2NhbGFkYXMSIwoNdG90YWxfc2V0b3JlcxgCIAEoBVIMdG90YWxTZXRvcmVzEiEKDHRv'
    'dGFsX2dydXBvcxgDIAEoBVILdG90YWxHcnVwb3M=');

@$core.Deprecated('Use resumoCroquiDescriptor instead')
const ResumoCroqui$json = {
  '1': 'ResumoCroqui',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'nome', '3': 2, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'descricao', '3': 3, '4': 1, '5': 9, '10': 'descricao'},
    {'1': 'caminho_relativo', '3': 5, '4': 1, '5': 9, '10': 'caminhoRelativo'},
    {
      '1': 'checksum_sha256_croqui',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'checksumSha256Croqui'
    },
    {
      '1': 'checksum_sha256_thumbnail',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'checksumSha256Thumbnail'
    },
    {
      '1': 'timestamp_update',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestampUpdate'
    },
    {
      '1': 'localizacao',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '10': 'localizacao'
    },
    {
      '1': 'precomputados',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.aresta.PrecomputadosResumoCroqui',
      '10': 'precomputados'
    },
  ],
  '9': [
    {'1': 4, '2': 5},
    {'1': 7, '2': 8},
  ],
  '10': ['data_update', 'nome_arquivo'],
};

/// Descriptor for `ResumoCroqui`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resumoCroquiDescriptor = $convert.base64Decode(
    'CgxSZXN1bW9Dcm9xdWkSDgoCaWQYASABKAlSAmlkEhIKBG5vbWUYAiABKAlSBG5vbWUSHAoJZG'
    'VzY3JpY2FvGAMgASgJUglkZXNjcmljYW8SKQoQY2FtaW5ob19yZWxhdGl2bxgFIAEoCVIPY2Ft'
    'aW5ob1JlbGF0aXZvEjQKFmNoZWNrc3VtX3NoYTI1Nl9jcm9xdWkYBiABKAlSFGNoZWNrc3VtU2'
    'hhMjU2Q3JvcXVpEjoKGWNoZWNrc3VtX3NoYTI1Nl90aHVtYm5haWwYCCABKAlSF2NoZWNrc3Vt'
    'U2hhMjU2VGh1bWJuYWlsEkUKEHRpbWVzdGFtcF91cGRhdGUYCSABKAsyGi5nb29nbGUucHJvdG'
    '9idWYuVGltZXN0YW1wUg90aW1lc3RhbXBVcGRhdGUSNAoLbG9jYWxpemFjYW8YCiABKAsyEi5h'
    'cmVzdGEuQ29vcmRlbmFkYVILbG9jYWxpemFjYW8SRwoNcHJlY29tcHV0YWRvcxgLIAEoCzIhLm'
    'FyZXN0YS5QcmVjb21wdXRhZG9zUmVzdW1vQ3JvcXVpUg1wcmVjb21wdXRhZG9zSgQIBBAFSgQI'
    'BxAIUgtkYXRhX3VwZGF0ZVIMbm9tZV9hcnF1aXZv');
