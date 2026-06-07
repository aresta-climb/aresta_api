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
  ],
};

/// Descriptor for `CampoFormatoUi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List campoFormatoUiDescriptor = $convert.base64Decode(
    'Cg5DYW1wb0Zvcm1hdG9VaSJhCgRFbnVtEg4KCklOREVGSU5JRE8QABIKCgZJTkxJTkUQARINCg'
    'lJTlZJU0lWRUwQAhIPCgtURVhUT19DVVJUTxADEg8KC1RFWFRPX0xPTkdPEAQSDAoITUFSS0RP'
    'V04QBQ==');

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
  ],
};

/// Descriptor for `MensagemFormatoUi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mensagemFormatoUiDescriptor = $convert.base64Decode(
    'ChFNZW5zYWdlbUZvcm1hdG9VaSJeCgRFbnVtEg4KCklOREVGSU5JRE8QABIMCghTRVBBUkFETx'
    'ABEgoKBklOTElORRACEgkKBU9ORU9GEAMSDQoJSU5WSVNJVkVMEAQSEgoOT05FT0ZfQ09OVEVV'
    'RE8QBQ==');

@$core.Deprecated('Use croquiDescriptor instead')
const Croqui$json = {
  '1': 'Croqui',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
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
      '10': 'revisadoManualmente'
    },
    {
      '1': 'revisado_bounding_circle',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'revisadoBoundingCircle'
    },
    {
      '1': 'status_desenho_extraivel',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.aresta.Croqui.StatusDesenhoExtraivel.Enum',
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
    'CgZDcm9xdWkSDgoCaWQYASABKAlSAmlkEhgKBG5vbWUYAiABKAlCBMC1GAFSBG5vbWUSMQoJZG'
    'VzY3JpY2FvGAMgASgJQhOStRgLRGVzY3Jpw6fDo2+wtRgEUglkZXNjcmljYW8SKQoIY3JlZGl0'
    'b3MYBCADKAlCDZK1GAlDcsOpZGl0b3NSCGNyZWRpdG9zEjIKBmJvdG9lcxgOIAMoCzINLmFyZX'
    'N0YS5Cb3Rhb0ILkrUYB0JvdMO1ZXNSBmJvdG9lcxIiCgVwaWNvcxgGIAMoCzIMLmFyZXN0YS5Q'
    'aWNvUgVwaWNvcxJJChFhcnF1aXZvc19leHRlcm5vcxgHIAMoCzIWLmFyZXN0YS5BcnF1aXZvRX'
    'h0ZXJub0IEsLUYAlIQYXJxdWl2b3NFeHRlcm5vcxI/ChFjYW1pbmhvX3RodW1ibmFpbBgIIAEo'
    'CUISirUYCmltYWdlL3dlYnCYtRgCUhBjYW1pbmhvVGh1bWJuYWlsEjEKFHJldmlzYWRvX21hbn'
    'VhbG1lbnRlGAkgASgIUhNyZXZpc2Fkb01hbnVhbG1lbnRlEjgKGHJldmlzYWRvX2JvdW5kaW5n'
    'X2NpcmNsZRgLIAEoCFIWcmV2aXNhZG9Cb3VuZGluZ0NpcmNsZRJkChhzdGF0dXNfZGVzZW5ob1'
    '9leHRyYWl2ZWwYDSABKA4yKi5hcmVzdGEuQ3JvcXVpLlN0YXR1c0Rlc2VuaG9FeHRyYWl2ZWwu'
    'RW51bVIWc3RhdHVzRGVzZW5ob0V4dHJhaXZlbBItCg91bHRpbWFfbWlncmFjYW8YDyABKAVCBL'
    'C1GAJSDnVsdGltYU1pZ3JhY2FvEjwKD3B1YmxpY2FyX2Nyb3F1aRgQIAEoCEITkrUYD1B1Ymxp'
    'Y2FyIENyb3F1aVIOcHVibGljYXJDcm9xdWka1AEKFlN0YXR1c0Rlc2VuaG9FeHRyYWl2ZWwiuQ'
    'EKBEVudW0SDgoKSU5ERUZJTklETxAAEikKD05BT19URU1fREVTRU5ITxABGhSKtRgQTsOjbyB0'
    'ZW0gZGVzZW5obxJJChxURU1fREVTRU5IT19NQVNfTkFPX0VYVFJBSURPEAIaJ4q1GCNUZW0gZG'
    'VzZW5obywgbWFzIG7Do28gZm9pIGV4dHJhw61kbxIrChBERVNFTkhPX0VYVFJBSURPEAMaFYq1'
    'GBFEZXNlbmhvIGV4dHJhw61kb0oECAUQBkoECAoQC0oECAwQDQ==');

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
    'Fya2Rvd25IAFIMc2VjYW9UZXh0dWFsOgSQtRgDQgkKB2Rlc3Rpbm8=');

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
  ],
};

/// Descriptor for `MetadadosArquivoNoEditor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadadosArquivoNoEditorDescriptor =
    $convert.base64Decode(
        'ChhNZXRhZGFkb3NBcnF1aXZvTm9FZGl0b3ISKQoQY2FtaW5ob19vcmlnaW5hbBgBIAEoCVIPY2'
        'FtaW5ob09yaWdpbmFsEiEKDGNhbWluaG9fbm92bxgCIAEoCVILY2FtaW5ob05vdm8=');

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
    {'1': 'nome_associacao', '3': 6, '4': 1, '5': 9, '10': 'nomeAssociacao'},
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
  ],
  '7': {},
  '9': [
    {'1': 10, '2': 11},
  ],
};

/// Descriptor for `Pico`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List picoDescriptor = $convert.base64Decode(
    'CgRQaWNvEhgKBG5vbWUYASABKAlCBMC1GAFSBG5vbWUSIgoJZGVzY3JpY2FvGAIgASgJQgSotR'
    'gBUglkZXNjcmljYW8SFgoGZXN0YWRvGAMgASgJUgZlc3RhZG8SNAoLbG9jYWxpemFjYW8YBCAB'
    'KAsyEi5hcmVzdGEuQ29vcmRlbmFkYVILbG9jYWxpemFjYW8SOwoPdXJsX2dvb2dsZV9tYXBzGA'
    'UgASgJQhOStRgPVVJMIEdvb2dsZSBNYXBzUg11cmxHb29nbGVNYXBzEicKD25vbWVfYXNzb2Np'
    'YWNhbxgGIAEoCVIObm9tZUFzc29jaWFjYW8STQoXdXJsX2ZpbGlhY2FvX2Fzc29jaWFjYW8YBy'
    'ABKAlCFZK1GBFVUkwgZGUgRmlsaWHDp8Ojb1IVdXJsRmlsaWFjYW9Bc3NvY2lhY2FvElEKFGNo'
    'YXZlX3BpeF9tYW51dGVuY2FvGAggASgJQh+StRgbQ2hhdmUgUGl4IHBhcmEgTWFudXRlbsOnw6'
    'NvUhJjaGF2ZVBpeE1hbnV0ZW5jYW8SPAoOcGF0cm9jaW5hZG9yZXMYCSADKAsyFC5hcmVzdGEu'
    'UGF0cm9jaW5hZG9yUg5wYXRyb2NpbmFkb3JlcxJAChFzZXRvcmVzX291X2dydXBvcxgLIAMoCz'
    'IULmFyZXN0YS5TZXRvck91R3J1cG9SD3NldG9yZXNPdUdydXBvczoEkLUYAUoECAoQCw==');

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
    {'1': 'id_no_mapa', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
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
  ],
  '7': {},
};

/// Descriptor for `Grupo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grupoDescriptor = $convert.base64Decode(
    'CgVHcnVwbxIYCgRub21lGAEgASgJQgTAtRgBUgRub21lEjEKCWRlc2NyaWNhbxgCIAEoCUITkr'
    'UYC0Rlc2NyacOnw6NvqLUYAVIJZGVzY3JpY2FvEiwKCmlkX25vX21hcGEYBSABKAlCDpK1GApJ'
    'RCBubyBNYXBhUghpZE5vTWFwYRJzChpsb2NhbGl6YWNhb19lc3RhY2lvbmFtZW50bxgGIAEoCz'
    'ISLmFyZXN0YS5Db29yZGVuYWRhQiCStRgcTG9jYWxpemHDp8OjbyBFc3RhY2lvbmFtZW50b1IZ'
    'bG9jYWxpemFjYW9Fc3RhY2lvbmFtZW50bxJhChRsb2NhbGl6YWNhb19lc2NhbGFkYRgHIAEoCz'
    'ISLmFyZXN0YS5Db29yZGVuYWRhQhqStRgWTG9jYWxpemHDp8OjbyBFc2NhbGFkYVITbG9jYWxp'
    'emFjYW9Fc2NhbGFkYRIiCgVtYXBhcxgDIAMoCzIMLmFyZXN0YS5NYXBhUgVtYXBhcxIuCgdzZX'
    'RvcmVzGAQgAygLMhQuYXJlc3RhLkFycXVpdm9TZXRvclIHc2V0b3JlczoEkLUYAQ==');

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
      '10': 'trilhas'
    },
    {'1': 'sinal_de_celular', '3': 6, '4': 1, '5': 8, '10': 'sinalDeCelular'},
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
    {'1': 'id_no_mapa', '3': 14, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
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
  ],
  '7': {},
  '9': [
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `Setor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setorDescriptor = $convert.base64Decode(
    'CgVTZXRvchIYCgRub21lGAEgASgJQgTAtRgBUgRub21lEnMKGmxvY2FsaXphY2FvX2VzdGFjaW'
    '9uYW1lbnRvGAIgASgLMhIuYXJlc3RhLkNvb3JkZW5hZGFCIJK1GBxMb2NhbGl6YcOnw6NvIEVz'
    'dGFjaW9uYW1lbnRvUhlsb2NhbGl6YWNhb0VzdGFjaW9uYW1lbnRvEmEKFGxvY2FsaXphY2FvX2'
    'VzY2FsYWRhGAMgASgLMhIuYXJlc3RhLkNvb3JkZW5hZGFCGpK1GBZMb2NhbGl6YcOnw6NvIEVz'
    'Y2FsYWRhUhNsb2NhbGl6YWNhb0VzY2FsYWRhEigKB3RyaWxoYXMYBCADKAsyDi5hcmVzdGEuVH'
    'JpbGhhUgd0cmlsaGFzEigKEHNpbmFsX2RlX2NlbHVsYXIYBiABKAhSDnNpbmFsRGVDZWx1bGFy'
    'EkkKE2FtaWdhdmVsX2FfY3JpYW5jYXMYByABKAhCGZK1GBVBbWlnw6F2ZWwgYSBDcmlhbsOnYX'
    'NSEWFtaWdhdmVsQUNyaWFuY2FzEkAKEGFtaWdhdmVsX2FfYmViZXMYCCABKAhCFpK1GBJBbWln'
    'w6F2ZWwgYSBCZWLDqnNSDmFtaWdhdmVsQUJlYmVzEjEKCWRlc2NyaWNhbxgJIAEoCUITkrUYC0'
    'Rlc2NyacOnw6NvqLUYAVIJZGVzY3JpY2FvEiwKCmlkX25vX21hcGEYDiABKAlCDpK1GApJRCBu'
    'byBNYXBhUghpZE5vTWFwYRIiCgVtYXBhcxgNIAMoCzIMLmFyZXN0YS5NYXBhUgVtYXBhcxIuCg'
    'llc2NhbGFkYXMYCyADKAsyEC5hcmVzdGEuRXNjYWxhZGFSCWVzY2FsYWRhczoEkLUYAUoECAwQ'
    'DQ==');

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
  ],
  '3': [Mapa_PontoDeInteresse$json],
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
      '1': 'circular',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingCircular',
      '9': 0,
      '10': 'circular'
    },
    {
      '1': 'box',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingBox',
      '9': 0,
      '10': 'box'
    },
    {
      '1': 'area_livre',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.aresta.BoundingAreaLivre',
      '8': {},
      '9': 0,
      '10': 'areaLivre'
    },
  ],
  '7': {},
  '8': [
    {'1': 'tipo_area'},
  ],
};

/// Descriptor for `Mapa`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapaDescriptor = $convert.base64Decode(
    'CgRNYXBhEkIKE2NhbWluaG9faW1hZ2VtX21hcGEYASABKAlCEoq1GAppbWFnZS93ZWJwmLUYAl'
    'IRY2FtaW5ob0ltYWdlbU1hcGESNgoMbGFyZ3VyYV9tYXBhGAIgASgFQhOStRgPTGFyZ3VyYSBk'
    'byBNYXBhUgtsYXJndXJhTWFwYRIzCgthbHR1cmFfbWFwYRgDIAEoBUISkrUYDkFsdHVyYSBkby'
    'BNYXBhUgphbHR1cmFNYXBhEk0KE3BvbnRvc19kZV9pbnRlcmVzc2UYBCADKAsyHS5hcmVzdGEu'
    'TWFwYS5Qb250b0RlSW50ZXJlc3NlUhFwb250b3NEZUludGVyZXNzZRr5AQoQUG9udG9EZUludG'
    'VyZXNzZRIOCgJpZBgBIAEoCVICaWQSFAoFbGFiZWwYAiABKAlSBWxhYmVsEjYKCGNpcmN1bGFy'
    'GAYgASgLMhguYXJlc3RhLkJvdW5kaW5nQ2lyY3VsYXJIAFIIY2lyY3VsYXISJwoDYm94GAMgAS'
    'gLMhMuYXJlc3RhLkJvdW5kaW5nQm94SABSA2JveBJLCgphcmVhX2xpdnJlGAcgASgLMhkuYXJl'
    'c3RhLkJvdW5kaW5nQXJlYUxpdnJlQg+StRgLw4FyZWEgTGl2cmVIAFIJYXJlYUxpdnJlOgSQtR'
    'gCQgsKCXRpcG9fYXJlYUoECAUQBg==');

@$core.Deprecated('Use boundingCircularDescriptor instead')
const BoundingCircular$json = {
  '1': 'BoundingCircular',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 5, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 5, '10': 'y'},
    {'1': 'raio', '3': 3, '4': 1, '5': 5, '10': 'raio'},
  ],
  '7': {},
};

/// Descriptor for `BoundingCircular`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingCircularDescriptor = $convert.base64Decode(
    'ChBCb3VuZGluZ0NpcmN1bGFyEgwKAXgYASABKAVSAXgSDAoBeRgCIAEoBVIBeRISCgRyYWlvGA'
    'MgASgFUgRyYWlvOgSQtRgC');

@$core.Deprecated('Use boundingBoxDescriptor instead')
const BoundingBox$json = {
  '1': 'BoundingBox',
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

/// Descriptor for `BoundingBox`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingBoxDescriptor = $convert.base64Decode(
    'CgtCb3VuZGluZ0JveBIMCgF4GAEgASgFUgF4EgwKAXkYAiABKAVSAXkSIAoLY29tcHJpbWVudG'
    '8YBSABKAVSC2NvbXByaW1lbnRvEhgKB2xhcmd1cmEYBiABKAVSB2xhcmd1cmESRQoRYW5ndWxv'
    'X2dyYXVzX3gxMDAYByABKBFCGZK1GBXDgm5ndWxvIChncmF1cyAqIDEwMClSD2FuZ3Vsb0dyYX'
    'VzWDEwMDoEkLUYAkoECAMQBEoECAQQBQ==');

@$core.Deprecated('Use boundingAreaLivreDescriptor instead')
const BoundingAreaLivre$json = {
  '1': 'BoundingAreaLivre',
  '2': [
    {'1': 'coordenadas', '3': 1, '4': 3, '5': 5, '10': 'coordenadas'},
  ],
  '7': {},
};

/// Descriptor for `BoundingAreaLivre`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundingAreaLivreDescriptor = $convert.base64Decode(
    'ChFCb3VuZGluZ0FyZWFMaXZyZRIgCgtjb29yZGVuYWRhcxgBIAMoBVILY29vcmRlbmFkYXM6BJ'
    'C1GAI=');

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
    'AFIIaGlnaGxpbmU6BJC1GAFCBgoEdGlwbw==');

@$core.Deprecated('Use viaEsportivaDescriptor instead')
const ViaEsportiva$json = {
  '1': 'ViaEsportiva',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'id_no_mapa', '3': 16, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
    {
      '1': 'id_no_mapa_meio',
      '3': 19,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaMeio'
    },
    {
      '1': 'id_no_mapa_fim',
      '3': 17,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaFim'
    },
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
};

/// Descriptor for `ViaEsportiva`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viaEsportivaDescriptor = $convert.base64Decode(
    'CgxWaWFFc3BvcnRpdmESEgoEbm9tZRgBIAEoCVIEbm9tZRIsCgppZF9ub19tYXBhGBAgASgJQg'
    '6StRgKSUQgbm8gTWFwYVIIaWROb01hcGESPAoPaWRfbm9fbWFwYV9tZWlvGBMgASgJQhWStRgR'
    'SUQgbm8gTWFwYSAoTWVpbylSDGlkTm9NYXBhTWVpbxI5Cg5pZF9ub19tYXBhX2ZpbRgRIAEoCU'
    'IUkrUYEElEIG5vIE1hcGEgKEZpbSlSC2lkTm9NYXBhRmltEisKCGRlc3RhcXVlGBIgASgIQg+S'
    'tRgLw4kgRGVzdGFxdWVSCGRlc3RhcXVlEjkKC2RpZmljdWxkYWRlGAIgASgOMhcuYXJlc3RhLk'
    'dyYXVWaWEuR3JhdVZpYVILZGlmaWN1bGRhZGUSXAoWZGlmaWN1bGRhZGVfYXJ0aWZpY2lhbBgD'
    'IAEoDjIlLmFyZXN0YS5HcmF1QXJ0aWZpY2lhbC5HcmF1QXJ0aWZpY2lhbFIVZGlmaWN1bGRhZG'
    'VBcnRpZmljaWFsEloKCWV4cG9zaWNhbxgEIAEoDjIjLmFyZXN0YS5HcmF1RXhwb3NpY2FvLkdy'
    'YXVFeHBvc2ljYW9CF5K1GBNHcmF1IGRlIEV4cG9zacOnw6NvUglleHBvc2ljYW8SUgoLdGlwb1'
    '9wYXJlZGUYBSABKA4yHS5hcmVzdGEuVGlwb1BhcmVkZS5UaXBvUGFyZWRlQhKStRgOVGlwbyBk'
    'ZSBQYXJlZGVSCnRpcG9QYXJlZGUSKQoIZXh0ZW5zYW8YBiABKAVCDZK1GAlFeHRlbnPDo29SCG'
    'V4dGVuc2FvEn0KI3F1YW50aWRhZGVfcHJvdGVjb2VzX2ludGVybWVkaWFyaWFzGAcgASgFQi2S'
    'tRgpUXVhbnRpZGFkZSBkZSBQcm90ZcOnw7VlcyBJbnRlcm1lZGnDoXJpYXNSIXF1YW50aWRhZG'
    'VQcm90ZWNvZXNJbnRlcm1lZGlhcmlhcxJnChtxdWFudGlkYWRlX3Byb3RlY29lc19wYXJhZGEY'
    'CCABKAVCJ5K1GCNRdWFudGlkYWRlIGRlIFByb3Rlw6fDtWVzIG5hIFBhcmFkYVIZcXVhbnRpZG'
    'FkZVByb3RlY29lc1BhcmFkYRI8Cg50aXBvX2FuY29yYWdlbRgJIAEoCUIVkrUYEVRpcG8gZGUg'
    'QW5jb3JhZ2VtUg10aXBvQW5jb3JhZ2VtEiYKDmNvbnF1aXN0YWRvcmVzGAogAygJUg5jb25xdW'
    'lzdGFkb3JlcxI5Cg1kYXRhX2FiZXJ0dXJhGAsgASgJQhSStRgQRGF0YSBkZSBBYmVydHVyYVIM'
    'ZGF0YUFiZXJ0dXJhEkkKD2RhdGFfbWFudXRlbmNhbxgMIAEoCUIgkrUYHERhdGEgZGEgw5psdG'
    'ltYSBNYW51dGVuw6fDo29SDmRhdGFNYW51dGVuY2FvEjEKCWRlc2NyaWNhbxgNIAEoCUITkrUY'
    'C0Rlc2NyacOnw6NvqLUYAVIJZGVzY3JpY2FvEkMKDnVybF92aWRlb19iZXRhGA4gASgJQh2StR'
    'gVVVJMIGRvIFbDrWRlbyBkbyBCZXRhmLUYAlIMdXJsVmlkZW9CZXRhElEKFGNoYXZlX3BpeF9t'
    'YW51dGVuY2FvGA8gASgJQh+StRgbQ2hhdmUgUGl4IHBhcmEgTWFudXRlbsOnw6NvUhJjaGF2ZV'
    'BpeE1hbnV0ZW5jYW8=');

@$core.Deprecated('Use viaMovelDescriptor instead')
const ViaMovel$json = {
  '1': 'ViaMovel',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'id_no_mapa', '3': 16, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
    {
      '1': 'id_no_mapa_meio',
      '3': 21,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaMeio'
    },
    {
      '1': 'id_no_mapa_fim',
      '3': 19,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaFim'
    },
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
};

/// Descriptor for `ViaMovel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viaMovelDescriptor = $convert.base64Decode(
    'CghWaWFNb3ZlbBISCgRub21lGAEgASgJUgRub21lEiwKCmlkX25vX21hcGEYECABKAlCDpK1GA'
    'pJRCBubyBNYXBhUghpZE5vTWFwYRI8Cg9pZF9ub19tYXBhX21laW8YFSABKAlCFZK1GBFJRCBu'
    'byBNYXBhIChNZWlvKVIMaWROb01hcGFNZWlvEjkKDmlkX25vX21hcGFfZmltGBMgASgJQhSStR'
    'gQSUQgbm8gTWFwYSAoRmltKVILaWROb01hcGFGaW0SKwoIZGVzdGFxdWUYFCABKAhCD5K1GAvD'
    'iSBEZXN0YXF1ZVIIZGVzdGFxdWUSOQoLZGlmaWN1bGRhZGUYAiABKA4yFy5hcmVzdGEuR3JhdV'
    'ZpYS5HcmF1VmlhUgtkaWZpY3VsZGFkZRJcChZkaWZpY3VsZGFkZV9hcnRpZmljaWFsGBEgASgO'
    'MiUuYXJlc3RhLkdyYXVBcnRpZmljaWFsLkdyYXVBcnRpZmljaWFsUhVkaWZpY3VsZGFkZUFydG'
    'lmaWNpYWwSjAEKH2RpZmljdWxkYWRlX2FydGlmaWNpYWxfZW1fbGl2cmUYEiABKA4yFy5hcmVz'
    'dGEuR3JhdVZpYS5HcmF1VmlhQiyStRgoRGlmaWN1bGRhZGUgZG8gbGFuY2UgYXJ0aWZpY2lhbC'
    'BlbSBsaXZyZVIcZGlmaWN1bGRhZGVBcnRpZmljaWFsRW1MaXZyZRJaCglleHBvc2ljYW8YAyAB'
    'KA4yIy5hcmVzdGEuR3JhdUV4cG9zaWNhby5HcmF1RXhwb3NpY2FvQheStRgTR3JhdSBkZSBFeH'
    'Bvc2nDp8Ojb1IJZXhwb3NpY2FvElIKC3RpcG9fcGFyZWRlGAQgASgOMh0uYXJlc3RhLlRpcG9Q'
    'YXJlZGUuVGlwb1BhcmVkZUISkrUYDlRpcG8gZGUgUGFyZWRlUgp0aXBvUGFyZWRlEikKCGV4dG'
    'Vuc2FvGAUgASgFQg2StRgJRXh0ZW5zw6NvUghleHRlbnNhbxJ9CiNxdWFudGlkYWRlX3Byb3Rl'
    'Y29lc19pbnRlcm1lZGlhcmlhcxgGIAEoBUItkrUYKVF1YW50aWRhZGUgZGUgUHJvdGXDp8O1ZX'
    'MgSW50ZXJtZWRpw6FyaWFzUiFxdWFudGlkYWRlUHJvdGVjb2VzSW50ZXJtZWRpYXJpYXMSZwob'
    'cXVhbnRpZGFkZV9wcm90ZWNvZXNfcGFyYWRhGAcgASgFQieStRgjUXVhbnRpZGFkZSBkZSBQcm'
    '90ZcOnw7VlcyBuYSBQYXJhZGFSGXF1YW50aWRhZGVQcm90ZWNvZXNQYXJhZGESSgoQcHJvdGVj'
    'b2VzX21vdmVpcxgIIAEoCUIfkrUYG1RpcG8gZGUgUHJvdGXDp8O1ZXMgTcOzdmVpc1IPcHJvdG'
    'Vjb2VzTW92ZWlzEjwKDnRpcG9fYW5jb3JhZ2VtGAkgASgJQhWStRgRVGlwbyBkZSBBbmNvcmFn'
    'ZW1SDXRpcG9BbmNvcmFnZW0SJgoOY29ucXVpc3RhZG9yZXMYCiADKAlSDmNvbnF1aXN0YWRvcm'
    'VzEjkKDWRhdGFfYWJlcnR1cmEYCyABKAlCFJK1GBBEYXRhIGRlIEFiZXJ0dXJhUgxkYXRhQWJl'
    'cnR1cmESSQoPZGF0YV9tYW51dGVuY2FvGAwgASgJQiCStRgcRGF0YSBkYSDDmmx0aW1hIE1hbn'
    'V0ZW7Dp8Ojb1IOZGF0YU1hbnV0ZW5jYW8SMQoJZGVzY3JpY2FvGA0gASgJQhOStRgLRGVzY3Jp'
    'w6fDo2+otRgBUglkZXNjcmljYW8SQwoOdXJsX3ZpZGVvX2JldGEYDiABKAlCHZK1GBVVUkwgZG'
    '8gVsOtZGVvIGRvIEJldGGYtRgCUgx1cmxWaWRlb0JldGESUQoUY2hhdmVfcGl4X21hbnV0ZW5j'
    'YW8YDyABKAlCH5K1GBtDaGF2ZSBQaXggcGFyYSBNYW51dGVuw6fDo29SEmNoYXZlUGl4TWFudX'
    'RlbmNhbw==');

@$core.Deprecated('Use boulderDescriptor instead')
const Boulder$json = {
  '1': 'Boulder',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'id_no_mapa', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
    {
      '1': 'id_no_mapa_meio',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaMeio'
    },
    {
      '1': 'id_no_mapa_fim',
      '3': 10,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaFim'
    },
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
};

/// Descriptor for `Boulder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boulderDescriptor = $convert.base64Decode(
    'CgdCb3VsZGVyEhIKBG5vbWUYASABKAlSBG5vbWUSLAoKaWRfbm9fbWFwYRgJIAEoCUIOkrUYCk'
    'lEIG5vIE1hcGFSCGlkTm9NYXBhEjwKD2lkX25vX21hcGFfbWVpbxgMIAEoCUIVkrUYEUlEIG5v'
    'IE1hcGEgKE1laW8pUgxpZE5vTWFwYU1laW8SOQoOaWRfbm9fbWFwYV9maW0YCiABKAlCFJK1GB'
    'BJRCBubyBNYXBhIChGaW0pUgtpZE5vTWFwYUZpbRIrCghkZXN0YXF1ZRgLIAEoCEIPkrUYC8OJ'
    'IERlc3RhcXVlUghkZXN0YXF1ZRJBCgtkaWZpY3VsZGFkZRgCIAEoDjIfLmFyZXN0YS5HcmF1Qm'
    '91bGRlci5HcmF1Qm91bGRlclILZGlmaWN1bGRhZGUSUgoLdGlwb19wYXJlZGUYAyABKA4yHS5h'
    'cmVzdGEuVGlwb1BhcmVkZS5UaXBvUGFyZWRlQhKStRgOVGlwbyBkZSBQYXJlZGVSCnRpcG9QYX'
    'JlZGUSJgoOY29ucXVpc3RhZG9yZXMYBCADKAlSDmNvbnF1aXN0YWRvcmVzEjkKDWRhdGFfYWJl'
    'cnR1cmEYBSABKAlCFJK1GBBEYXRhIGRlIEFiZXJ0dXJhUgxkYXRhQWJlcnR1cmESMQoJZGVzY3'
    'JpY2FvGAYgASgJQhOStRgLRGVzY3Jpw6fDo2+otRgBUglkZXNjcmljYW8SQwoOdXJsX3ZpZGVv'
    'X2JldGEYByABKAlCHZK1GBVVUkwgZG8gVsOtZGVvIGRvIEJldGGYtRgCUgx1cmxWaWRlb0JldG'
    'ESUQoUY2hhdmVfcGl4X21hbnV0ZW5jYW8YCCABKAlCH5K1GBtDaGF2ZSBQaXggcGFyYSBNYW51'
    'dGVuw6fDo29SEmNoYXZlUGl4TWFudXRlbmNhbw==');

@$core.Deprecated('Use viaMultiplasEnfiadasDescriptor instead')
const ViaMultiplasEnfiadas$json = {
  '1': 'ViaMultiplasEnfiadas',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'id_no_mapa', '3': 20, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
    {
      '1': 'id_no_mapa_meio',
      '3': 26,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaMeio'
    },
    {
      '1': 'id_no_mapa_fim',
      '3': 24,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaFim'
    },
    {'1': 'destaque', '3': 25, '4': 1, '5': 8, '8': {}, '10': 'destaque'},
    {
      '1': 'mapas',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.aresta.Mapa',
      '10': 'mapas'
    },
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
    'ChRWaWFNdWx0aXBsYXNFbmZpYWRhcxISCgRub21lGAEgASgJUgRub21lEiwKCmlkX25vX21hcG'
    'EYFCABKAlCDpK1GApJRCBubyBNYXBhUghpZE5vTWFwYRI8Cg9pZF9ub19tYXBhX21laW8YGiAB'
    'KAlCFZK1GBFJRCBubyBNYXBhIChNZWlvKVIMaWROb01hcGFNZWlvEjkKDmlkX25vX21hcGFfZm'
    'ltGBggASgJQhSStRgQSUQgbm8gTWFwYSAoRmltKVILaWROb01hcGFGaW0SKwoIZGVzdGFxdWUY'
    'GSABKAhCD5K1GAvDiSBEZXN0YXF1ZVIIZGVzdGFxdWUSIgoFbWFwYXMYFSADKAsyDC5hcmVzdG'
    'EuTWFwYVIFbWFwYXMSXAoRZGlmaWN1bGRhZGVfbWVkaWEYAiABKA4yFy5hcmVzdGEuR3JhdVZp'
    'YS5HcmF1VmlhQhaStRgSRGlmaWN1bGRhZGUgTcOpZGlhUhBkaWZpY3VsZGFkZU1lZGlhEl8KEm'
    'RpZmljdWxkYWRlX21heGltYRgDIAEoDjIXLmFyZXN0YS5HcmF1VmlhLkdyYXVWaWFCF5K1GBNE'
    'aWZpY3VsZGFkZSBNw6F4aW1hUhFkaWZpY3VsZGFkZU1heGltYRJ4ChZkaWZpY3VsZGFkZV9hcn'
    'RpZmljaWFsGAQgASgOMiUuYXJlc3RhLkdyYXVBcnRpZmljaWFsLkdyYXVBcnRpZmljaWFsQhqS'
    'tRgWRGlmaWN1bGRhZGUgQXJ0aWZpY2lhbFIVZGlmaWN1bGRhZGVBcnRpZmljaWFsEoMBCh9kaW'
    'ZpY3VsZGFkZV9hcnRpZmljaWFsX2VtX2xpdnJlGAUgASgOMhcuYXJlc3RhLkdyYXVWaWEuR3Jh'
    'dVZpYUIjkrUYH0RpZmljdWxkYWRlIEFydGlmaWNpYWwgZW0gTGl2cmVSHGRpZmljdWxkYWRlQX'
    'J0aWZpY2lhbEVtTGl2cmUSWgoJZXhwb3NpY2FvGAYgASgOMiMuYXJlc3RhLkdyYXVFeHBvc2lj'
    'YW8uR3JhdUV4cG9zaWNhb0IXkrUYE0dyYXUgZGUgRXhwb3Npw6fDo29SCWV4cG9zaWNhbxJICg'
    'dkdXJhY2FvGAcgASgOMh8uYXJlc3RhLkdyYXVEdXJhY2FvLkdyYXVEdXJhY2FvQg2StRgJRHVy'
    'YcOnw6NvUgdkdXJhY2FvEkAKD251bWVyb19lbmZpYWRhcxgIIAEoBUIXkrUYE07Dum1lcm8gZG'
    'UgRW5maWFkYXNSDm51bWVyb0VuZmlhZGFzEisKEWNvbXByaW1lbnRvX3RvdGFsGAkgASgFUhBj'
    'b21wcmltZW50b1RvdGFsEjoKGWNvbXByaW1lbnRvX21haW9yX2VuZmlhZGEYCiABKAVSF2NvbX'
    'ByaW1lbnRvTWFpb3JFbmZpYWRhEngKInF1YW50aWRhZGVfY29zdHVyYXNfaW50ZXJtZWRpYXJp'
    'YXMYFiABKAVCKpK1GCZRdWFudGlkYWRlIGRlIENvc3R1cmFzIEludGVybWVkacOhcmlhc1IgcX'
    'VhbnRpZGFkZUNvc3R1cmFzSW50ZXJtZWRpYXJpYXMScAoecXVhbnRpZGFkZV9lcXVpcGFtZW50'
    'b3NfcGFyYWRhGBcgASgFQiqStRgmUXVhbnRpZGFkZSBkZSBFcXVpcGFtZW50b3MgcGFyYSBQYX'
    'JhZGFSHHF1YW50aWRhZGVFcXVpcGFtZW50b3NQYXJhZGESdAobdGlwb192aWFfbXVsdGlwbGFz'
    'X2VuZmlhZGFzGAsgASgOMjUuYXJlc3RhLlZpYU11bHRpcGxhc0VuZmlhZGFzLlRpcG9WaWFNdW'
    'x0aXBsYXNFbmZpYWRhc1IYdGlwb1ZpYU11bHRpcGxhc0VuZmlhZGFzEjcKF2VxdWlwYW1lbnRv'
    'X3JlY29tZW5kYWRvGAwgASgJUhZlcXVpcGFtZW50b1JlY29tZW5kYWRvEiwKCGVuZmlhZGFzGA'
    '0gAygLMhAuYXJlc3RhLkVzY2FsYWRhUghlbmZpYWRhcxIxCglkZXNjcmljYW8YDiABKAlCE5K1'
    'GAtEZXNjcmnDp8Ojb6i1GAFSCWRlc2NyaWNhbxImCg5jb25xdWlzdGFkb3JlcxgPIAMoCVIOY2'
    '9ucXVpc3RhZG9yZXMSOQoNZGF0YV9hYmVydHVyYRgQIAEoCUIUkrUYEERhdGEgZGUgQWJlcnR1'
    'cmFSDGRhdGFBYmVydHVyYRJJCg9kYXRhX21hbnV0ZW5jYW8YESABKAlCIJK1GBxEYXRhIGRhIM'
    'OabHRpbWEgTWFudXRlbsOnw6NvUg5kYXRhTWFudXRlbmNhbxJDCg51cmxfdmlkZW9fYmV0YRgS'
    'IAEoCUIdkrUYFVVSTCBkbyBWw61kZW8gZG8gQmV0YZi1GAJSDHVybFZpZGVvQmV0YRJRChRjaG'
    'F2ZV9waXhfbWFudXRlbmNhbxgTIAEoCUIfkrUYG0NoYXZlIFBpeCBwYXJhIE1hbnV0ZW7Dp8Oj'
    'b1ISY2hhdmVQaXhNYW51dGVuY2FvIlQKGFRpcG9WaWFNdWx0aXBsYXNFbmZpYWRhcxIOCgpJTk'
    'RFRklOSURPEAASDQoJVE9EQV9GSVhBEAESCQoFTUlTVEEQAhIOCgpUT0RBX01PVkVMEAM=');

@$core.Deprecated('Use highlineDescriptor instead')
const Highline$json = {
  '1': 'Highline',
  '2': [
    {'1': 'nome', '3': 1, '4': 1, '5': 9, '10': 'nome'},
    {'1': 'id_no_mapa', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'idNoMapa'},
    {
      '1': 'id_no_mapa_meio',
      '3': 16,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaMeio'
    },
    {
      '1': 'id_no_mapa_fim',
      '3': 14,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'idNoMapaFim'
    },
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
};

/// Descriptor for `Highline`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List highlineDescriptor = $convert.base64Decode(
    'CghIaWdobGluZRISCgRub21lGAEgASgJUgRub21lEiwKCmlkX25vX21hcGEYDSABKAlCDpK1GA'
    'pJRCBubyBNYXBhUghpZE5vTWFwYRI8Cg9pZF9ub19tYXBhX21laW8YECABKAlCFZK1GBFJRCBu'
    'byBNYXBhIChNZWlvKVIMaWROb01hcGFNZWlvEjkKDmlkX25vX21hcGFfZmltGA4gASgJQhSStR'
    'gQSUQgbm8gTWFwYSAoRmltKVILaWROb01hcGFGaW0SKwoIZGVzdGFxdWUYDyABKAhCD5K1GAvD'
    'iSBEZXN0YXF1ZVIIZGVzdGFxdWUSLAoJZGlzdGFuY2lhGAIgASgFQg6StRgKRGlzdMOibmNpYV'
    'IJZGlzdGFuY2lhEhYKBmFsdHVyYRgDIAEoBVIGYWx0dXJhEi0KCWV4cG9zaWNhbxgEIAEoBUIP'
    'krUYC0V4cG9zacOnw6NvUglleHBvc2ljYW8SJgoOY29ucXVpc3RhZG9yZXMYBSADKAlSDmNvbn'
    'F1aXN0YWRvcmVzEjkKDWRhdGFfYWJlcnR1cmEYBiABKAlCFJK1GBBEYXRhIGRlIEFiZXJ0dXJh'
    'UgxkYXRhQWJlcnR1cmESSQoPZGF0YV9tYW51dGVuY2FvGAcgASgJQiCStRgcRGF0YSBkYSDDmm'
    'x0aW1hIE1hbnV0ZW7Dp8Ojb1IOZGF0YU1hbnV0ZW5jYW8SRAoQZGVzY3JpY2FvX2FjZXNzbxgI'
    'IAEoCUIZkrUYFURlc2NyacOnw6NvIGRvIEFjZXNzb1IPZGVzY3JpY2FvQWNlc3NvEk0KE2Rlc2'
    'NyaWNhb19hbmNvcmFnZW0YCSABKAlCHJK1GBhEZXNjcmnDp8OjbyBkYSBBbmNvcmFnZW1SEmRl'
    'c2NyaWNhb0FuY29yYWdlbRIxCglkZXNjcmljYW8YCiABKAlCE5K1GAtEZXNjcmnDp8Ojb6i1GA'
    'FSCWRlc2NyaWNhbxJDCg51cmxfdmlkZW9fYmV0YRgLIAEoCUIdkrUYFVVSTCBkbyBWw61kZW8g'
    'ZG8gQmV0YZi1GAJSDHVybFZpZGVvQmV0YRJRChRjaGF2ZV9waXhfbWFudXRlbmNhbxgMIAEoCU'
    'IfkrUYG0NoYXZlIFBpeCBwYXJhIE1hbnV0ZW7Dp8Ojb1ISY2hhdmVQaXhNYW51dGVuY2Fv');

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
    {'1': 'latitude', '3': 1, '4': 1, '5': 17, '10': 'latitude'},
    {'1': 'longitude', '3': 2, '4': 1, '5': 17, '10': 'longitude'},
  ],
  '7': {},
};

/// Descriptor for `Coordenada`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coordenadaDescriptor = $convert.base64Decode(
    'CgpDb29yZGVuYWRhEhoKCGxhdGl0dWRlGAEgASgRUghsYXRpdHVkZRIcCglsb25naXR1ZGUYAi'
    'ABKBFSCWxvbmdpdHVkZToEkLUYAg==');

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
