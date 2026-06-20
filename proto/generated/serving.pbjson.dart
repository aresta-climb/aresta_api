// This is a generated file - do not edit.
//
// Generated from serving.proto.

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

@$core.Deprecated('Use arquivosServingDescriptor instead')
const ArquivosServing$json = {
  '1': 'ArquivosServing',
  '2': [
    {
      '1': 'arquivos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aresta.ArquivosServing.ArquivoServido',
      '10': 'arquivos'
    },
  ],
  '3': [ArquivosServing_ArquivoServido$json],
};

@$core.Deprecated('Use arquivosServingDescriptor instead')
const ArquivosServing_ArquivoServido$json = {
  '1': 'ArquivoServido',
  '2': [
    {'1': 'caminho_relativo', '3': 1, '4': 1, '5': 9, '10': 'caminhoRelativo'},
    {'1': 'checksum_sha256', '3': 2, '4': 1, '5': 9, '10': 'checksumSha256'},
  ],
};

/// Descriptor for `ArquivosServing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arquivosServingDescriptor = $convert.base64Decode(
    'Cg9BcnF1aXZvc1NlcnZpbmcSQgoIYXJxdWl2b3MYASADKAsyJi5hcmVzdGEuQXJxdWl2b3NTZX'
    'J2aW5nLkFycXVpdm9TZXJ2aWRvUghhcnF1aXZvcxpkCg5BcnF1aXZvU2VydmlkbxIpChBjYW1p'
    'bmhvX3JlbGF0aXZvGAEgASgJUg9jYW1pbmhvUmVsYXRpdm8SJwoPY2hlY2tzdW1fc2hhMjU2GA'
    'IgASgJUg5jaGVja3N1bVNoYTI1Ng==');
