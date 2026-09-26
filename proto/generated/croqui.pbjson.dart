// This is a generated file - do not edit.
//
// Generated from croqui.proto.

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

@$core.Deprecated('Use tipoConteudoDescriptor instead')
const TipoConteudo$json = {
  '1': 'TipoConteudo',
  '4': [TipoConteudo_Enum$json],
};

@$core.Deprecated('Use tipoConteudoDescriptor instead')
const TipoConteudo_Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'INLINE', '2': 1},
    {'1': 'CAMINHO', '2': 2},
  ],
};

/// Descriptor for `TipoConteudo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tipoConteudoDescriptor = $convert.base64Decode(
    'CgxUaXBvQ29udGV1ZG8iLwoERW51bRIOCgpJTkRFRklOSURPEAASCgoGSU5MSU5FEAESCwoHQ0'
    'FNSU5ITxAC');

@$core.Deprecated('Use campoFormatoUiDescriptor instead')
const CampoFormatoUi$json = {
  '1': 'CampoFormatoUi',
  '4': [CampoFormatoUi_Enum$json],
};

@$core.Deprecated('Use campoFormatoUiDescriptor instead')
const CampoFormatoUi_Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'INLINE', '2': 1},
    {'1': 'INVISIVEL', '2': 2},
    {'1': 'TEXTO_CURTO', '2': 3},
    {'1': 'TEXTO_LONGO', '2': 4},
    {'1': 'MARKDOWN', '2': 5},
    {'1': 'LATITUDE_E7', '2': 6},
    {'1': 'LONGITUDE_E7', '2': 7},
    {'1': 'IMAGEM', '2': 8},
  ],
};

/// Descriptor for `CampoFormatoUi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campoFormatoUiDescriptor = $convert.base64Decode(
    'Cg5DYW1wb0Zvcm1hdG9VaSKQAQoERW51bRIOCgpJTkRFRklOSURPEAASCgoGSU5MSU5FEAESDQ'
    'oJSU5WSVNJVkVMEAISDwoLVEVYVE9fQ1VSVE8QAxIPCgtURVhUT19MT05HTxAEEgwKCE1BUktE'
    'T1dOEAUSDwoLTEFUSVRVREVfRTcQBhIQCgxMT05HSVRVREVfRTcQBxIKCgZJTUFHRU0QCA==');

@$core.Deprecated('Use mensagemFormatoUiDescriptor instead')
const MensagemFormatoUi$json = {
  '1': 'MensagemFormatoUi',
  '4': [MensagemFormatoUi_Enum$json],
};

@$core.Deprecated('Use mensagemFormatoUiDescriptor instead')
const MensagemFormatoUi_Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'SEPARADO', '2': 1},
    {'1': 'INLINE', '2': 2},
    {'1': 'ONEOF', '2': 3},
    {'1': 'INVISIVEL', '2': 4},
    {'1': 'ONEOF_CONTEUDO', '2': 5},
    {'1': 'MAPA', '2': 6},
    {'1': 'COORDENADA', '2': 7},
  ],
};

/// Descriptor for `MensagemFormatoUi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mensagemFormatoUiDescriptor = $convert.base64Decode(
    'ChFNZW5zYWdlbUZvcm1hdG9VaSJ4CgRFbnVtEg4KCklOREVGSU5JRE8QABIMCghTRVBBUkFETx'
    'ABEgoKBklOTElORRACEgkKBU9ORU9GEAMSDQoJSU5WSVNJVkVMEAQSEgoOT05FT0ZfQ09OVEVV'
    'RE8QBRIICgRNQVBBEAYSDgoKQ09PUkRFTkFEQRAH');

@$core.Deprecated('Use croquiDescriptor instead')
const Croqui$json = {
  '1': 'Croqui',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'nome', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'nome'},
    {'1': 'descricao', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {'1': 'creditos', '3': 4, '4': 3, '5': 9, '8': {}, '10': 'creditos'},
    {
      '1': 'botoes',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.aresta.Botao',
      '8': {},
      '10': 'botoes'
    },
    {'1': 'picos', '3': 6, '4': 3, '5': 11, '6': '.aresta.Pico', '10': 'picos'},
    {
      '1': 'arquivos_externos',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.aresta.ArquivoExterno',
      '8': {},
      '10': 'arquivosExternos'
    },
    {
      '1': 'caminho_thumbnail',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'caminhoThumbnail'
    },
    {
      '1': 'revisado_manualmente',
      '3': 9,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'revisadoManualmente'
    },
    {
      '1': 'revisado_bounding_circle',
      '3': 11,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'revisadoBoundingCircle'
    },
    {
      '1': 'status_desenho_extraivel',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.aresta.Croqui.StatusDesenhoExtraivel.Enum',
      '8': {},
      '10': 'statusDesenhoExtraivel'
    },
    {
      '1': 'ultima_migracao',
      '3': 15,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'ultimaMigracao'
    },
    {
      '1': 'publicar_croqui',
      '3': 16,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'publicarCroqui'
    },
  ],
  '3': [Croqui_StatusDesenhoExtraivel$json],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '6': [
    {
      '1': 'ext_metadados_arquivo',
      '2': '.aresta.Croqui',
      '3': 1000,
      '4': 1,
      '5': 11,
      '6': '.aresta.MetadadosArquivoNoEditor',
      '10': 'extMetadadosArquivo'
    },
  ],
  '9': [
    {'1': 5, '2': 6},
    {'1': 10, '2': 11},
    {'1': 12, '2': 13},
  ],
};

@$core.Deprecated('Use croquiDescriptor instead')
const Croqui_StatusDesenhoExtraivel$json = {
  '1': 'StatusDesenhoExtraivel',
  '4': [Croqui_StatusDesenhoExtraivel_Enum$json],
};

@$core.Deprecated('Use croquiDescriptor instead')
const Croqui_StatusDesenhoExtraivel_Enum$json = {
  '1': 'Enum',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'NAO_TEM_DESENHO', '2': 1, '3': {}},
    {'1': 'TEM_DESENHO_MAS_NAO_EXTRAIDO', '2': 2, '3': {}},
    {'1': 'DESENHO_EXTRAIDO', '2': 3, '3': {}},
  ],
};

/// Descriptor for `Croqui`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List croquiDescriptor = $convert.base64Decode(
    'CgZDcm9xdWkSFAoCaWQYASABKAlCBOi1GAFSAmlkEhgKBG5vbWUYAiABKAlCBMC1GAFSBG5vbW'
    'USMQoJZGVzY3JpY2FvGAMgASgJQhOStRgLRGVzY3Jpw6fDo2+wtRgEUglkZXNjcmljYW8SKQoI'
    'Y3JlZGl0b3MYBCADKAlCDZK1GAlDcsOpZGl0b3NSCGNyZWRpdG9zEjIKBmJvdG9lcxgOIAMoCz'
    'INLmFyZXN0YS5Cb3Rhb0ILkrUYB0JvdMO1ZXNSBmJvdG9lcxIiCgVwaWNvcxgGIAMoCzIMLmFy'
    'ZXN0YS5QaWNvUgVwaWNvcxJJChFhcnF1aXZvc19leHRlcm5vcxgHIAMoCzIWLmFyZXN0YS5Bcn'
    'F1aXZvRXh0ZXJub0IEsLUYAlIQYXJxdWl2b3NFeHRlcm5vcxJpChFjYW1pbmhvX3RodW1ibmFp'
    'bBgIIAEoCUI8irUYCmltYWdlL3dlYnCStRgQVGh1bWJuYWlsIC8gQ2FwYZi1GAKwtRgI4rUYDn'
    'RodW1ibmFpbC53ZWJwUhBjYW1pbmhvVGh1bWJuYWlsEn4KFHJldmlzYWRvX21hbnVhbG1lbnRl'
    'GAkgASgIQkuStRgUUmV2aXNhZG8gTWFudWFsbWVudGXKtRgOTsOjbyBpbmZvcm1hZG/StRgIUm'
    'V2aXNhZG/atRgNTsOjbyByZXZpc2Fkb+i1GAFSE3JldmlzYWRvTWFudWFsbWVudGUSiQEKGHJl'
    'dmlzYWRvX2JvdW5kaW5nX2NpcmNsZRgLIAEoCEJPkrUYGFJldmlzYWRvIEJvdW5kaW5nIENpcm'
    'NsZcq1GA5Ow6NvIGluZm9ybWFkb9K1GAhSZXZpc2Fkb9q1GA1Ow6NvIHJldmlzYWRv6LUYAVIW'
    'cmV2aXNhZG9Cb3VuZGluZ0NpcmNsZRJqChhzdGF0dXNfZGVzZW5ob19leHRyYWl2ZWwYDSABKA'
    '4yKi5hcmVzdGEuQ3JvcXVpLlN0YXR1c0Rlc2VuaG9FeHRyYWl2ZWwuRW51bUIE6LUYAVIWc3Rh'
    'dHVzRGVzZW5ob0V4dHJhaXZlbBItCg91bHRpbWFfbWlncmFjYW8YDyABKAVCBLC1GAJSDnVsdG'
    'ltYU1pZ3JhY2FvEmcKD3B1YmxpY2FyX2Nyb3F1aRgQIAEoCEI+krUYD1B1YmxpY2FyIENyb3F1'
    'acq1GA5Ow6NvIGluZm9ybWFkb9K1GAlQdWJsaWNhZG/atRgIUmFzY3VuaG9SDnB1YmxpY2FyQ3'
    'JvcXVpGtQBChZTdGF0dXNEZXNlbmhvRXh0cmFpdmVsIrkBCgRFbnVtEg4KCklOREVGSU5JRE8Q'
    'ABIpCg9OQU9fVEVNX0RFU0VOSE8QARoUirUYEE7Do28gdGVtIGRlc2VuaG8SSQocVEVNX0RFU0'
    'VOSE9fTUFTX05BT19FWFRSQUlETxACGieKtRgjVGVtIGRlc2VuaG8sIG1hcyBuw6NvIGZvaSBl'
    'eHRyYcOtZG8SKwoQREVTRU5IT19FWFRSQUlETxADGhWKtRgRRGVzZW5obyBleHRyYcOtZG8qCQ'
    'joBxCAgICAAjJlChVleHRfbWV0YWRhZG9zX2FycXVpdm8SDi5hcmVzdGEuQ3JvcXVpGOgHIAEo'
    'CzIgLmFyZXN0YS5NZXRhZGFkb3NBcnF1aXZvTm9FZGl0b3JSE2V4dE1ldGFkYWRvc0FycXVpdm'
    '9KBAgFEAZKBAgKEAtKBAgMEA0=');

@$core.Deprecated('Use botaoDescriptor instead')
const Botao$json = {
  '1': 'Botao',
  '2': [
    {'1': 'texto', '3': 1, '4': 1, '5': 9, '10': 'texto'},
    {
      '1': 'destino',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.DestinoBotao',
      '10': 'destino'
    },
  ],
  '7': {},
};

/// Descriptor for `Botao`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List botaoDescriptor = $convert.base64Decode(
    'CgVCb3RhbxIUCgV0ZXh0bxgBIAEoCVIFdGV4dG8SLgoHZGVzdGlubxgCIAEoCzIULmFyZXN0YS'
    '5EZXN0aW5vQm90YW9SB2Rlc3Rpbm86BJC1GAE=');

@$core.Deprecated('Use destinoBotaoDescriptor instead')
const DestinoBotao$json = {
  '1': 'DestinoBotao',
  '2': [
    {
      '1': 'secao_textual',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aresta.ArquivoMarkdown',
      '9': 0,
      '10': 'secaoTextual'
    },
  ],
  '7': {},
  '8': [
    {'1': 'destino'},
  ],
};

/// Descriptor for `DestinoBotao`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List destinoBotaoDescriptor = $convert.base64Decode(
    'CgxEZXN0aW5vQm90YW8SPgoNc2VjYW9fdGV4dHVhbBgBIAEoCzIXLmFyZXN0YS5BcnF1aXZvTW'
    'Fya2Rvd25IAFIMc2VjYW9UZXh0dWFsOgSQtRgCQgkKB2Rlc3Rpbm8=');

@$core.Deprecated('Use arquivoExternoDescriptor instead')
const ArquivoExterno$json = {
  '1': 'ArquivoExterno',
  '2': [
    {'1': 'caminho', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'caminho'},
    {'1': 'checksum_sha256', '3': 2, '4': 1, '5': 9, '10': 'checksumSha256'},
  ],
  '7': {},
};

/// Descriptor for `ArquivoExterno`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arquivoExternoDescriptor = $convert.base64Decode(
    'Cg5BcnF1aXZvRXh0ZXJubxIeCgdjYW1pbmhvGAEgASgJQgSYtRgCUgdjYW1pbmhvEicKD2NoZW'
    'Nrc3VtX3NoYTI1NhgCIAEoCVIOY2hlY2tzdW1TaGEyNTY6BJC1GAQ=');

@$core.Deprecated('Use metadadosArquivoNoEditorDescriptor instead')
const MetadadosArquivoNoEditor$json = {
  '1': 'MetadadosArquivoNoEditor',
  '2': [
    {'1': 'caminho_original', '3': 1, '4': 1, '5': 9, '10': 'caminhoOriginal'},
    {'1': 'caminho_novo', '3': 2, '4': 1, '5': 9, '10': 'caminhoNovo'},
    {
      '1': 'dados_json_originais',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'dadosJsonOriginais'
    },
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `MetadadosArquivoNoEditor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadadosArquivoNoEditorDescriptor = $convert.base64Decode(
    'ChhNZXRhZGFkb3NBcnF1aXZvTm9FZGl0b3ISKQoQY2FtaW5ob19vcmlnaW5hbBgBIAEoCVIPY2'
    'FtaW5ob09yaWdpbmFsEiEKDGNhbWluaG9fbm92bxgCIAEoCVILY2FtaW5ob05vdm8SMAoUZGFk'
    'b3NfanNvbl9vcmlnaW5haXMYBCABKAlSEmRhZG9zSnNvbk9yaWdpbmFpc0oECAMQBA==');

@$core.Deprecated('Use arquivoMarkdownDescriptor instead')
const ArquivoMarkdown$json = {
  '1': 'ArquivoMarkdown',
  '2': [
    {'1': 'caminho', '3': 2, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'caminho'},
    {
      '1': 'conteudo',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 0,
      '10': 'conteudo'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '6': [
    {
      '1': 'ext_metadados_arquivo',
      '2': '.aresta.ArquivoMarkdown',
      '3': 1000,
      '4': 1,
      '5': 11,
      '6': '.aresta.MetadadosArquivoNoEditor',
      '10': 'extMetadadosArquivo'
    },
  ],
  '7': {},
  '8': [
    {'1': 'arquivo'},
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
};

/// Descriptor for `ArquivoMarkdown`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arquivoMarkdownDescriptor = $convert.base64Decode(
    'Cg9BcnF1aXZvTWFya2Rvd24SNQoHY2FtaW5obxgCIAEoCUIZirUYDXRleHQvbWFya2Rvd26YtR'
    'gCuLUYAUgAUgdjYW1pbmhvEjcKCGNvbnRldWRvGAMgASgJQhmKtRgNdGV4dC9tYXJrZG93bpi1'
    'GAGwtRgFSABSCGNvbnRldWRvKgkI6AcQgICAgAIybgoVZXh0X21ldGFkYWRvc19hcnF1aXZvEh'
    'cuYXJlc3RhLkFycXVpdm9NYXJrZG93bhjoByABKAsyIC5hcmVzdGEuTWV0YWRhZG9zQXJxdWl2'
    'b05vRWRpdG9yUhNleHRNZXRhZGFkb3NBcnF1aXZvOgSQtRgFQgkKB2FycXVpdm9KBAgBEAI=');

@$core.Deprecated('Use precomputadosSetorDescriptor instead')
const PrecomputadosSetor$json = {
  '1': 'PrecomputadosSetor',
  '2': [
    {'1': 'total_escaladas', '3': 1, '4': 1, '5': 5, '10': 'totalEscaladas'},
    {'1': 'total_esportivas', '3': 4, '4': 1, '5': 5, '10': 'totalEsportivas'},
    {'1': 'total_moveis', '3': 5, '4': 1, '5': 5, '10': 'totalMoveis'},
    {'1': 'total_boulders', '3': 6, '4': 1, '5': 5, '10': 'totalBoulders'},
    {
      '1': 'total_multiplas_enfiadas',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'totalMultiplasEnfiadas'
    },
    {'1': 'total_highlines', '3': 8, '4': 1, '5': 5, '10': 'totalHighlines'},
  ],
  '7': {},
};

/// Descriptor for `PrecomputadosSetor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List precomputadosSetorDescriptor = $convert.base64Decode(
    'ChJQcmVjb21wdXRhZG9zU2V0b3ISJwoPdG90YWxfZXNjYWxhZGFzGAEgASgFUg50b3RhbEVzY2'
    'FsYWRhcxIpChB0b3RhbF9lc3BvcnRpdmFzGAQgASgFUg90b3RhbEVzcG9ydGl2YXMSIQoMdG90'
    'YWxfbW92ZWlzGAUgASgFUgt0b3RhbE1vdmVpcxIlCg50b3RhbF9ib3VsZGVycxgGIAEoBVINdG'
    '90YWxCb3VsZGVycxI4Chh0b3RhbF9tdWx0aXBsYXNfZW5maWFkYXMYByABKAVSFnRvdGFsTXVs'
    'dGlwbGFzRW5maWFkYXMSJwoPdG90YWxfaGlnaGxpbmVzGAggASgFUg50b3RhbEhpZ2hsaW5lcz'
    'oEkLUYBA==');

@$core.Deprecated('Use precomputadosGrupoDescriptor instead')
const PrecomputadosGrupo$json = {
  '1': 'PrecomputadosGrupo',
  '2': [
    {'1': 'total_escaladas', '3': 1, '4': 1, '5': 5, '10': 'totalEscaladas'},
    {'1': 'total_esportivas', '3': 4, '4': 1, '5': 5, '10': 'totalEsportivas'},
    {'1': 'total_moveis', '3': 5, '4': 1, '5': 5, '10': 'totalMoveis'},
    {'1': 'total_boulders', '3': 6, '4': 1, '5': 5, '10': 'totalBoulders'},
    {
      '1': 'total_multiplas_enfiadas',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'totalMultiplasEnfiadas'
    },
    {'1': 'total_highlines', '3': 8, '4': 1, '5': 5, '10': 'totalHighlines'},
  ],
  '7': {},
};

/// Descriptor for `PrecomputadosGrupo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List precomputadosGrupoDescriptor = $convert.base64Decode(
    'ChJQcmVjb21wdXRhZG9zR3J1cG8SJwoPdG90YWxfZXNjYWxhZGFzGAEgASgFUg50b3RhbEVzY2'
    'FsYWRhcxIpChB0b3RhbF9lc3BvcnRpdmFzGAQgASgFUg90b3RhbEVzcG9ydGl2YXMSIQoMdG90'
    'YWxfbW92ZWlzGAUgASgFUgt0b3RhbE1vdmVpcxIlCg50b3RhbF9ib3VsZGVycxgGIAEoBVINdG'
    '90YWxCb3VsZGVycxI4Chh0b3RhbF9tdWx0aXBsYXNfZW5maWFkYXMYByABKAVSFnRvdGFsTXVs'
    'dGlwbGFzRW5maWFkYXMSJwoPdG90YWxfaGlnaGxpbmVzGAggASgFUg50b3RhbEhpZ2hsaW5lcz'
    'oEkLUYBA==');

@$core.Deprecated('Use precomputadosPicoDescriptor instead')
const PrecomputadosPico$json = {
  '1': 'PrecomputadosPico',
  '2': [
    {'1': 'total_escaladas', '3': 1, '4': 1, '5': 5, '10': 'totalEscaladas'},
    {'1': 'total_setores', '3': 2, '4': 1, '5': 5, '10': 'totalSetores'},
    {'1': 'total_grupos', '3': 3, '4': 1, '5': 5, '10': 'totalGrupos'},
    {'1': 'total_esportivas', '3': 4, '4': 1, '5': 5, '10': 'totalEsportivas'},
    {'1': 'total_moveis', '3': 5, '4': 1, '5': 5, '10': 'totalMoveis'},
    {'1': 'total_boulders', '3': 6, '4': 1, '5': 5, '10': 'totalBoulders'},
    {
      '1': 'total_multiplas_enfiadas',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'totalMultiplasEnfiadas'
    },
    {'1': 'total_highlines', '3': 8, '4': 1, '5': 5, '10': 'totalHighlines'},
  ],
  '7': {},
};

/// Descriptor for `PrecomputadosPico`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List precomputadosPicoDescriptor = $convert.base64Decode(
    'ChFQcmVjb21wdXRhZG9zUGljbxInCg90b3RhbF9lc2NhbGFkYXMYASABKAVSDnRvdGFsRXNjYW'
    'xhZGFzEiMKDXRvdGFsX3NldG9yZXMYAiABKAVSDHRvdGFsU2V0b3JlcxIhCgx0b3RhbF9ncnVw'
    'b3MYAyABKAVSC3RvdGFsR3J1cG9zEikKEHRvdGFsX2VzcG9ydGl2YXMYBCABKAVSD3RvdGFsRX'
    'Nwb3J0aXZhcxIhCgx0b3RhbF9tb3ZlaXMYBSABKAVSC3RvdGFsTW92ZWlzEiUKDnRvdGFsX2Jv'
    'dWxkZXJzGAYgASgFUg10b3RhbEJvdWxkZXJzEjgKGHRvdGFsX211bHRpcGxhc19lbmZpYWRhcx'
    'gHIAEoBVIWdG90YWxNdWx0aXBsYXNFbmZpYWRhcxInCg90b3RhbF9oaWdobGluZXMYCCABKAVS'
    'DnRvdGFsSGlnaGxpbmVzOgSQtRgE');

@$core.Deprecated('Use picoDescriptor instead')
const Pico$json = {
  '1': 'Pico',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'nome'},
    {'1': 'descricao', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {'1': 'estado', '3': 3, '4': 1, '5': 9, '10': 'estado'},
    {
      '1': 'localizacao',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '8': {},
      '10': 'localizacao'
    },
    {
      '1': 'url_google_maps',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlGoogleMaps'
    },
    {
      '1': 'nome_associacao',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'nomeAssociacao'
    },
    {
      '1': 'url_filiacao_associacao',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlFiliacaoAssociacao'
    },
    {
      '1': 'chave_pix_manutencao',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'chavePixManutencao'
    },
    {
      '1': 'patrocinadores',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.aresta.Patrocinador',
      '8': {},
      '10': 'patrocinadores'
    },
    {
      '1': 'setores_ou_grupos',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.aresta.SetorOuGrupo',
      '10': 'setoresOuGrupos'
    },
    {
      '1': 'mapas_gerais',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.aresta.ArquivoMapas',
      '8': {},
      '10': 'mapasGerais'
    },
    {
      '1': 'precomputados',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.aresta.PrecomputadosPico',
      '8': {},
      '10': 'precomputados'
    },
  ],
  '7': {},
  '9': [
    {'1': 10, '2': 11},
  ],
};

/// Descriptor for `Pico`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List picoDescriptor = $convert.base64Decode(
    'CgRQaWNvEhgKBG5vbWUYASABKAlCBMC1GAFSBG5vbWUSIgoJZGVzY3JpY2FvGAIgASgJQgSotR'
    'gBUglkZXNjcmljYW8SFgoGZXN0YWRvGAMgASgJUgZlc3RhZG8SRwoLbG9jYWxpemFjYW8YBCAB'
    'KAsyEi5hcmVzdGEuQ29vcmRlbmFkYUIRkrUYDUxvY2FsaXphw6fDo29SC2xvY2FsaXphY2FvEj'
    'sKD3VybF9nb29nbGVfbWFwcxgFIAEoCUITkrUYD1VSTCBHb29nbGUgTWFwc1INdXJsR29vZ2xl'
    'TWFwcxItCg9ub21lX2Fzc29jaWFjYW8YBiABKAlCBOi1GAFSDm5vbWVBc3NvY2lhY2FvElEKF3'
    'VybF9maWxpYWNhb19hc3NvY2lhY2FvGAcgASgJQhmStRgRVVJMIGRlIEZpbGlhw6fDo2/otRgB'
    'UhV1cmxGaWxpYWNhb0Fzc29jaWFjYW8SVQoUY2hhdmVfcGl4X21hbnV0ZW5jYW8YCCABKAlCI5'
    'K1GBtDaGF2ZSBQaXggcGFyYSBNYW51dGVuw6fDo2/otRgBUhJjaGF2ZVBpeE1hbnV0ZW5jYW8S'
    'QgoOcGF0cm9jaW5hZG9yZXMYCSADKAsyFC5hcmVzdGEuUGF0cm9jaW5hZG9yQgTotRgBUg5wYX'
    'Ryb2NpbmFkb3JlcxJAChFzZXRvcmVzX291X2dydXBvcxgLIAMoCzIULmFyZXN0YS5TZXRvck91'
    'R3J1cG9SD3NldG9yZXNPdUdydXBvcxJJCgxtYXBhc19nZXJhaXMYDCABKAsyFC5hcmVzdGEuQX'
    'JxdWl2b01hcGFzQhCStRgMTWFwYXMgR2VyYWlzUgttYXBhc0dlcmFpcxJFCg1wcmVjb21wdXRh'
    'ZG9zGA0gASgLMhkuYXJlc3RhLlByZWNvbXB1dGFkb3NQaWNvQgSwtRgCUg1wcmVjb21wdXRhZG'
    '9zOgSQtRgBSgQIChAL');

@$core.Deprecated('Use colecaoDeMapasDescriptor instead')
const ColecaoDeMapas$json = {
  '1': 'ColecaoDeMapas',
  '2': [
    {'1': 'mapas', '3': 1, '4': 3, '5': 11, '6': '.aresta.Mapa', '10': 'mapas'},
  ],
  '7': {},
};

/// Descriptor for `ColecaoDeMapas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colecaoDeMapasDescriptor = $convert.base64Decode(
    'Cg5Db2xlY2FvRGVNYXBhcxIiCgVtYXBhcxgBIAMoCzIMLmFyZXN0YS5NYXBhUgVtYXBhczoEkL'
    'UYAg==');

@$core.Deprecated('Use arquivoMapasDescriptor instead')
const ArquivoMapas$json = {
  '1': 'ArquivoMapas',
  '2': [
    {'1': 'caminho', '3': 1, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'caminho'},
    {
      '1': 'conteudo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.ColecaoDeMapas',
      '8': {},
      '9': 0,
      '10': 'conteudo'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '6': [
    {
      '1': 'ext_metadados_arquivo',
      '2': '.aresta.ArquivoMapas',
      '3': 1000,
      '4': 1,
      '5': 11,
      '6': '.aresta.MetadadosArquivoNoEditor',
      '10': 'extMetadadosArquivo'
    },
  ],
  '7': {},
  '8': [
    {'1': 'arquivo'},
  ],
};

/// Descriptor for `ArquivoMapas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arquivoMapasDescriptor = $convert.base64Decode(
    'CgxBcnF1aXZvTWFwYXMSTgoHY2FtaW5obxgBIAEoCUIyirUYDXRleHQvbWFya2Rvd26YtRgCor'
    'UYFWFyZXN0YS5Db2xlY2FvRGVNYXBhc7i1GAFIAFIHY2FtaW5obxI6Cghjb250ZXVkbxgCIAEo'
    'CzIWLmFyZXN0YS5Db2xlY2FvRGVNYXBhc0IEmLUYAUgAUghjb250ZXVkbyoJCOgHEICAgIACMm'
    'sKFWV4dF9tZXRhZGFkb3NfYXJxdWl2bxIULmFyZXN0YS5BcnF1aXZvTWFwYXMY6AcgASgLMiAu'
    'YXJlc3RhLk1ldGFkYWRvc0FycXVpdm9Ob0VkaXRvclITZXh0TWV0YWRhZG9zQXJxdWl2bzoEkL'
    'UYBUIJCgdhcnF1aXZv');

@$core.Deprecated('Use setorOuGrupoDescriptor instead')
const SetorOuGrupo$json = {
  '1': 'SetorOuGrupo',
  '2': [
    {
      '1': 'setor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aresta.ArquivoSetor',
      '9': 0,
      '10': 'setor'
    },
    {
      '1': 'grupo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.ArquivoGrupo',
      '9': 0,
      '10': 'grupo'
    },
  ],
  '7': {},
  '8': [
    {'1': 'tipo'},
  ],
};

/// Descriptor for `SetorOuGrupo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setorOuGrupoDescriptor = $convert.base64Decode(
    'CgxTZXRvck91R3J1cG8SLAoFc2V0b3IYASABKAsyFC5hcmVzdGEuQXJxdWl2b1NldG9ySABSBX'
    'NldG9yEiwKBWdydXBvGAIgASgLMhQuYXJlc3RhLkFycXVpdm9HcnVwb0gAUgVncnVwbzoEkLUY'
    'A0IGCgR0aXBv');

@$core.Deprecated('Use arquivoSetorDescriptor instead')
const ArquivoSetor$json = {
  '1': 'ArquivoSetor',
  '2': [
    {'1': 'caminho', '3': 1, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'caminho'},
    {
      '1': 'conteudo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.Setor',
      '8': {},
      '9': 0,
      '10': 'conteudo'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '6': [
    {
      '1': 'ext_metadados_arquivo',
      '2': '.aresta.ArquivoSetor',
      '3': 1000,
      '4': 1,
      '5': 11,
      '6': '.aresta.MetadadosArquivoNoEditor',
      '10': 'extMetadadosArquivo'
    },
  ],
  '7': {},
  '8': [
    {'1': 'arquivo'},
  ],
};

/// Descriptor for `ArquivoSetor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arquivoSetorDescriptor = $convert.base64Decode(
    'CgxBcnF1aXZvU2V0b3ISRQoHY2FtaW5obxgBIAEoCUIpirUYDXRleHQvbWFya2Rvd26YtRgCor'
    'UYDGFyZXN0YS5TZXRvcri1GAFIAFIHY2FtaW5obxIxCghjb250ZXVkbxgCIAEoCzINLmFyZXN0'
    'YS5TZXRvckIEmLUYAUgAUghjb250ZXVkbyoJCOgHEICAgIACMmsKFWV4dF9tZXRhZGFkb3NfYX'
    'JxdWl2bxIULmFyZXN0YS5BcnF1aXZvU2V0b3IY6AcgASgLMiAuYXJlc3RhLk1ldGFkYWRvc0Fy'
    'cXVpdm9Ob0VkaXRvclITZXh0TWV0YWRhZG9zQXJxdWl2bzoEkLUYBUIJCgdhcnF1aXZv');

@$core.Deprecated('Use arquivoGrupoDescriptor instead')
const ArquivoGrupo$json = {
  '1': 'ArquivoGrupo',
  '2': [
    {'1': 'caminho', '3': 1, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'caminho'},
    {
      '1': 'conteudo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.Grupo',
      '8': {},
      '9': 0,
      '10': 'conteudo'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '6': [
    {
      '1': 'ext_metadados_arquivo',
      '2': '.aresta.ArquivoGrupo',
      '3': 1000,
      '4': 1,
      '5': 11,
      '6': '.aresta.MetadadosArquivoNoEditor',
      '10': 'extMetadadosArquivo'
    },
  ],
  '7': {},
  '8': [
    {'1': 'arquivo'},
  ],
};

/// Descriptor for `ArquivoGrupo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arquivoGrupoDescriptor = $convert.base64Decode(
    'CgxBcnF1aXZvR3J1cG8SRQoHY2FtaW5obxgBIAEoCUIpirUYDXRleHQvbWFya2Rvd26YtRgCor'
    'UYDGFyZXN0YS5HcnVwb7i1GAFIAFIHY2FtaW5obxIxCghjb250ZXVkbxgCIAEoCzINLmFyZXN0'
    'YS5HcnVwb0IEmLUYAUgAUghjb250ZXVkbyoJCOgHEICAgIACMmsKFWV4dF9tZXRhZGFkb3NfYX'
    'JxdWl2bxIULmFyZXN0YS5BcnF1aXZvR3J1cG8Y6AcgASgLMiAuYXJlc3RhLk1ldGFkYWRvc0Fy'
    'cXVpdm9Ob0VkaXRvclITZXh0TWV0YWRhZG9zQXJxdWl2bzoEkLUYBUIJCgdhcnF1aXZv');

@$core.Deprecated('Use grupoDescriptor instead')
const Grupo$json = {
  '1': 'Grupo',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'nome'},
    {'1': 'descricao', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'localizacao_estacionamento',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '8': {},
      '10': 'localizacaoEstacionamento'
    },
    {
      '1': 'localizacao_escalada',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '8': {},
      '10': 'localizacaoEscalada'
    },
    {'1': 'mapas', '3': 3, '4': 3, '5': 11, '6': '.aresta.Mapa', '10': 'mapas'},
    {
      '1': 'setores',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aresta.ArquivoSetor',
      '10': 'setores'
    },
    {
      '1': 'precomputados',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.aresta.PrecomputadosGrupo',
      '8': {},
      '10': 'precomputados'
    },
  ],
  '7': {},
  '9': [
    {'1': 8, '2': 9},
  ],
};

/// Descriptor for `Grupo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grupoDescriptor = $convert.base64Decode(
    'CgVHcnVwbxIYCgRub21lGAEgASgJQgTAtRgBUgRub21lEjEKCWRlc2NyaWNhbxgCIAEoCUITkr'
    'UYC0Rlc2NyacOnw6NvqLUYAVIJZGVzY3JpY2FvEnMKGmxvY2FsaXphY2FvX2VzdGFjaW9uYW1l'
    'bnRvGAYgASgLMhIuYXJlc3RhLkNvb3JkZW5hZGFCIJK1GBxMb2NhbGl6YcOnw6NvIEVzdGFjaW'
    '9uYW1lbnRvUhlsb2NhbGl6YWNhb0VzdGFjaW9uYW1lbnRvEmEKFGxvY2FsaXphY2FvX2VzY2Fs'
    'YWRhGAcgASgLMhIuYXJlc3RhLkNvb3JkZW5hZGFCGpK1GBZMb2NhbGl6YcOnw6NvIEVzY2FsYW'
    'RhUhNsb2NhbGl6YWNhb0VzY2FsYWRhEiIKBW1hcGFzGAMgAygLMgwuYXJlc3RhLk1hcGFSBW1h'
    'cGFzEi4KB3NldG9yZXMYBCADKAsyFC5hcmVzdGEuQXJxdWl2b1NldG9yUgdzZXRvcmVzEkYKDX'
    'ByZWNvbXB1dGFkb3MYCSABKAsyGi5hcmVzdGEuUHJlY29tcHV0YWRvc0dydXBvQgSwtRgCUg1w'
    'cmVjb21wdXRhZG9zOgSQtRgBSgQICBAJ');

@$core.Deprecated('Use setorDescriptor instead')
const Setor$json = {
  '1': 'Setor',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'nome'},
    {
      '1': 'localizacao_estacionamento',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '8': {},
      '10': 'localizacaoEstacionamento'
    },
    {
      '1': 'localizacao_escalada',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '8': {},
      '10': 'localizacaoEscalada'
    },
    {
      '1': 'trilhas',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aresta.Trilha',
      '8': {},
      '10': 'trilhas'
    },
    {
      '1': 'sinal_de_celular',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'sinalDeCelular'
    },
    {
      '1': 'amigavel_a_criancas',
      '3': 7,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'amigavelACriancas'
    },
    {
      '1': 'amigavel_a_bebes',
      '3': 8,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'amigavelABebes'
    },
    {'1': 'descricao', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'mapas',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.aresta.Mapa',
      '10': 'mapas'
    },
    {
      '1': 'escaladas',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.aresta.Escalada',
      '10': 'escaladas'
    },
    {
      '1': 'precomputados',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.aresta.PrecomputadosSetor',
      '8': {},
      '10': 'precomputados'
    },
  ],
  '7': {},
  '9': [
    {'1': 12, '2': 13},
    {'1': 14, '2': 15},
  ],
};

/// Descriptor for `Setor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setorDescriptor = $convert.base64Decode(
    'CgVTZXRvchIYCgRub21lGAEgASgJQgTAtRgBUgRub21lEnMKGmxvY2FsaXphY2FvX2VzdGFjaW'
    '9uYW1lbnRvGAIgASgLMhIuYXJlc3RhLkNvb3JkZW5hZGFCIJK1GBxMb2NhbGl6YcOnw6NvIEVz'
    'dGFjaW9uYW1lbnRvUhlsb2NhbGl6YWNhb0VzdGFjaW9uYW1lbnRvEmEKFGxvY2FsaXphY2FvX2'
    'VzY2FsYWRhGAMgASgLMhIuYXJlc3RhLkNvb3JkZW5hZGFCGpK1GBZMb2NhbGl6YcOnw6NvIEVz'
    'Y2FsYWRhUhNsb2NhbGl6YWNhb0VzY2FsYWRhEi4KB3RyaWxoYXMYBCADKAsyDi5hcmVzdGEuVH'
    'JpbGhhQgTotRgBUgd0cmlsaGFzEnEKEHNpbmFsX2RlX2NlbHVsYXIYBiABKAhCR5K1GBBTaW5h'
    'bCBkZSBDZWx1bGFyyrUYDk7Do28gaW5mb3JtYWRv0rUYDFBvc3N1aSBzaW5hbNq1GAlTZW0gc2'
    'luYWzotRgBUg5zaW5hbERlQ2VsdWxhchKdAQoTYW1pZ2F2ZWxfYV9jcmlhbmNhcxgHIAEoCEJt'
    'krUYFUFtaWfDoXZlbCBhIENyaWFuw6dhc8q1GA5Ow6NvIGluZm9ybWFkb9K1GBdBZGVxdWFkby'
    'BwYXJhIGNyaWFuw6dhc9q1GB9Ow6NvIHJlY29tZW5kYWRvIHBhcmEgY3JpYW7Dp2Fz6LUYAVIR'
    'YW1pZ2F2ZWxBQ3JpYW5jYXMSjgEKEGFtaWdhdmVsX2FfYmViZXMYCCABKAhCZJK1GBJBbWlnw6'
    'F2ZWwgYSBCZWLDqnPKtRgOTsOjbyBpbmZvcm1hZG/StRgUQWRlcXVhZG8gcGFyYSBiZWLDqnPa'
    'tRgcTsOjbyByZWNvbWVuZGFkbyBwYXJhIGJlYsOqc+i1GAFSDmFtaWdhdmVsQUJlYmVzEjEKCW'
    'Rlc2NyaWNhbxgJIAEoCUITkrUYC0Rlc2NyacOnw6NvqLUYAVIJZGVzY3JpY2FvEiIKBW1hcGFz'
    'GA0gAygLMgwuYXJlc3RhLk1hcGFSBW1hcGFzEi4KCWVzY2FsYWRhcxgLIAMoCzIQLmFyZXN0YS'
    '5Fc2NhbGFkYVIJZXNjYWxhZGFzEkYKDXByZWNvbXB1dGFkb3MYDyABKAsyGi5hcmVzdGEuUHJl'
    'Y29tcHV0YWRvc1NldG9yQgSwtRgCUg1wcmVjb21wdXRhZG9zOgSQtRgBSgQIDBANSgQIDhAP');

@$core.Deprecated('Use mapaDescriptor instead')
const Mapa$json = {
  '1': 'Mapa',
  '2': [
    {
      '1': 'caminho_imagem_mapa',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'caminhoImagemMapa'
    },
    {'1': 'largura_mapa', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'larguraMapa'},
    {'1': 'altura_mapa', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'alturaMapa'},
    {
      '1': 'pontos_de_interesse',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aresta.Mapa.PontoDeInteresse',
      '10': 'pontosDeInteresse'
    },
    {
      '1': 'referencias',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.aresta.Mapa.Referencia',
      '10': 'referencias'
    },
  ],
  '3': [
    Mapa_PontoDeInteresse$json,
    Mapa_AjusteDeCamera$json,
    Mapa_Referencia$json
  ],
  '7': {},
  '9': [
    {'1': 5, '2': 6},
  ],
};

@$core.Deprecated('Use mapaDescriptor instead')
const Mapa_PontoDeInteresse$json = {
  '1': 'PontoDeInteresse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {
      '1': 'texto_visivel',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'textoVisivel'
    },
    {'1': 'cor', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'cor'},
    {
      '1': 'circulo',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingCirculo',
      '9': 0,
      '10': 'circulo'
    },
    {
      '1': 'quadrado',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingQuadrado',
      '9': 0,
      '10': 'quadrado'
    },
    {
      '1': 'retangulo',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingRetangulo',
      '9': 0,
      '10': 'retangulo'
    },
    {
      '1': 'poligono',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingPoligono',
      '8': {},
      '9': 0,
      '10': 'poligono'
    },
    {
      '1': 'linha',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.aresta.LinhaTrajeto',
      '8': {},
      '9': 0,
      '10': 'linha'
    },
  ],
  '7': {},
  '8': [
    {'1': 'tipo_area'},
  ],
};

@$core.Deprecated('Use mapaDescriptor instead')
const Mapa_AjusteDeCamera$json = {
  '1': 'AjusteDeCamera',
  '2': [
    {'1': 'foco_id_indice', '3': 1, '4': 1, '5': 5, '10': 'focoIdIndice'},
    {'1': 'posicao_vertical', '3': 2, '4': 1, '5': 5, '10': 'posicaoVertical'},
    {
      '1': 'posicao_horizontal',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'posicaoHorizontal'
    },
    {'1': 'zoom', '3': 4, '4': 1, '5': 2, '10': 'zoom'},
  ],
  '7': {},
};

@$core.Deprecated('Use mapaDescriptor instead')
const Mapa_Referencia$json = {
  '1': 'Referencia',
  '2': [
    {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
    {'1': 'grupo', '3': 2, '4': 1, '5': 9, '10': 'grupo'},
    {'1': 'setor', '3': 3, '4': 1, '5': 9, '10': 'setor'},
    {'1': 'escalada', '3': 4, '4': 1, '5': 9, '10': 'escalada'},
    {'1': 'indice_mapa_alvo', '3': 5, '4': 1, '5': 5, '10': 'indiceMapaAlvo'},
    {
      '1': 'ajuste_de_camera',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aresta.Mapa.AjusteDeCamera',
      '10': 'ajusteDeCamera'
    },
  ],
  '7': {},
};

/// Descriptor for `Mapa`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapaDescriptor = $convert.base64Decode(
    'CgRNYXBhEkIKE2NhbWluaG9faW1hZ2VtX21hcGEYASABKAlCEoq1GAppbWFnZS93ZWJwmLUYAl'
    'IRY2FtaW5ob0ltYWdlbU1hcGESNgoMbGFyZ3VyYV9tYXBhGAIgASgFQhOStRgPTGFyZ3VyYSBk'
    'byBNYXBhUgtsYXJndXJhTWFwYRIzCgthbHR1cmFfbWFwYRgDIAEoBUISkrUYDkFsdHVyYSBkby'
    'BNYXBhUgphbHR1cmFNYXBhEk0KE3BvbnRvc19kZV9pbnRlcmVzc2UYBCADKAsyHS5hcmVzdGEu'
    'TWFwYS5Qb250b0RlSW50ZXJlc3NlUhFwb250b3NEZUludGVyZXNzZRI5CgtyZWZlcmVuY2lhcx'
    'gGIAMoCzIXLmFyZXN0YS5NYXBhLlJlZmVyZW5jaWFSC3JlZmVyZW5jaWFzGtwDChBQb250b0Rl'
    'SW50ZXJlc3NlEg4KAmlkGAEgASgJUgJpZBIUCgVsYWJlbBgCIAEoCVIFbGFiZWwSPwoNdGV4dG'
    '9fdmlzaXZlbBgLIAEoCUIakrUYFlRleHRvIFZpc8OtdmVsIG5vIE1hcGFSDHRleHRvVmlzaXZl'
    'bBIZCgNjb3IYCiABKAlCB5K1GANDb3JSA2NvchIzCgdjaXJjdWxvGAYgASgLMhcuYXJlc3RhLk'
    'JvdW5kaW5nQ2lyY3Vsb0gAUgdjaXJjdWxvEjYKCHF1YWRyYWRvGAggASgLMhguYXJlc3RhLkJv'
    'dW5kaW5nUXVhZHJhZG9IAFIIcXVhZHJhZG8SOQoJcmV0YW5ndWxvGAMgASgLMhkuYXJlc3RhLk'
    'JvdW5kaW5nUmV0YW5ndWxvSABSCXJldGFuZ3VsbxJHCghwb2xpZ29ubxgHIAEoCzIYLmFyZXN0'
    'YS5Cb3VuZGluZ1BvbGlnb25vQg+StRgLw4FyZWEgTGl2cmVIAFIIcG9saWdvbm8SQgoFbGluaG'
    'EYCSABKAsyFC5hcmVzdGEuTGluaGFUcmFqZXRvQhSStRgQTGluaGEgZG8gVHJhamV0b0gAUgVs'
    'aW5oYToEkLUYAkILCgl0aXBvX2FyZWEaqgEKDkFqdXN0ZURlQ2FtZXJhEiQKDmZvY29faWRfaW'
    '5kaWNlGAEgASgFUgxmb2NvSWRJbmRpY2USKQoQcG9zaWNhb192ZXJ0aWNhbBgCIAEoBVIPcG9z'
    'aWNhb1ZlcnRpY2FsEi0KEnBvc2ljYW9faG9yaXpvbnRhbBgDIAEoBVIRcG9zaWNhb0hvcml6b2'
    '50YWwSEgoEem9vbRgEIAEoAlIEem9vbToEkLUYAhrdAQoKUmVmZXJlbmNpYRIQCgNpZHMYASAD'
    'KAlSA2lkcxIUCgVncnVwbxgCIAEoCVIFZ3J1cG8SFAoFc2V0b3IYAyABKAlSBXNldG9yEhoKCG'
    'VzY2FsYWRhGAQgASgJUghlc2NhbGFkYRIoChBpbmRpY2VfbWFwYV9hbHZvGAUgASgFUg5pbmRp'
    'Y2VNYXBhQWx2bxJFChBhanVzdGVfZGVfY2FtZXJhGAYgASgLMhsuYXJlc3RhLk1hcGEuQWp1c3'
    'RlRGVDYW1lcmFSDmFqdXN0ZURlQ2FtZXJhOgSQtRgCOgSQtRgGSgQIBRAG');

@$core.Deprecated('Use boundingCirculoDescriptor instead')
const BoundingCirculo$json = {
  '1': 'BoundingCirculo',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {'1': 'raio', '3': 3, '4': 1, '5': 5, '10': 'raio'},
  ],
  '7': {},
};

/// Descriptor for `BoundingCirculo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingCirculoDescriptor = $convert.base64Decode(
    'Cg9Cb3VuZGluZ0NpcmN1bG8SDAoBeBgBIAEoBVIBeBIMCgF5GAIgASgFUgF5EhIKBHJhaW8YAy'
    'ABKAVSBHJhaW86BJC1GAI=');

@$core.Deprecated('Use boundingQuadradoDescriptor instead')
const BoundingQuadrado$json = {
  '1': 'BoundingQuadrado',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {'1': 'lado', '3': 3, '4': 1, '5': 5, '10': 'lado'},
  ],
  '7': {},
};

/// Descriptor for `BoundingQuadrado`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingQuadradoDescriptor = $convert.base64Decode(
    'ChBCb3VuZGluZ1F1YWRyYWRvEgwKAXgYASABKAVSAXgSDAoBeRgCIAEoBVIBeRISCgRsYWRvGA'
    'MgASgFUgRsYWRvOgSQtRgC');

@$core.Deprecated('Use boundingRetanguloDescriptor instead')
const BoundingRetangulo$json = {
  '1': 'BoundingRetangulo',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {'1': 'comprimento', '3': 5, '4': 1, '5': 5, '10': 'comprimento'},
    {'1': 'largura', '3': 6, '4': 1, '5': 5, '10': 'largura'},
    {
      '1': 'angulo_graus_x100',
      '3': 7,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'anguloGrausX100'
    },
  ],
  '7': {},
  '9': [
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
  ],
};

/// Descriptor for `BoundingRetangulo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingRetanguloDescriptor = $convert.base64Decode(
    'ChFCb3VuZGluZ1JldGFuZ3VsbxIMCgF4GAEgASgFUgF4EgwKAXkYAiABKAVSAXkSIAoLY29tcH'
    'JpbWVudG8YBSABKAVSC2NvbXByaW1lbnRvEhgKB2xhcmd1cmEYBiABKAVSB2xhcmd1cmESRQoR'
    'YW5ndWxvX2dyYXVzX3gxMDAYByABKBFCGZK1GBXDgm5ndWxvIChncmF1cyAqIDEwMClSD2FuZ3'
    'Vsb0dyYXVzWDEwMDoEkLUYAkoECAMQBEoECAQQBQ==');

@$core.Deprecated('Use boundingPoligonoDescriptor instead')
const BoundingPoligono$json = {
  '1': 'BoundingPoligono',
  '2': [
    {'1': 'coordenadas', '3': 1, '4': 3, '5': 5, '10': 'coordenadas'},
  ],
  '7': {},
};

/// Descriptor for `BoundingPoligono`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingPoligonoDescriptor = $convert.base64Decode(
    'ChBCb3VuZGluZ1BvbGlnb25vEiAKC2Nvb3JkZW5hZGFzGAEgAygFUgtjb29yZGVuYWRhczoEkL'
    'UYAg==');

@$core.Deprecated('Use linhaTrajetoDescriptor instead')
const LinhaTrajeto$json = {
  '1': 'LinhaTrajeto',
  '2': [
    {
      '1': 'estilo',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.aresta.LinhaTrajeto.EstiloTraco',
      '8': {},
      '10': 'estilo'
    },
    {'1': 'espessura', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'espessura'},
    {
      '1': 'conteudo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.DadosConteudoLinha',
      '8': {},
      '9': 0,
      '10': 'conteudo'
    },
    {
      '1': 'compilado',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aresta.DadosCompiladosLinha',
      '8': {},
      '9': 0,
      '10': 'compilado'
    },
  ],
  '4': [LinhaTrajeto_EstiloTraco$json],
  '7': {},
  '8': [
    {'1': 'representacao'},
  ],
};

@$core.Deprecated('Use linhaTrajetoDescriptor instead')
const LinhaTrajeto_EstiloTraco$json = {
  '1': 'EstiloTraco',
  '2': [
    {'1': 'TRACEJADO', '2': 0, '3': {}},
    {'1': 'SOLIDO', '2': 1, '3': {}},
    {'1': 'PONTILHADO', '2': 2, '3': {}},
    {'1': 'CAMINHADA', '2': 3, '3': {}},
  ],
};

/// Descriptor for `LinhaTrajeto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linhaTrajetoDescriptor = $convert.base64Decode(
    'CgxMaW5oYVRyYWpldG8STgoGZXN0aWxvGAEgASgOMiAuYXJlc3RhLkxpbmhhVHJhamV0by5Fc3'
    'RpbG9UcmFjb0IUkrUYEEVzdGlsbyBkbyBUcmHDp29SBmVzdGlsbxIrCgllc3Blc3N1cmEYBCAB'
    'KAVCDZK1GAlFc3Blc3N1cmFSCWVzcGVzc3VyYRJHCghjb250ZXVkbxgCIAEoCzIaLmFyZXN0YS'
    '5EYWRvc0NvbnRldWRvTGluaGFCDZK1GAlDb250ZcO6ZG9IAFIIY29udGV1ZG8SQgoJY29tcGls'
    'YWRvGAMgASgLMhwuYXJlc3RhLkRhZG9zQ29tcGlsYWRvc0xpbmhhQgSwtRgCSABSCWNvbXBpbG'
    'FkbyK4AQoLRXN0aWxvVHJhY28SKQoJVFJBQ0VKQURPEAAaGoq1GBZUcmFjZWphZG8gKFJvdGEg'
    'TGl2cmUpEisKBlNPTElETxABGh+KtRgbU8OzbGlkbyAoQ29yZGEgRml4YSAvIENhYm8pEisKCl'
    'BPTlRJTEhBRE8QAhobirUYF1BvbnRpbGhhZG8gKEFydGlmaWNpYWwpEiQKCUNBTUlOSEFEQRAD'
    'GhWKtRgRQ2FtaW5oYWRhIChTZXRhcyk6BJC1GAJCDwoNcmVwcmVzZW50YWNhbw==');

@$core.Deprecated('Use dadosConteudoLinhaDescriptor instead')
const DadosConteudoLinha$json = {
  '1': 'DadosConteudoLinha',
  '2': [
    {
      '1': 'nos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.aresta.NoTrajeto',
      '8': {},
      '10': 'nos'
    },
  ],
  '7': {},
};

/// Descriptor for `DadosConteudoLinha`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dadosConteudoLinhaDescriptor = $convert.base64Decode(
    'ChJEYWRvc0NvbnRldWRvTGluaGESOAoDbm9zGAEgAygLMhEuYXJlc3RhLk5vVHJhamV0b0ITkr'
    'UYD07Ds3MgZG8gVHJhamV0b1IDbm9zOgSQtRgC');

@$core.Deprecated('Use noTrajetoDescriptor instead')
const NoTrajeto$json = {
  '1': 'NoTrajeto',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {
      '1': 'tipo',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aresta.NoTrajeto.TipoNo',
      '8': {},
      '10': 'tipo'
    },
    {'1': 'rotulo', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'rotulo'},
    {'1': 'raio', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'raio'},
    {
      '1': 'tamanho_fonte',
      '3': 6,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'tamanhoFonte'
    },
  ],
  '4': [NoTrajeto_TipoNo$json],
  '7': {},
};

@$core.Deprecated('Use noTrajetoDescriptor instead')
const NoTrajeto_TipoNo$json = {
  '1': 'TipoNo',
  '2': [
    {'1': 'PASSAGEM', '2': 0, '3': {}},
    {'1': 'CIRCULO_IDENTIFICADOR', '2': 1, '3': {}},
    {'1': 'INICIO_AGACHADO', '2': 2, '3': {}},
    {'1': 'PROTECAO_FIXA', '2': 3, '3': {}},
    {'1': 'PARADA_INTERMEDIARIA', '2': 4, '3': {}},
    {'1': 'TOP_PARADA', '2': 5, '3': {}},
    {'1': 'CRUX', '2': 6, '3': {}},
    {'1': 'PROTECAO_MOVEL', '2': 7, '3': {}},
    {'1': 'PROTECAO_PITON', '2': 8, '3': {}},
    {'1': 'PROTECAO_FITA', '2': 9, '3': {}},
    {'1': 'BURACO_CLIFF', '2': 10, '3': {}},
    {'1': 'FIM_TOP', '2': 11, '3': {}},
    {'1': 'SETA_DIRECIONAL', '2': 12, '3': {}},
  ],
};

/// Descriptor for `NoTrajeto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noTrajetoDescriptor = $convert.base64Decode(
    'CglOb1RyYWpldG8SDAoBeBgBIAEoBVIBeBIMCgF5GAIgASgFUgF5Ej0KBHRpcG8YAyABKA4yGC'
    '5hcmVzdGEuTm9UcmFqZXRvLlRpcG9Ob0IPkrUYC1RpcG8gZG8gTsOzUgR0aXBvEiMKBnJvdHVs'
    'bxgEIAEoCUILkrUYB1LDs3R1bG9SBnJvdHVsbxIoCgRyYWlvGAUgASgFQhSStRgQUmFpbyBkby'
    'BDw61yY3Vsb1IEcmFpbxI5Cg10YW1hbmhvX2ZvbnRlGAYgASgFQhSStRgQVGFtYW5obyBkYSBG'
    'b250ZVIMdGFtYW5ob0ZvbnRlItsECgZUaXBvTm8SJAoIUEFTU0FHRU0QABoWirUYEkludmlzw6'
    '12ZWwgKEN1cnZhKRI1ChVDSVJDVUxPX0lERU5USUZJQ0FET1IQARoairUYFkPDrXJjdWxvIElk'
    'ZW50aWZpY2Fkb3ISOwoPSU5JQ0lPX0FHQUNIQURPEAIaJoq1GCJDw61yY3VsbyBJZGVudGlmaW'
    'NhZG9yIChTaXQgU3RhcnQpEioKDVBST1RFQ0FPX0ZJWEEQAxoXirUYE1Byb3Rlw6fDo28gRml4'
    'YSAoWCkSOAoUUEFSQURBX0lOVEVSTUVESUFSSUEQBBoeirUYGlBhcmFkYSBJbnRlcm1lZGnDoX'
    'JpYSAoWFgpEisKClRPUF9QQVJBREEQBRobirUYF1RvcCAvIFBhcmFkYSBGaW5hbCAoWFgpEhoK'
    'BENSVVgQBhoQirUYDENydXggKENoYXZlKRIvCg5QUk9URUNBT19NT1ZFTBAHGhuKtRgXUHJvdG'
    'XDp8OjbyBNw7N2ZWwgKOKWsykSHgoOUFJPVEVDQU9fUElUT04QCBoKirUYBlDDrXRvbhIbCg1Q'
    'Uk9URUNBT19GSVRBEAkaCIq1GARGaXRhEiUKDEJVUkFDT19DTElGRhAKGhOKtRgPQnVyYWNvIG'
    'RlIENsaWZmEjEKB0ZJTV9UT1AQCxokirUYIEPDrXJjdWxvIElkZW50aWZpY2Fkb3IgKEZpbS9U'
    'b3ApEkAKD1NFVEFfRElSRUNJT05BTBAMGiuKtRgnU2V0YSBEaXJlY2lvbmFsIChNb3ZpbWVudG'
    '8gLyBEaW7Dom1pY28pOgSQtRgC');

@$core.Deprecated('Use dadosCompiladosLinhaDescriptor instead')
const DadosCompiladosLinha$json = {
  '1': 'DadosCompiladosLinha',
  '2': [
    {'1': 'caminho_svg', '3': 1, '4': 1, '5': 9, '10': 'caminhoSvg'},
    {
      '1': 'caixa_delimitadora',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingRetangulo',
      '10': 'caixaDelimitadora'
    },
    {
      '1': 'marcadores',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.aresta.MarcadorCompilado',
      '10': 'marcadores'
    },
  ],
  '7': {},
};

/// Descriptor for `DadosCompiladosLinha`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dadosCompiladosLinhaDescriptor = $convert.base64Decode(
    'ChREYWRvc0NvbXBpbGFkb3NMaW5oYRIfCgtjYW1pbmhvX3N2ZxgBIAEoCVIKY2FtaW5ob1N2Zx'
    'JIChJjYWl4YV9kZWxpbWl0YWRvcmEYAiABKAsyGS5hcmVzdGEuQm91bmRpbmdSZXRhbmd1bG9S'
    'EWNhaXhhRGVsaW1pdGFkb3JhEjkKCm1hcmNhZG9yZXMYAyADKAsyGS5hcmVzdGEuTWFyY2Fkb3'
    'JDb21waWxhZG9SCm1hcmNhZG9yZXM6BJC1GAQ=');

@$core.Deprecated('Use marcadorCompiladoDescriptor instead')
const MarcadorCompilado$json = {
  '1': 'MarcadorCompilado',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {
      '1': 'angulo_graus_x100',
      '3': 3,
      '4': 1,
      '5': 17,
      '10': 'anguloGrausX100'
    },
    {
      '1': 'tipo',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.aresta.NoTrajeto.TipoNo',
      '10': 'tipo'
    },
    {'1': 'rotulo', '3': 5, '4': 1, '5': 9, '10': 'rotulo'},
    {'1': 'raio', '3': 6, '4': 1, '5': 5, '10': 'raio'},
    {'1': 'tamanho_fonte', '3': 7, '4': 1, '5': 5, '10': 'tamanhoFonte'},
  ],
  '7': {},
};

/// Descriptor for `MarcadorCompilado`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marcadorCompiladoDescriptor = $convert.base64Decode(
    'ChFNYXJjYWRvckNvbXBpbGFkbxIMCgF4GAEgASgFUgF4EgwKAXkYAiABKAVSAXkSKgoRYW5ndW'
    'xvX2dyYXVzX3gxMDAYAyABKBFSD2FuZ3Vsb0dyYXVzWDEwMBIsCgR0aXBvGAQgASgOMhguYXJl'
    'c3RhLk5vVHJhamV0by5UaXBvTm9SBHRpcG8SFgoGcm90dWxvGAUgASgJUgZyb3R1bG8SEgoEcm'
    'FpbxgGIAEoBVIEcmFpbxIjCg10YW1hbmhvX2ZvbnRlGAcgASgFUgx0YW1hbmhvRm9udGU6BJC1'
    'GAQ=');

@$core.Deprecated('Use escaladaDescriptor instead')
const Escalada$json = {
  '1': 'Escalada',
  '2': [
    {
      '1': 'via_esportiva',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.aresta.ViaEsportiva',
      '9': 0,
      '10': 'viaEsportiva'
    },
    {
      '1': 'via_movel',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.aresta.ViaMovel',
      '8': {},
      '9': 0,
      '10': 'viaMovel'
    },
    {
      '1': 'boulder',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aresta.Boulder',
      '9': 0,
      '10': 'boulder'
    },
    {
      '1': 'via_multiplas_enfiadas',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.aresta.ViaMultiplasEnfiadas',
      '8': {},
      '9': 0,
      '10': 'viaMultiplasEnfiadas'
    },
    {
      '1': 'highline',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.aresta.Highline',
      '9': 0,
      '10': 'highline'
    },
    {
      '1': 'betas',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.aresta.MidiaBeta',
      '8': {},
      '10': 'betas'
    },
    {
      '1': 'mapas',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.aresta.Mapa',
      '8': {},
      '10': 'mapas'
    },
  ],
  '7': {},
  '8': [
    {'1': 'tipo'},
  ],
};

/// Descriptor for `Escalada`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List escaladaDescriptor = $convert.base64Decode(
    'CghFc2NhbGFkYRI7Cg12aWFfZXNwb3J0aXZhGAEgASgLMhQuYXJlc3RhLlZpYUVzcG9ydGl2YU'
    'gAUgx2aWFFc3BvcnRpdmESPwoJdmlhX21vdmVsGAIgASgLMhAuYXJlc3RhLlZpYU1vdmVsQg6S'
    'tRgKVmlhIE3Ds3ZlbEgAUgh2aWFNb3ZlbBIrCgdib3VsZGVyGAMgASgLMg8uYXJlc3RhLkJvdW'
    'xkZXJIAFIHYm91bGRlchJxChZ2aWFfbXVsdGlwbGFzX2VuZmlhZGFzGAQgASgLMhwuYXJlc3Rh'
    'LlZpYU11bHRpcGxhc0VuZmlhZGFzQhuStRgXVmlhIE3Dumx0aXBsYXMgRW5maWFkYXNIAFIUdm'
    'lhTXVsdGlwbGFzRW5maWFkYXMSLgoIaGlnaGxpbmUYBSABKAsyEC5hcmVzdGEuSGlnaGxpbmVI'
    'AFIIaGlnaGxpbmUSPgoFYmV0YXMYBiADKAsyES5hcmVzdGEuTWlkaWFCZXRhQhWStRgRQmV0YX'
    'MgZGEgRXNjYWxhZGFSBWJldGFzEi0KBW1hcGFzGAcgAygLMgwuYXJlc3RhLk1hcGFCCZK1GAVN'
    'YXBhc1IFbWFwYXM6BJC1GAFCBgoEdGlwbw==');

@$core.Deprecated('Use viaEsportivaDescriptor instead')
const ViaEsportiva$json = {
  '1': 'ViaEsportiva',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'destaque', '3': 18, '4': 1, '5': 8, '8': {}, '10': 'destaque'},
    {
      '1': 'dificuldade',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauVia.GrauVia',
      '10': 'dificuldade'
    },
    {
      '1': 'dificuldade_artificial',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauArtificial.GrauArtificial',
      '8': {},
      '10': 'dificuldadeArtificial'
    },
    {
      '1': 'exposicao',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauExposicao.GrauExposicao',
      '8': {},
      '10': 'exposicao'
    },
    {
      '1': 'tipo_parede',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.aresta.TipoParede.TipoParede',
      '8': {},
      '10': 'tipoParede'
    },
    {'1': 'extensao', '3': 6, '4': 1, '5': 5, '8': {}, '10': 'extensao'},
    {
      '1': 'quantidade_protecoes_intermediarias',
      '3': 7,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'quantidadeProtecoesIntermediarias'
    },
    {
      '1': 'quantidade_protecoes_parada',
      '3': 8,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'quantidadeProtecoesParada'
    },
    {
      '1': 'tipo_ancoragem',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'tipoAncoragem'
    },
    {'1': 'conquistadores', '3': 10, '4': 3, '5': 9, '10': 'conquistadores'},
    {
      '1': 'data_abertura',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataAbertura'
    },
    {
      '1': 'data_manutencao',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataManutencao'
    },
    {'1': 'descricao', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'url_video_beta',
      '3': 14,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlVideoBeta'
    },
    {
      '1': 'chave_pix_manutencao',
      '3': 15,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'chavePixManutencao'
    },
  ],
  '9': [
    {'1': 16, '2': 17},
  ],
};

/// Descriptor for `ViaEsportiva`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viaEsportivaDescriptor = $convert.base64Decode(
    'CgxWaWFFc3BvcnRpdmESEgoEbm9tZRgBIAEoCVIEbm9tZRJXCghkZXN0YXF1ZRgSIAEoCEI7kr'
    'UYC8OJIERlc3RhcXVlyrUYDk7Do28gaW5mb3JtYWRv0rUYDlNpbSAoRGVzdGFxdWUp2rUYBE7D'
    'o29SCGRlc3RhcXVlEjkKC2RpZmljdWxkYWRlGAIgASgOMhcuYXJlc3RhLkdyYXVWaWEuR3JhdV'
    'ZpYVILZGlmaWN1bGRhZGUSYgoWZGlmaWN1bGRhZGVfYXJ0aWZpY2lhbBgDIAEoDjIlLmFyZXN0'
    'YS5HcmF1QXJ0aWZpY2lhbC5HcmF1QXJ0aWZpY2lhbEIE6LUYAVIVZGlmaWN1bGRhZGVBcnRpZm'
    'ljaWFsEl4KCWV4cG9zaWNhbxgEIAEoDjIjLmFyZXN0YS5HcmF1RXhwb3NpY2FvLkdyYXVFeHBv'
    'c2ljYW9CG5K1GBNHcmF1IGRlIEV4cG9zacOnw6Nv6LUYAVIJZXhwb3NpY2FvElYKC3RpcG9fcG'
    'FyZWRlGAUgASgOMh0uYXJlc3RhLlRpcG9QYXJlZGUuVGlwb1BhcmVkZUIWkrUYDlRpcG8gZGUg'
    'UGFyZWRl6LUYAVIKdGlwb1BhcmVkZRIpCghleHRlbnNhbxgGIAEoBUINkrUYCUV4dGVuc8Ojb1'
    'IIZXh0ZW5zYW8SfQojcXVhbnRpZGFkZV9wcm90ZWNvZXNfaW50ZXJtZWRpYXJpYXMYByABKAVC'
    'LZK1GClRdWFudGlkYWRlIGRlIFByb3Rlw6fDtWVzIEludGVybWVkacOhcmlhc1IhcXVhbnRpZG'
    'FkZVByb3RlY29lc0ludGVybWVkaWFyaWFzEmcKG3F1YW50aWRhZGVfcHJvdGVjb2VzX3BhcmFk'
    'YRgIIAEoBUInkrUYI1F1YW50aWRhZGUgZGUgUHJvdGXDp8O1ZXMgbmEgUGFyYWRhUhlxdWFudG'
    'lkYWRlUHJvdGVjb2VzUGFyYWRhEkAKDnRpcG9fYW5jb3JhZ2VtGAkgASgJQhmStRgRVGlwbyBk'
    'ZSBBbmNvcmFnZW3otRgBUg10aXBvQW5jb3JhZ2VtEiYKDmNvbnF1aXN0YWRvcmVzGAogAygJUg'
    '5jb25xdWlzdGFkb3JlcxI5Cg1kYXRhX2FiZXJ0dXJhGAsgASgJQhSStRgQRGF0YSBkZSBBYmVy'
    'dHVyYVIMZGF0YUFiZXJ0dXJhEk0KD2RhdGFfbWFudXRlbmNhbxgMIAEoCUIkkrUYHERhdGEgZG'
    'Egw5psdGltYSBNYW51dGVuw6fDo2/otRgBUg5kYXRhTWFudXRlbmNhbxIxCglkZXNjcmljYW8Y'
    'DSABKAlCE5K1GAtEZXNjcmnDp8Ojb6i1GAFSCWRlc2NyaWNhbxJHCg51cmxfdmlkZW9fYmV0YR'
    'gOIAEoCUIhkrUYFVVSTCBkbyBWw61kZW8gZG8gQmV0YZi1GALotRgBUgx1cmxWaWRlb0JldGES'
    'VQoUY2hhdmVfcGl4X21hbnV0ZW5jYW8YDyABKAlCI5K1GBtDaGF2ZSBQaXggcGFyYSBNYW51dG'
    'Vuw6fDo2/otRgBUhJjaGF2ZVBpeE1hbnV0ZW5jYW9KBAgQEBE=');

@$core.Deprecated('Use viaMovelDescriptor instead')
const ViaMovel$json = {
  '1': 'ViaMovel',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'destaque', '3': 20, '4': 1, '5': 8, '8': {}, '10': 'destaque'},
    {
      '1': 'dificuldade',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauVia.GrauVia',
      '10': 'dificuldade'
    },
    {
      '1': 'dificuldade_artificial',
      '3': 17,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauArtificial.GrauArtificial',
      '8': {},
      '10': 'dificuldadeArtificial'
    },
    {
      '1': 'dificuldade_artificial_em_livre',
      '3': 18,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauVia.GrauVia',
      '8': {},
      '10': 'dificuldadeArtificialEmLivre'
    },
    {
      '1': 'exposicao',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauExposicao.GrauExposicao',
      '8': {},
      '10': 'exposicao'
    },
    {
      '1': 'tipo_parede',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.aresta.TipoParede.TipoParede',
      '8': {},
      '10': 'tipoParede'
    },
    {'1': 'extensao', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'extensao'},
    {
      '1': 'quantidade_protecoes_intermediarias',
      '3': 6,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'quantidadeProtecoesIntermediarias'
    },
    {
      '1': 'quantidade_protecoes_parada',
      '3': 7,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'quantidadeProtecoesParada'
    },
    {
      '1': 'protecoes_moveis',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'protecoesMoveis'
    },
    {
      '1': 'tipo_ancoragem',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'tipoAncoragem'
    },
    {'1': 'conquistadores', '3': 10, '4': 3, '5': 9, '10': 'conquistadores'},
    {
      '1': 'data_abertura',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataAbertura'
    },
    {
      '1': 'data_manutencao',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataManutencao'
    },
    {'1': 'descricao', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'url_video_beta',
      '3': 14,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlVideoBeta'
    },
    {
      '1': 'chave_pix_manutencao',
      '3': 15,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'chavePixManutencao'
    },
  ],
  '9': [
    {'1': 21, '2': 22},
  ],
};

/// Descriptor for `ViaMovel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viaMovelDescriptor = $convert.base64Decode(
    'CghWaWFNb3ZlbBISCgRub21lGAEgASgJUgRub21lElcKCGRlc3RhcXVlGBQgASgIQjuStRgLw4'
    'kgRGVzdGFxdWXKtRgOTsOjbyBpbmZvcm1hZG/StRgOU2ltIChEZXN0YXF1ZSnatRgETsOjb1II'
    'ZGVzdGFxdWUSOQoLZGlmaWN1bGRhZGUYAiABKA4yFy5hcmVzdGEuR3JhdVZpYS5HcmF1VmlhUg'
    'tkaWZpY3VsZGFkZRJiChZkaWZpY3VsZGFkZV9hcnRpZmljaWFsGBEgASgOMiUuYXJlc3RhLkdy'
    'YXVBcnRpZmljaWFsLkdyYXVBcnRpZmljaWFsQgTotRgBUhVkaWZpY3VsZGFkZUFydGlmaWNpYW'
    'wSkAEKH2RpZmljdWxkYWRlX2FydGlmaWNpYWxfZW1fbGl2cmUYEiABKA4yFy5hcmVzdGEuR3Jh'
    'dVZpYS5HcmF1VmlhQjCStRgoRGlmaWN1bGRhZGUgZG8gbGFuY2UgYXJ0aWZpY2lhbCBlbSBsaX'
    'ZyZei1GAFSHGRpZmljdWxkYWRlQXJ0aWZpY2lhbEVtTGl2cmUSXgoJZXhwb3NpY2FvGAMgASgO'
    'MiMuYXJlc3RhLkdyYXVFeHBvc2ljYW8uR3JhdUV4cG9zaWNhb0IbkrUYE0dyYXUgZGUgRXhwb3'
    'Npw6fDo2/otRgBUglleHBvc2ljYW8SVgoLdGlwb19wYXJlZGUYBCABKA4yHS5hcmVzdGEuVGlw'
    'b1BhcmVkZS5UaXBvUGFyZWRlQhaStRgOVGlwbyBkZSBQYXJlZGXotRgBUgp0aXBvUGFyZWRlEi'
    'kKCGV4dGVuc2FvGAUgASgFQg2StRgJRXh0ZW5zw6NvUghleHRlbnNhbxKBAQojcXVhbnRpZGFk'
    'ZV9wcm90ZWNvZXNfaW50ZXJtZWRpYXJpYXMYBiABKAVCMZK1GClRdWFudGlkYWRlIGRlIFByb3'
    'Rlw6fDtWVzIEludGVybWVkacOhcmlhc+i1GAFSIXF1YW50aWRhZGVQcm90ZWNvZXNJbnRlcm1l'
    'ZGlhcmlhcxJrChtxdWFudGlkYWRlX3Byb3RlY29lc19wYXJhZGEYByABKAVCK5K1GCNRdWFudG'
    'lkYWRlIGRlIFByb3Rlw6fDtWVzIG5hIFBhcmFkYei1GAFSGXF1YW50aWRhZGVQcm90ZWNvZXNQ'
    'YXJhZGESSgoQcHJvdGVjb2VzX21vdmVpcxgIIAEoCUIfkrUYG1RpcG8gZGUgUHJvdGXDp8O1ZX'
    'MgTcOzdmVpc1IPcHJvdGVjb2VzTW92ZWlzEkAKDnRpcG9fYW5jb3JhZ2VtGAkgASgJQhmStRgR'
    'VGlwbyBkZSBBbmNvcmFnZW3otRgBUg10aXBvQW5jb3JhZ2VtEiYKDmNvbnF1aXN0YWRvcmVzGA'
    'ogAygJUg5jb25xdWlzdGFkb3JlcxI5Cg1kYXRhX2FiZXJ0dXJhGAsgASgJQhSStRgQRGF0YSBk'
    'ZSBBYmVydHVyYVIMZGF0YUFiZXJ0dXJhEk0KD2RhdGFfbWFudXRlbmNhbxgMIAEoCUIkkrUYHE'
    'RhdGEgZGEgw5psdGltYSBNYW51dGVuw6fDo2/otRgBUg5kYXRhTWFudXRlbmNhbxIxCglkZXNj'
    'cmljYW8YDSABKAlCE5K1GAtEZXNjcmnDp8Ojb6i1GAFSCWRlc2NyaWNhbxJHCg51cmxfdmlkZW'
    '9fYmV0YRgOIAEoCUIhkrUYFVVSTCBkbyBWw61kZW8gZG8gQmV0YZi1GALotRgBUgx1cmxWaWRl'
    'b0JldGESVQoUY2hhdmVfcGl4X21hbnV0ZW5jYW8YDyABKAlCI5K1GBtDaGF2ZSBQaXggcGFyYS'
    'BNYW51dGVuw6fDo2/otRgBUhJjaGF2ZVBpeE1hbnV0ZW5jYW9KBAgVEBY=');

@$core.Deprecated('Use boulderDescriptor instead')
const Boulder$json = {
  '1': 'Boulder',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'destaque', '3': 11, '4': 1, '5': 8, '8': {}, '10': 'destaque'},
    {
      '1': 'dificuldade',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauBoulder.GrauBoulder',
      '10': 'dificuldade'
    },
    {
      '1': 'tipo_parede',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aresta.TipoParede.TipoParede',
      '8': {},
      '10': 'tipoParede'
    },
    {'1': 'conquistadores', '3': 4, '4': 3, '5': 9, '10': 'conquistadores'},
    {
      '1': 'data_abertura',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataAbertura'
    },
    {'1': 'descricao', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'url_video_beta',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlVideoBeta'
    },
    {
      '1': 'chave_pix_manutencao',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'chavePixManutencao'
    },
  ],
  '9': [
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `Boulder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boulderDescriptor = $convert.base64Decode(
    'CgdCb3VsZGVyEhIKBG5vbWUYASABKAlSBG5vbWUSVwoIZGVzdGFxdWUYCyABKAhCO5K1GAvDiS'
    'BEZXN0YXF1Zcq1GA5Ow6NvIGluZm9ybWFkb9K1GA5TaW0gKERlc3RhcXVlKdq1GAROw6NvUghk'
    'ZXN0YXF1ZRJBCgtkaWZpY3VsZGFkZRgCIAEoDjIfLmFyZXN0YS5HcmF1Qm91bGRlci5HcmF1Qm'
    '91bGRlclILZGlmaWN1bGRhZGUSUgoLdGlwb19wYXJlZGUYAyABKA4yHS5hcmVzdGEuVGlwb1Bh'
    'cmVkZS5UaXBvUGFyZWRlQhKStRgOVGlwbyBkZSBQYXJlZGVSCnRpcG9QYXJlZGUSJgoOY29ucX'
    'Vpc3RhZG9yZXMYBCADKAlSDmNvbnF1aXN0YWRvcmVzEjkKDWRhdGFfYWJlcnR1cmEYBSABKAlC'
    'FJK1GBBEYXRhIGRlIEFiZXJ0dXJhUgxkYXRhQWJlcnR1cmESMQoJZGVzY3JpY2FvGAYgASgJQh'
    'OStRgLRGVzY3Jpw6fDo2+otRgBUglkZXNjcmljYW8SRwoOdXJsX3ZpZGVvX2JldGEYByABKAlC'
    'IZK1GBVVUkwgZG8gVsOtZGVvIGRvIEJldGGYtRgC6LUYAVIMdXJsVmlkZW9CZXRhElUKFGNoYX'
    'ZlX3BpeF9tYW51dGVuY2FvGAggASgJQiOStRgbQ2hhdmUgUGl4IHBhcmEgTWFudXRlbsOnw6Nv'
    '6LUYAVISY2hhdmVQaXhNYW51dGVuY2FvSgQIDBAN');

@$core.Deprecated('Use viaMultiplasEnfiadasDescriptor instead')
const ViaMultiplasEnfiadas$json = {
  '1': 'ViaMultiplasEnfiadas',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'destaque', '3': 25, '4': 1, '5': 8, '8': {}, '10': 'destaque'},
    {
      '1': 'dificuldade_media',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauVia.GrauVia',
      '8': {},
      '10': 'dificuldadeMedia'
    },
    {
      '1': 'dificuldade_maxima',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauVia.GrauVia',
      '8': {},
      '10': 'dificuldadeMaxima'
    },
    {
      '1': 'dificuldade_artificial',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauArtificial.GrauArtificial',
      '8': {},
      '10': 'dificuldadeArtificial'
    },
    {
      '1': 'dificuldade_artificial_em_livre',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauVia.GrauVia',
      '8': {},
      '10': 'dificuldadeArtificialEmLivre'
    },
    {
      '1': 'exposicao',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauExposicao.GrauExposicao',
      '8': {},
      '10': 'exposicao'
    },
    {
      '1': 'duracao',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.aresta.GrauDuracao.GrauDuracao',
      '8': {},
      '10': 'duracao'
    },
    {
      '1': 'numero_enfiadas',
      '3': 8,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'numeroEnfiadas'
    },
    {
      '1': 'comprimento_total',
      '3': 9,
      '4': 1,
      '5': 5,
      '10': 'comprimentoTotal'
    },
    {
      '1': 'comprimento_maior_enfiada',
      '3': 10,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'comprimentoMaiorEnfiada'
    },
    {
      '1': 'quantidade_costuras_intermediarias',
      '3': 22,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'quantidadeCosturasIntermediarias'
    },
    {
      '1': 'quantidade_equipamentos_parada',
      '3': 23,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'quantidadeEquipamentosParada'
    },
    {
      '1': 'tipo_via_multiplas_enfiadas',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.aresta.ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas',
      '10': 'tipoViaMultiplasEnfiadas'
    },
    {
      '1': 'equipamento_recomendado',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'equipamentoRecomendado'
    },
    {
      '1': 'enfiadas',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.aresta.Escalada',
      '10': 'enfiadas'
    },
    {'1': 'descricao', '3': 14, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {'1': 'conquistadores', '3': 15, '4': 3, '5': 9, '10': 'conquistadores'},
    {
      '1': 'data_abertura',
      '3': 16,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataAbertura'
    },
    {
      '1': 'data_manutencao',
      '3': 17,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataManutencao'
    },
    {
      '1': 'url_video_beta',
      '3': 18,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlVideoBeta'
    },
    {
      '1': 'chave_pix_manutencao',
      '3': 19,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'chavePixManutencao'
    },
  ],
  '4': [ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas$json],
  '9': [
    {'1': 21, '2': 22},
    {'1': 26, '2': 27},
  ],
};

@$core.Deprecated('Use viaMultiplasEnfiadasDescriptor instead')
const ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas$json = {
  '1': 'TipoViaMultiplasEnfiadas',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'TODA_FIXA', '2': 1},
    {'1': 'MISTA', '2': 2},
    {'1': 'TODA_MOVEL', '2': 3},
  ],
};

/// Descriptor for `ViaMultiplasEnfiadas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viaMultiplasEnfiadasDescriptor = $convert.base64Decode(
    'ChRWaWFNdWx0aXBsYXNFbmZpYWRhcxISCgRub21lGAEgASgJUgRub21lElcKCGRlc3RhcXVlGB'
    'kgASgIQjuStRgLw4kgRGVzdGFxdWXKtRgOTsOjbyBpbmZvcm1hZG/StRgOU2ltIChEZXN0YXF1'
    'ZSnatRgETsOjb1IIZGVzdGFxdWUSXAoRZGlmaWN1bGRhZGVfbWVkaWEYAiABKA4yFy5hcmVzdG'
    'EuR3JhdVZpYS5HcmF1VmlhQhaStRgSRGlmaWN1bGRhZGUgTcOpZGlhUhBkaWZpY3VsZGFkZU1l'
    'ZGlhEl8KEmRpZmljdWxkYWRlX21heGltYRgDIAEoDjIXLmFyZXN0YS5HcmF1VmlhLkdyYXVWaW'
    'FCF5K1GBNEaWZpY3VsZGFkZSBNw6F4aW1hUhFkaWZpY3VsZGFkZU1heGltYRJ4ChZkaWZpY3Vs'
    'ZGFkZV9hcnRpZmljaWFsGAQgASgOMiUuYXJlc3RhLkdyYXVBcnRpZmljaWFsLkdyYXVBcnRpZm'
    'ljaWFsQhqStRgWRGlmaWN1bGRhZGUgQXJ0aWZpY2lhbFIVZGlmaWN1bGRhZGVBcnRpZmljaWFs'
    'EoMBCh9kaWZpY3VsZGFkZV9hcnRpZmljaWFsX2VtX2xpdnJlGAUgASgOMhcuYXJlc3RhLkdyYX'
    'VWaWEuR3JhdVZpYUIjkrUYH0RpZmljdWxkYWRlIEFydGlmaWNpYWwgZW0gTGl2cmVSHGRpZmlj'
    'dWxkYWRlQXJ0aWZpY2lhbEVtTGl2cmUSWgoJZXhwb3NpY2FvGAYgASgOMiMuYXJlc3RhLkdyYX'
    'VFeHBvc2ljYW8uR3JhdUV4cG9zaWNhb0IXkrUYE0dyYXUgZGUgRXhwb3Npw6fDo29SCWV4cG9z'
    'aWNhbxJICgdkdXJhY2FvGAcgASgOMh8uYXJlc3RhLkdyYXVEdXJhY2FvLkdyYXVEdXJhY2FvQg'
    '2StRgJRHVyYcOnw6NvUgdkdXJhY2FvEkAKD251bWVyb19lbmZpYWRhcxgIIAEoBUIXkrUYE07D'
    'um1lcm8gZGUgRW5maWFkYXNSDm51bWVyb0VuZmlhZGFzEisKEWNvbXByaW1lbnRvX3RvdGFsGA'
    'kgASgFUhBjb21wcmltZW50b1RvdGFsEkAKGWNvbXByaW1lbnRvX21haW9yX2VuZmlhZGEYCiAB'
    'KAVCBOi1GAFSF2NvbXByaW1lbnRvTWFpb3JFbmZpYWRhEnwKInF1YW50aWRhZGVfY29zdHVyYX'
    'NfaW50ZXJtZWRpYXJpYXMYFiABKAVCLpK1GCZRdWFudGlkYWRlIGRlIENvc3R1cmFzIEludGVy'
    'bWVkacOhcmlhc+i1GAFSIHF1YW50aWRhZGVDb3N0dXJhc0ludGVybWVkaWFyaWFzEnQKHnF1YW'
    '50aWRhZGVfZXF1aXBhbWVudG9zX3BhcmFkYRgXIAEoBUIukrUYJlF1YW50aWRhZGUgZGUgRXF1'
    'aXBhbWVudG9zIHBhcmEgUGFyYWRh6LUYAVIccXVhbnRpZGFkZUVxdWlwYW1lbnRvc1BhcmFkYR'
    'J0Cht0aXBvX3ZpYV9tdWx0aXBsYXNfZW5maWFkYXMYCyABKA4yNS5hcmVzdGEuVmlhTXVsdGlw'
    'bGFzRW5maWFkYXMuVGlwb1ZpYU11bHRpcGxhc0VuZmlhZGFzUhh0aXBvVmlhTXVsdGlwbGFzRW'
    '5maWFkYXMSPQoXZXF1aXBhbWVudG9fcmVjb21lbmRhZG8YDCABKAlCBOi1GAFSFmVxdWlwYW1l'
    'bnRvUmVjb21lbmRhZG8SLAoIZW5maWFkYXMYDSADKAsyEC5hcmVzdGEuRXNjYWxhZGFSCGVuZm'
    'lhZGFzEjEKCWRlc2NyaWNhbxgOIAEoCUITkrUYC0Rlc2NyacOnw6NvqLUYAVIJZGVzY3JpY2Fv'
    'EiYKDmNvbnF1aXN0YWRvcmVzGA8gAygJUg5jb25xdWlzdGFkb3JlcxI5Cg1kYXRhX2FiZXJ0dX'
    'JhGBAgASgJQhSStRgQRGF0YSBkZSBBYmVydHVyYVIMZGF0YUFiZXJ0dXJhEk0KD2RhdGFfbWFu'
    'dXRlbmNhbxgRIAEoCUIkkrUYHERhdGEgZGEgw5psdGltYSBNYW51dGVuw6fDo2/otRgBUg5kYX'
    'RhTWFudXRlbmNhbxJHCg51cmxfdmlkZW9fYmV0YRgSIAEoCUIhkrUYFVVSTCBkbyBWw61kZW8g'
    'ZG8gQmV0YZi1GALotRgBUgx1cmxWaWRlb0JldGESVQoUY2hhdmVfcGl4X21hbnV0ZW5jYW8YEy'
    'ABKAlCI5K1GBtDaGF2ZSBQaXggcGFyYSBNYW51dGVuw6fDo2/otRgBUhJjaGF2ZVBpeE1hbnV0'
    'ZW5jYW8iVAoYVGlwb1ZpYU11bHRpcGxhc0VuZmlhZGFzEg4KCklOREVGSU5JRE8QABINCglUT0'
    'RBX0ZJWEEQARIJCgVNSVNUQRACEg4KClRPREFfTU9WRUwQA0oECBUQFkoECBoQGw==');

@$core.Deprecated('Use highlineDescriptor instead')
const Highline$json = {
  '1': 'Highline',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'destaque', '3': 15, '4': 1, '5': 8, '8': {}, '10': 'destaque'},
    {'1': 'distancia', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'distancia'},
    {'1': 'altura', '3': 3, '4': 1, '5': 5, '10': 'altura'},
    {'1': 'exposicao', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'exposicao'},
    {'1': 'conquistadores', '3': 5, '4': 3, '5': 9, '10': 'conquistadores'},
    {
      '1': 'data_abertura',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataAbertura'
    },
    {
      '1': 'data_manutencao',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'dataManutencao'
    },
    {
      '1': 'descricao_acesso',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'descricaoAcesso'
    },
    {
      '1': 'descricao_ancoragem',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'descricaoAncoragem'
    },
    {'1': 'descricao', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'url_video_beta',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'urlVideoBeta'
    },
    {
      '1': 'chave_pix_manutencao',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'chavePixManutencao'
    },
  ],
  '9': [
    {'1': 16, '2': 17},
  ],
};

/// Descriptor for `Highline`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List highlineDescriptor = $convert.base64Decode(
    'CghIaWdobGluZRISCgRub21lGAEgASgJUgRub21lElcKCGRlc3RhcXVlGA8gASgIQjuStRgLw4'
    'kgRGVzdGFxdWXKtRgOTsOjbyBpbmZvcm1hZG/StRgOU2ltIChEZXN0YXF1ZSnatRgETsOjb1II'
    'ZGVzdGFxdWUSLAoJZGlzdGFuY2lhGAIgASgFQg6StRgKRGlzdMOibmNpYVIJZGlzdGFuY2lhEh'
    'YKBmFsdHVyYRgDIAEoBVIGYWx0dXJhEjEKCWV4cG9zaWNhbxgEIAEoBUITkrUYC0V4cG9zacOn'
    'w6Nv6LUYAVIJZXhwb3NpY2FvEiYKDmNvbnF1aXN0YWRvcmVzGAUgAygJUg5jb25xdWlzdGFkb3'
    'JlcxI5Cg1kYXRhX2FiZXJ0dXJhGAYgASgJQhSStRgQRGF0YSBkZSBBYmVydHVyYVIMZGF0YUFi'
    'ZXJ0dXJhEk0KD2RhdGFfbWFudXRlbmNhbxgHIAEoCUIkkrUYHERhdGEgZGEgw5psdGltYSBNYW'
    '51dGVuw6fDo2/otRgBUg5kYXRhTWFudXRlbmNhbxJIChBkZXNjcmljYW9fYWNlc3NvGAggASgJ'
    'Qh2StRgVRGVzY3Jpw6fDo28gZG8gQWNlc3Nv6LUYAVIPZGVzY3JpY2FvQWNlc3NvElEKE2Rlc2'
    'NyaWNhb19hbmNvcmFnZW0YCSABKAlCIJK1GBhEZXNjcmnDp8OjbyBkYSBBbmNvcmFnZW3otRgB'
    'UhJkZXNjcmljYW9BbmNvcmFnZW0SMQoJZGVzY3JpY2FvGAogASgJQhOStRgLRGVzY3Jpw6fDo2'
    '+otRgBUglkZXNjcmljYW8SRwoOdXJsX3ZpZGVvX2JldGEYCyABKAlCIZK1GBVVUkwgZG8gVsOt'
    'ZGVvIGRvIEJldGGYtRgC6LUYAVIMdXJsVmlkZW9CZXRhElUKFGNoYXZlX3BpeF9tYW51dGVuY2'
    'FvGAwgASgJQiOStRgbQ2hhdmUgUGl4IHBhcmEgTWFudXRlbsOnw6Nv6LUYAVISY2hhdmVQaXhN'
    'YW51dGVuY2FvSgQIEBAR');

@$core.Deprecated('Use patrocinadorDescriptor instead')
const Patrocinador$json = {
  '1': 'Patrocinador',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'mensagem', '3': 2, '4': 1, '5': 9, '10': 'mensagem'},
    {'1': 'url_logo', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'urlLogo'},
    {'1': 'url_link', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'urlLink'},
  ],
  '7': {},
};

/// Descriptor for `Patrocinador`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patrocinadorDescriptor = $convert.base64Decode(
    'CgxQYXRyb2NpbmFkb3ISEgoEbm9tZRgBIAEoCVIEbm9tZRIaCghtZW5zYWdlbRgCIAEoCVIIbW'
    'Vuc2FnZW0SKgoIdXJsX2xvZ28YAyABKAlCD5K1GAtVUkwgZGEgTG9nb1IHdXJsTG9nbxIqCgh1'
    'cmxfbGluaxgEIAEoCUIPkrUYC1VSTCBkbyBMaW5rUgd1cmxMaW5rOgSQtRgC');

@$core.Deprecated('Use trilhaDescriptor instead')
const Trilha$json = {
  '1': 'Trilha',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'descricao', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'tempo_aproximacao',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'tempoAproximacao'
    },
    {
      '1': 'pontos',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.aresta.PontoDeInteresse',
      '10': 'pontos'
    },
  ],
};

/// Descriptor for `Trilha`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trilhaDescriptor = $convert.base64Decode(
    'CgZUcmlsaGESEgoEbm9tZRgBIAEoCVIEbm9tZRIxCglkZXNjcmljYW8YAiABKAlCE5K1GAtEZX'
    'NjcmnDp8Ojb6i1GAFSCWRlc2NyaWNhbxJMChF0ZW1wb19hcHJveGltYWNhbxgDIAEoCUIfkrUY'
    'G1RlbXBvIEVzdGltYWRvIGRlIENhbWluaGFkYVIQdGVtcG9BcHJveGltYWNhbxIwCgZwb250b3'
    'MYBCADKAsyGC5hcmVzdGEuUG9udG9EZUludGVyZXNzZVIGcG9udG9z');

@$core.Deprecated('Use pontoDeInteresseDescriptor instead')
const PontoDeInteresse$json = {
  '1': 'PontoDeInteresse',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'descricao', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'descricao'},
    {
      '1': 'localizacao',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aresta.Coordenada',
      '8': {},
      '10': 'localizacao'
    },
  ],
  '7': {},
};

/// Descriptor for `PontoDeInteresse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pontoDeInteresseDescriptor = $convert.base64Decode(
    'ChBQb250b0RlSW50ZXJlc3NlEhIKBG5vbWUYASABKAlSBG5vbWUSMQoJZGVzY3JpY2FvGAIgAS'
    'gJQhOStRgLRGVzY3Jpw6fDo2+otRgBUglkZXNjcmljYW8SRwoLbG9jYWxpemFjYW8YAyABKAsy'
    'Ei5hcmVzdGEuQ29vcmRlbmFkYUIRkrUYDUxvY2FsaXphw6fDo29SC2xvY2FsaXphY2FvOgSQtR'
    'gC');

@$core.Deprecated('Use coordenadaDescriptor instead')
const Coordenada$json = {
  '1': 'Coordenada',
  '2': [
    {'1': 'latitude', '3': 1, '4': 1, '5': 17, '8': {}, '10': 'latitude'},
    {'1': 'longitude', '3': 2, '4': 1, '5': 17, '8': {}, '10': 'longitude'},
  ],
  '7': {},
};

/// Descriptor for `Coordenada`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coordenadaDescriptor = $convert.base64Decode(
    'CgpDb29yZGVuYWRhEiwKCGxhdGl0dWRlGAEgASgRQhCStRgITGF0aXR1ZGWwtRgGUghsYXRpdH'
    'VkZRIvCglsb25naXR1ZGUYAiABKBFCEZK1GAlMb25naXR1ZGWwtRgHUglsb25naXR1ZGU6BJC1'
    'GAc=');

@$core.Deprecated('Use tipoParedeDescriptor instead')
const TipoParede$json = {
  '1': 'TipoParede',
  '4': [TipoParede_TipoParede$json],
  '7': {},
};

@$core.Deprecated('Use tipoParedeDescriptor instead')
const TipoParede_TipoParede$json = {
  '1': 'TipoParede',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'POSITIVO', '2': 1},
    {'1': 'VERTICAL', '2': 2},
    {'1': 'NEGATIVO', '2': 3},
  ],
};

/// Descriptor for `TipoParede`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tipoParedeDescriptor = $convert.base64Decode(
    'CgpUaXBvUGFyZWRlIkYKClRpcG9QYXJlZGUSDgoKSU5ERUZJTklETxAAEgwKCFBPU0lUSVZPEA'
    'ESDAoIVkVSVElDQUwQAhIMCghORUdBVElWTxADOgSQtRgC');

@$core.Deprecated('Use grauViaDescriptor instead')
const GrauVia$json = {
  '1': 'GrauVia',
  '4': [GrauVia_GrauVia$json],
  '7': {},
};

@$core.Deprecated('Use grauViaDescriptor instead')
const GrauVia_GrauVia$json = {
  '1': 'GrauVia',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'PROJETO', '2': 1},
    {'1': 'BR_1', '2': 2},
    {'1': 'BR_1_BARRA_1SUP', '2': 35},
    {'1': 'BR_1SUP', '2': 3},
    {'1': 'FR_1', '2': 3},
    {'1': 'US_5_0', '2': 3},
    {'1': 'BR_1SUP_BARRA_2', '2': 36},
    {'1': 'BR_2', '2': 4},
    {'1': 'FR_2A', '2': 4},
    {'1': 'US_5_2', '2': 4},
    {'1': 'BR_2_BARRA_2SUP', '2': 37},
    {'1': 'BR_2SUP', '2': 5},
    {'1': 'FR_2C', '2': 5},
    {'1': 'US_5_3', '2': 5},
    {'1': 'BR_2SUP_BARRA_3', '2': 38},
    {'1': 'BR_3', '2': 6},
    {'1': 'FR_3B', '2': 6},
    {'1': 'US_5_5', '2': 6},
    {'1': 'BR_3_BARRA_3SUP', '2': 39},
    {'1': 'BR_3SUP', '2': 7},
    {'1': 'FR_4A', '2': 7},
    {'1': 'US_5_6', '2': 7},
    {'1': 'BR_3SUP_BARRA_4', '2': 40},
    {'1': 'BR_4', '2': 8},
    {'1': 'FR_4B_MAIS', '2': 8},
    {'1': 'US_5_7', '2': 8},
    {'1': 'BR_4_BARRA_4SUP', '2': 41},
    {'1': 'BR_4SUP', '2': 9},
    {'1': 'FR_5A_MAIS', '2': 9},
    {'1': 'US_5_9', '2': 9},
    {'1': 'BR_4SUP_BARRA_5', '2': 42},
    {'1': 'BR_5', '2': 10},
    {'1': 'FR_5C', '2': 10},
    {'1': 'US_5_10A', '2': 10},
    {'1': 'BR_5_BARRA_5SUP', '2': 43},
    {'1': 'BR_5SUP', '2': 11},
    {'1': 'FR_6A_MAIS', '2': 11},
    {'1': 'US_5_10B', '2': 11},
    {'1': 'BR_5SUP_BARRA_6', '2': 44},
    {'1': 'BR_6', '2': 12},
    {'1': 'FR_6B', '2': 12},
    {'1': 'US_5_10C', '2': 12},
    {'1': 'BR_6_BARRA_6SUP', '2': 45},
    {'1': 'BR_6SUP', '2': 13},
    {'1': 'FR_6B_MAIS', '2': 13},
    {'1': 'US_5_10D', '2': 13},
    {'1': 'BR_6SUP_BARRA_7A', '2': 46},
    {'1': 'BR_7A', '2': 14},
    {'1': 'FR_6C', '2': 14},
    {'1': 'US_5_11A', '2': 14},
    {'1': 'BR_7A_BARRA_7B', '2': 47},
    {'1': 'BR_7B', '2': 17},
    {'1': 'FR_6C_MAIS', '2': 17},
    {'1': 'US_5_11c', '2': 17},
    {'1': 'BR_7B_BARRA_7C', '2': 48},
    {'1': 'BR_7C', '2': 18},
    {'1': 'FR_7A', '2': 18},
    {'1': 'US_5_11D', '2': 18},
    {'1': 'BR_7C_BARRA_8A', '2': 49},
    {'1': 'BR_8A', '2': 19},
    {'1': 'FR_7A_MAIS', '2': 19},
    {'1': 'US_5_12A', '2': 19},
    {'1': 'BR_8A_BARRA_8B', '2': 50},
    {'1': 'BR_8B', '2': 20},
    {'1': 'FR_7B', '2': 20},
    {'1': 'US_5_12B', '2': 20},
    {'1': 'BR_8B_BARRA_8C', '2': 51},
    {'1': 'BR_8C', '2': 21},
    {'1': 'FR_7B_MAIS', '2': 21},
    {'1': 'US_5_12C', '2': 21},
    {'1': 'BR_8C_BARRA_9A', '2': 52},
    {'1': 'BR_9A', '2': 22},
    {'1': 'FR_7C', '2': 22},
    {'1': 'US_5_12D', '2': 22},
    {'1': 'BR_9A_BARRA_9B', '2': 53},
    {'1': 'BR_9B', '2': 23},
    {'1': 'FR_7C_MAIS', '2': 23},
    {'1': 'US_5_13A', '2': 23},
    {'1': 'BR_9B_BARRA_9C', '2': 54},
    {'1': 'BR_9C', '2': 24},
    {'1': 'FR_8A', '2': 24},
    {'1': 'US_5_13B', '2': 24},
    {'1': 'BR_9C_BARRA_10A', '2': 55},
    {'1': 'BR_10A', '2': 25},
    {'1': 'FR_8A_MAIS', '2': 25},
    {'1': 'US_5_13C', '2': 25},
    {'1': 'BR_10A_BARRA_10B', '2': 56},
    {'1': 'BR_10B', '2': 26},
    {'1': 'FR_8B', '2': 26},
    {'1': 'US_5_13D', '2': 26},
    {'1': 'BR_10B_BARRA_10C', '2': 57},
    {'1': 'BR_10C', '2': 27},
    {'1': 'FR_8B_MAIS', '2': 27},
    {'1': 'US_5_14A', '2': 27},
    {'1': 'BR_10C_BARRA_11A', '2': 58},
    {'1': 'BR_11A', '2': 28},
    {'1': 'FR_8C', '2': 28},
    {'1': 'US_5_14B', '2': 28},
    {'1': 'BR_11A_BARRA_11B', '2': 59},
    {'1': 'BR_11B', '2': 29},
    {'1': 'FR_8C_MAIS', '2': 29},
    {'1': 'US_5_14C', '2': 29},
    {'1': 'BR_11B_BARRA_11C', '2': 60},
    {'1': 'BR_11C', '2': 30},
    {'1': 'FR_9A', '2': 30},
    {'1': 'US_5_14D', '2': 30},
    {'1': 'BR_11C_BARRA_12A', '2': 61},
    {'1': 'BR_12A', '2': 31},
    {'1': 'FR_9A_MAIS', '2': 31},
    {'1': 'US_5_15A', '2': 31},
    {'1': 'BR_12A_BARRA_12B', '2': 62},
    {'1': 'BR_12B', '2': 32},
    {'1': 'FR_9B', '2': 32},
    {'1': 'US_5_15B', '2': 32},
    {'1': 'BR_12B_BARRA_12C', '2': 63},
    {'1': 'BR_12C', '2': 33},
    {'1': 'FR_9B_MAIS', '2': 33},
    {'1': 'US_5_15C', '2': 33},
    {'1': 'BR_12C_BARRA_13A', '2': 64},
    {'1': 'BR_13A', '2': 34},
    {'1': 'FR_9C', '2': 34},
    {'1': 'US_5_15D', '2': 34},
  ],
  '3': {'2': true},
};

/// Descriptor for `GrauVia`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grauViaDescriptor = $convert.base64Decode(
    'CgdHcmF1VmlhIqcOCgdHcmF1VmlhEg4KCklOREVGSU5JRE8QABILCgdQUk9KRVRPEAESCAoEQl'
    'JfMRACEhMKD0JSXzFfQkFSUkFfMVNVUBAjEgsKB0JSXzFTVVAQAxIICgRGUl8xEAMSCgoGVVNf'
    'NV8wEAMSEwoPQlJfMVNVUF9CQVJSQV8yECQSCAoEQlJfMhAEEgkKBUZSXzJBEAQSCgoGVVNfNV'
    '8yEAQSEwoPQlJfMl9CQVJSQV8yU1VQECUSCwoHQlJfMlNVUBAFEgkKBUZSXzJDEAUSCgoGVVNf'
    'NV8zEAUSEwoPQlJfMlNVUF9CQVJSQV8zECYSCAoEQlJfMxAGEgkKBUZSXzNCEAYSCgoGVVNfNV'
    '81EAYSEwoPQlJfM19CQVJSQV8zU1VQECcSCwoHQlJfM1NVUBAHEgkKBUZSXzRBEAcSCgoGVVNf'
    'NV82EAcSEwoPQlJfM1NVUF9CQVJSQV80ECgSCAoEQlJfNBAIEg4KCkZSXzRCX01BSVMQCBIKCg'
    'ZVU181XzcQCBITCg9CUl80X0JBUlJBXzRTVVAQKRILCgdCUl80U1VQEAkSDgoKRlJfNUFfTUFJ'
    'UxAJEgoKBlVTXzVfORAJEhMKD0JSXzRTVVBfQkFSUkFfNRAqEggKBEJSXzUQChIJCgVGUl81Qx'
    'AKEgwKCFVTXzVfMTBBEAoSEwoPQlJfNV9CQVJSQV81U1VQECsSCwoHQlJfNVNVUBALEg4KCkZS'
    'XzZBX01BSVMQCxIMCghVU181XzEwQhALEhMKD0JSXzVTVVBfQkFSUkFfNhAsEggKBEJSXzYQDB'
    'IJCgVGUl82QhAMEgwKCFVTXzVfMTBDEAwSEwoPQlJfNl9CQVJSQV82U1VQEC0SCwoHQlJfNlNV'
    'UBANEg4KCkZSXzZCX01BSVMQDRIMCghVU181XzEwRBANEhQKEEJSXzZTVVBfQkFSUkFfN0EQLh'
    'IJCgVCUl83QRAOEgkKBUZSXzZDEA4SDAoIVVNfNV8xMUEQDhISCg5CUl83QV9CQVJSQV83QhAv'
    'EgkKBUJSXzdCEBESDgoKRlJfNkNfTUFJUxAREgwKCFVTXzVfMTFjEBESEgoOQlJfN0JfQkFSUk'
    'FfN0MQMBIJCgVCUl83QxASEgkKBUZSXzdBEBISDAoIVVNfNV8xMUQQEhISCg5CUl83Q19CQVJS'
    'QV84QRAxEgkKBUJSXzhBEBMSDgoKRlJfN0FfTUFJUxATEgwKCFVTXzVfMTJBEBMSEgoOQlJfOE'
    'FfQkFSUkFfOEIQMhIJCgVCUl84QhAUEgkKBUZSXzdCEBQSDAoIVVNfNV8xMkIQFBISCg5CUl84'
    'Ql9CQVJSQV84QxAzEgkKBUJSXzhDEBUSDgoKRlJfN0JfTUFJUxAVEgwKCFVTXzVfMTJDEBUSEg'
    'oOQlJfOENfQkFSUkFfOUEQNBIJCgVCUl85QRAWEgkKBUZSXzdDEBYSDAoIVVNfNV8xMkQQFhIS'
    'Cg5CUl85QV9CQVJSQV85QhA1EgkKBUJSXzlCEBcSDgoKRlJfN0NfTUFJUxAXEgwKCFVTXzVfMT'
    'NBEBcSEgoOQlJfOUJfQkFSUkFfOUMQNhIJCgVCUl85QxAYEgkKBUZSXzhBEBgSDAoIVVNfNV8x'
    'M0IQGBITCg9CUl85Q19CQVJSQV8xMEEQNxIKCgZCUl8xMEEQGRIOCgpGUl84QV9NQUlTEBkSDA'
    'oIVVNfNV8xM0MQGRIUChBCUl8xMEFfQkFSUkFfMTBCEDgSCgoGQlJfMTBCEBoSCQoFRlJfOEIQ'
    'GhIMCghVU181XzEzRBAaEhQKEEJSXzEwQl9CQVJSQV8xMEMQORIKCgZCUl8xMEMQGxIOCgpGUl'
    '84Ql9NQUlTEBsSDAoIVVNfNV8xNEEQGxIUChBCUl8xMENfQkFSUkFfMTFBEDoSCgoGQlJfMTFB'
    'EBwSCQoFRlJfOEMQHBIMCghVU181XzE0QhAcEhQKEEJSXzExQV9CQVJSQV8xMUIQOxIKCgZCUl'
    '8xMUIQHRIOCgpGUl84Q19NQUlTEB0SDAoIVVNfNV8xNEMQHRIUChBCUl8xMUJfQkFSUkFfMTFD'
    'EDwSCgoGQlJfMTFDEB4SCQoFRlJfOUEQHhIMCghVU181XzE0RBAeEhQKEEJSXzExQ19CQVJSQV'
    '8xMkEQPRIKCgZCUl8xMkEQHxIOCgpGUl85QV9NQUlTEB8SDAoIVVNfNV8xNUEQHxIUChBCUl8x'
    'MkFfQkFSUkFfMTJCED4SCgoGQlJfMTJCECASCQoFRlJfOUIQIBIMCghVU181XzE1QhAgEhQKEE'
    'JSXzEyQl9CQVJSQV8xMkMQPxIKCgZCUl8xMkMQIRIOCgpGUl85Ql9NQUlTECESDAoIVVNfNV8x'
    'NUMQIRIUChBCUl8xMkNfQkFSUkFfMTNBEEASCgoGQlJfMTNBECISCQoFRlJfOUMQIhIMCghVU1'
    '81XzE1RBAiGgIQAToEkLUYAg==');

@$core.Deprecated('Use grauBoulderDescriptor instead')
const GrauBoulder$json = {
  '1': 'GrauBoulder',
  '4': [GrauBoulder_GrauBoulder$json],
  '7': {},
};

@$core.Deprecated('Use grauBoulderDescriptor instead')
const GrauBoulder_GrauBoulder$json = {
  '1': 'GrauBoulder',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'VB', '2': 1},
    {'1': 'VB_BARRA_V0', '2': 20},
    {'1': 'V0', '2': 2},
    {'1': 'V0_BARRA_V1', '2': 21},
    {'1': 'V1', '2': 3},
    {'1': 'V1_BARRA_V2', '2': 22},
    {'1': 'V2', '2': 4},
    {'1': 'V2_BARRA_V3', '2': 23},
    {'1': 'V3', '2': 5},
    {'1': 'V3_BARRA_V4', '2': 24},
    {'1': 'V4', '2': 6},
    {'1': 'V4_BARRA_V5', '2': 25},
    {'1': 'V5', '2': 7},
    {'1': 'V5_BARRA_V6', '2': 26},
    {'1': 'V6', '2': 8},
    {'1': 'V6_BARRA_V7', '2': 27},
    {'1': 'V7', '2': 9},
    {'1': 'V7_BARRA_V8', '2': 28},
    {'1': 'V8', '2': 10},
    {'1': 'V8_BARRA_V9', '2': 29},
    {'1': 'V9', '2': 11},
    {'1': 'V9_BARRA_V10', '2': 30},
    {'1': 'V10', '2': 12},
    {'1': 'V10_BARRA_V11', '2': 31},
    {'1': 'V11', '2': 13},
    {'1': 'V11_BARRA_V12', '2': 32},
    {'1': 'V12', '2': 14},
    {'1': 'V12_BARRA_V13', '2': 33},
    {'1': 'V13', '2': 15},
    {'1': 'V13_BARRA_V14', '2': 34},
    {'1': 'V14', '2': 16},
    {'1': 'V14_BARRA_V15', '2': 35},
    {'1': 'V15', '2': 17},
    {'1': 'V15_BARRA_V16', '2': 36},
    {'1': 'V16', '2': 18},
    {'1': 'V16_BARRA_V17', '2': 37},
    {'1': 'V17', '2': 19},
  ],
};

/// Descriptor for `GrauBoulder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grauBoulderDescriptor = $convert.base64Decode(
    'CgtHcmF1Qm91bGRlciL+AwoLR3JhdUJvdWxkZXISDgoKSU5ERUZJTklETxAAEgYKAlZCEAESDw'
    'oLVkJfQkFSUkFfVjAQFBIGCgJWMBACEg8KC1YwX0JBUlJBX1YxEBUSBgoCVjEQAxIPCgtWMV9C'
    'QVJSQV9WMhAWEgYKAlYyEAQSDwoLVjJfQkFSUkFfVjMQFxIGCgJWMxAFEg8KC1YzX0JBUlJBX1'
    'Y0EBgSBgoCVjQQBhIPCgtWNF9CQVJSQV9WNRAZEgYKAlY1EAcSDwoLVjVfQkFSUkFfVjYQGhIG'
    'CgJWNhAIEg8KC1Y2X0JBUlJBX1Y3EBsSBgoCVjcQCRIPCgtWN19CQVJSQV9WOBAcEgYKAlY4EA'
    'oSDwoLVjhfQkFSUkFfVjkQHRIGCgJWORALEhAKDFY5X0JBUlJBX1YxMBAeEgcKA1YxMBAMEhEK'
    'DVYxMF9CQVJSQV9WMTEQHxIHCgNWMTEQDRIRCg1WMTFfQkFSUkFfVjEyECASBwoDVjEyEA4SEQ'
    'oNVjEyX0JBUlJBX1YxMxAhEgcKA1YxMxAPEhEKDVYxM19CQVJSQV9WMTQQIhIHCgNWMTQQEBIR'
    'Cg1WMTRfQkFSUkFfVjE1ECMSBwoDVjE1EBESEQoNVjE1X0JBUlJBX1YxNhAkEgcKA1YxNhASEh'
    'EKDVYxNl9CQVJSQV9WMTcQJRIHCgNWMTcQEzoEkLUYAg==');

@$core.Deprecated('Use grauArtificialDescriptor instead')
const GrauArtificial$json = {
  '1': 'GrauArtificial',
  '4': [GrauArtificial_GrauArtificial$json],
  '7': {},
};

@$core.Deprecated('Use grauArtificialDescriptor instead')
const GrauArtificial_GrauArtificial$json = {
  '1': 'GrauArtificial',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'A0', '2': 1},
    {'1': 'A0_MAIS', '2': 2},
    {'1': 'A1', '2': 3},
    {'1': 'A1_MAIS', '2': 4},
    {'1': 'A2', '2': 5},
    {'1': 'A2_MAIS', '2': 6},
    {'1': 'A3', '2': 7},
    {'1': 'A3_MAIS', '2': 8},
    {'1': 'A4', '2': 9},
    {'1': 'A4_MAIS', '2': 10},
    {'1': 'A5', '2': 11},
    {'1': 'A5_MAIS', '2': 12},
  ],
};

/// Descriptor for `GrauArtificial`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grauArtificialDescriptor = $convert.base64Decode(
    'Cg5HcmF1QXJ0aWZpY2lhbCKeAQoOR3JhdUFydGlmaWNpYWwSDgoKSU5ERUZJTklETxAAEgYKAk'
    'EwEAESCwoHQTBfTUFJUxACEgYKAkExEAMSCwoHQTFfTUFJUxAEEgYKAkEyEAUSCwoHQTJfTUFJ'
    'UxAGEgYKAkEzEAcSCwoHQTNfTUFJUxAIEgYKAkE0EAkSCwoHQTRfTUFJUxAKEgYKAkE1EAsSCw'
    'oHQTVfTUFJUxAMOgSQtRgC');

@$core.Deprecated('Use grauDuracaoDescriptor instead')
const GrauDuracao$json = {
  '1': 'GrauDuracao',
  '4': [GrauDuracao_GrauDuracao$json],
  '7': {},
};

@$core.Deprecated('Use grauDuracaoDescriptor instead')
const GrauDuracao_GrauDuracao$json = {
  '1': 'GrauDuracao',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'D1', '2': 1},
    {'1': 'D2', '2': 2},
    {'1': 'D3', '2': 3},
    {'1': 'D4', '2': 4},
    {'1': 'D5', '2': 5},
    {'1': 'D6', '2': 6},
    {'1': 'D7', '2': 7},
  ],
};

/// Descriptor for `GrauDuracao`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grauDuracaoDescriptor = $convert.base64Decode(
    'CgtHcmF1RHVyYWNhbyJVCgtHcmF1RHVyYWNhbxIOCgpJTkRFRklOSURPEAASBgoCRDEQARIGCg'
    'JEMhACEgYKAkQzEAMSBgoCRDQQBBIGCgJENRAFEgYKAkQ2EAYSBgoCRDcQBzoEkLUYAg==');

@$core.Deprecated('Use grauExposicaoDescriptor instead')
const GrauExposicao$json = {
  '1': 'GrauExposicao',
  '4': [GrauExposicao_GrauExposicao$json],
  '7': {},
};

@$core.Deprecated('Use grauExposicaoDescriptor instead')
const GrauExposicao_GrauExposicao$json = {
  '1': 'GrauExposicao',
  '2': [
    {'1': 'INDEFINIDO', '2': 0},
    {'1': 'E1', '2': 1},
    {'1': 'E2', '2': 2},
    {'1': 'E3', '2': 3},
    {'1': 'E4', '2': 4},
    {'1': 'E5', '2': 5},
  ],
};

/// Descriptor for `GrauExposicao`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grauExposicaoDescriptor = $convert.base64Decode(
    'Cg1HcmF1RXhwb3NpY2FvIkcKDUdyYXVFeHBvc2ljYW8SDgoKSU5ERUZJTklETxAAEgYKAkUxEA'
    'ESBgoCRTIQAhIGCgJFMxADEgYKAkU0EAQSBgoCRTUQBToEkLUYAg==');
