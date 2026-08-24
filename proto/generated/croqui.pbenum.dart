// This is a generated file - do not edit.
//
// Generated from croqui.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TipoConteudo_Enum extends $pb.ProtobufEnum {
  /// Tipo não especificado.
  static const TipoConteudo_Enum INDEFINIDO =
      TipoConteudo_Enum._(0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// O conteúdo está contido diretamente no próprio campo (em Base64 para strings ou binário para bytes).
  static const TipoConteudo_Enum INLINE =
      TipoConteudo_Enum._(1, _omitEnumNames ? '' : 'INLINE');

  /// O valor do campo é um caminho para um arquivo externo contendo o conteúdo.
  static const TipoConteudo_Enum CAMINHO =
      TipoConteudo_Enum._(2, _omitEnumNames ? '' : 'CAMINHO');

  static const $core.List<TipoConteudo_Enum> values = <TipoConteudo_Enum>[
    INDEFINIDO,
    INLINE,
    CAMINHO,
  ];

  static final $core.List<TipoConteudo_Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TipoConteudo_Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TipoConteudo_Enum._(super.value, super.name);
}

class CampoFormatoUi_Enum extends $pb.ProtobufEnum {
  /// Tipo não especificado.
  static const CampoFormatoUi_Enum INDEFINIDO =
      CampoFormatoUi_Enum._(0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// O campo é editado inline dentro da mesma tela de seu elemento pai, com formato apropriado ao tipo.
  /// Os padrões são:
  /// Para tipos numéricos: campo numérico (input numérico).
  /// Para string: campo de texto curto.
  static const CampoFormatoUi_Enum INLINE =
      CampoFormatoUi_Enum._(1, _omitEnumNames ? '' : 'INLINE');

  /// O campo é invisível no editor.
  static const CampoFormatoUi_Enum INVISIVEL =
      CampoFormatoUi_Enum._(2, _omitEnumNames ? '' : 'INVISIVEL');

  /// O campo é um campo de texto forçado como um texto curto de uma linha.
  /// Erro caso for outro formato de proto, checado por testes.
  static const CampoFormatoUi_Enum TEXTO_CURTO =
      CampoFormatoUi_Enum._(3, _omitEnumNames ? '' : 'TEXTO_CURTO');

  /// O campo é um campo de texto de múltiplas linhas.
  /// Erro caso for outro formato de proto, checado por testes.
  static const CampoFormatoUi_Enum TEXTO_LONGO =
      CampoFormatoUi_Enum._(4, _omitEnumNames ? '' : 'TEXTO_LONGO');

  /// O campo abre um editor de markdown com preview.
  static const CampoFormatoUi_Enum MARKDOWN =
      CampoFormatoUi_Enum._(5, _omitEnumNames ? '' : 'MARKDOWN');

  /// O campo é um valor de latitude no padrão E7 (graus * 10^7), editado como ponto flutuante com rosa dos ventos.
  static const CampoFormatoUi_Enum LATITUDE_E7 =
      CampoFormatoUi_Enum._(6, _omitEnumNames ? '' : 'LATITUDE_E7');

  /// O campo é um valor de longitude no padrão E7 (graus * 10^7), editado como ponto flutuante com rosa dos ventos.
  static const CampoFormatoUi_Enum LONGITUDE_E7 =
      CampoFormatoUi_Enum._(7, _omitEnumNames ? '' : 'LONGITUDE_E7');

  /// O campo representa uma imagem com pré-visualização, metadados e pré-processamento WebP.
  static const CampoFormatoUi_Enum IMAGEM =
      CampoFormatoUi_Enum._(8, _omitEnumNames ? '' : 'IMAGEM');

  static const $core.List<CampoFormatoUi_Enum> values = <CampoFormatoUi_Enum>[
    INDEFINIDO,
    INLINE,
    INVISIVEL,
    TEXTO_CURTO,
    TEXTO_LONGO,
    MARKDOWN,
    LATITUDE_E7,
    LONGITUDE_E7,
    IMAGEM,
  ];

  static final $core.List<CampoFormatoUi_Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static CampoFormatoUi_Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CampoFormatoUi_Enum._(super.value, super.name);
}

class MensagemFormatoUi_Enum extends $pb.ProtobufEnum {
  /// Tipo não especificado.
  static const MensagemFormatoUi_Enum INDEFINIDO =
      MensagemFormatoUi_Enum._(0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// A mensagem abre em uma tela/página separada na árvore de navegação do editor.
  static const MensagemFormatoUi_Enum SEPARADO =
      MensagemFormatoUi_Enum._(1, _omitEnumNames ? '' : 'SEPARADO');

  /// A mensagem é editada inline dentro da mesma tela de seu elemento pai.
  static const MensagemFormatoUi_Enum INLINE =
      MensagemFormatoUi_Enum._(2, _omitEnumNames ? '' : 'INLINE');

  /// Mensagem especial de união (oneof).
  /// É abstraída pelo editor (não aparece na árvore de edição, usa o campo já existente).
  /// Mostra na árvore como o filho com o título `titulo_na_ui`.
  static const MensagemFormatoUi_Enum ONEOF =
      MensagemFormatoUi_Enum._(3, _omitEnumNames ? '' : 'ONEOF');

  /// Mensagem que não é mostrada no editor (uso interno). Também inclui as submensagens.
  static const MensagemFormatoUi_Enum INVISIVEL =
      MensagemFormatoUi_Enum._(4, _omitEnumNames ? '' : 'INVISIVEL');

  /// Mensagem wrapper de conteúdo com dois campos fixos: 'caminho' e 'conteudo'.
  /// Sempre representa o conteúdo em memória no campo 'conteudo'.
  ///
  /// No editor, funciona assim:
  /// - Na escrita para disco (save), o conteudo é serializado para o arquivo em 'caminho'.
  /// - Na leitura do disco (load), o arquivo em 'caminho' é desserializado para 'conteudo'.
  ///
  /// No croqui compilado, sempre utiliza o 'conteudo'.
  static const MensagemFormatoUi_Enum ONEOF_CONTEUDO =
      MensagemFormatoUi_Enum._(5, _omitEnumNames ? '' : 'ONEOF_CONTEUDO');

  /// A mensagem é gerida e editada por um editor visual especializado, o Editor de Mapas.
  /// O editor de dados padrão mostrará apenas um botão "Abrir no Editor de Mapas".
  static const MensagemFormatoUi_Enum MAPA =
      MensagemFormatoUi_Enum._(6, _omitEnumNames ? '' : 'MAPA');

  /// A mensagem representa coordenadas geográficas (Latitude e Longitude na mesma linha com ações de Colar e Abrir no Maps).
  static const MensagemFormatoUi_Enum COORDENADA =
      MensagemFormatoUi_Enum._(7, _omitEnumNames ? '' : 'COORDENADA');

  static const $core.List<MensagemFormatoUi_Enum> values =
      <MensagemFormatoUi_Enum>[
    INDEFINIDO,
    SEPARADO,
    INLINE,
    ONEOF,
    INVISIVEL,
    ONEOF_CONTEUDO,
    MAPA,
    COORDENADA,
  ];

  static final $core.List<MensagemFormatoUi_Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static MensagemFormatoUi_Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MensagemFormatoUi_Enum._(super.value, super.name);
}

class Croqui_StatusDesenhoExtraivel_Enum extends $pb.ProtobufEnum {
  /// Não definido.
  static const Croqui_StatusDesenhoExtraivel_Enum INDEFINIDO =
      Croqui_StatusDesenhoExtraivel_Enum._(
          0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// Não tem desenhos extraíveis no PDF.
  static const Croqui_StatusDesenhoExtraivel_Enum NAO_TEM_DESENHO =
      Croqui_StatusDesenhoExtraivel_Enum._(
          1, _omitEnumNames ? '' : 'NAO_TEM_DESENHO');

  /// Tem desenhos extraíveis no PDF, mas não foram extraídos.
  static const Croqui_StatusDesenhoExtraivel_Enum TEM_DESENHO_MAS_NAO_EXTRAIDO =
      Croqui_StatusDesenhoExtraivel_Enum._(
          2, _omitEnumNames ? '' : 'TEM_DESENHO_MAS_NAO_EXTRAIDO');

  /// Tem desenhos extraíveis no PDF e foram extraídos.
  static const Croqui_StatusDesenhoExtraivel_Enum DESENHO_EXTRAIDO =
      Croqui_StatusDesenhoExtraivel_Enum._(
          3, _omitEnumNames ? '' : 'DESENHO_EXTRAIDO');

  static const $core.List<Croqui_StatusDesenhoExtraivel_Enum> values =
      <Croqui_StatusDesenhoExtraivel_Enum>[
    INDEFINIDO,
    NAO_TEM_DESENHO,
    TEM_DESENHO_MAS_NAO_EXTRAIDO,
    DESENHO_EXTRAIDO,
  ];

  static final $core.List<Croqui_StatusDesenhoExtraivel_Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Croqui_StatusDesenhoExtraivel_Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Croqui_StatusDesenhoExtraivel_Enum._(super.value, super.name);
}

/// Se a via é toda fixa, mista ou toda em móvel.
class ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas extends $pb.ProtobufEnum {
  static const ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas INDEFINIDO =
      ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas._(
          0, _omitEnumNames ? '' : 'INDEFINIDO');
  static const ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas TODA_FIXA =
      ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas._(
          1, _omitEnumNames ? '' : 'TODA_FIXA');
  static const ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas MISTA =
      ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas._(
          2, _omitEnumNames ? '' : 'MISTA');
  static const ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas TODA_MOVEL =
      ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas._(
          3, _omitEnumNames ? '' : 'TODA_MOVEL');

  static const $core.List<ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas>
      values = <ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas>[
    INDEFINIDO,
    TODA_FIXA,
    MISTA,
    TODA_MOVEL,
  ];

  static final $core.List<ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas?>
      _byValue = $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas? valueOf(
          $core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ViaMultiplasEnfiadas_TipoViaMultiplasEnfiadas._(
      super.value, super.name);
}

class TipoParede_TipoParede extends $pb.ProtobufEnum {
  static const TipoParede_TipoParede INDEFINIDO =
      TipoParede_TipoParede._(0, _omitEnumNames ? '' : 'INDEFINIDO');
  static const TipoParede_TipoParede POSITIVO =
      TipoParede_TipoParede._(1, _omitEnumNames ? '' : 'POSITIVO');
  static const TipoParede_TipoParede VERTICAL =
      TipoParede_TipoParede._(2, _omitEnumNames ? '' : 'VERTICAL');
  static const TipoParede_TipoParede NEGATIVO =
      TipoParede_TipoParede._(3, _omitEnumNames ? '' : 'NEGATIVO');

  static const $core.List<TipoParede_TipoParede> values =
      <TipoParede_TipoParede>[
    INDEFINIDO,
    POSITIVO,
    VERTICAL,
    NEGATIVO,
  ];

  static final $core.List<TipoParede_TipoParede?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TipoParede_TipoParede? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TipoParede_TipoParede._(super.value, super.name);
}

class GrauVia_GrauVia extends $pb.ProtobufEnum {
  static const GrauVia_GrauVia INDEFINIDO =
      GrauVia_GrauVia._(0, _omitEnumNames ? '' : 'INDEFINIDO');
  static const GrauVia_GrauVia PROJETO =
      GrauVia_GrauVia._(1, _omitEnumNames ? '' : 'PROJETO');
  static const GrauVia_GrauVia BR_1 =
      GrauVia_GrauVia._(2, _omitEnumNames ? '' : 'BR_1');
  static const GrauVia_GrauVia BR_1_BARRA_1SUP =
      GrauVia_GrauVia._(35, _omitEnumNames ? '' : 'BR_1_BARRA_1SUP');
  static const GrauVia_GrauVia BR_1SUP =
      GrauVia_GrauVia._(3, _omitEnumNames ? '' : 'BR_1SUP');
  static const GrauVia_GrauVia BR_1SUP_BARRA_2 =
      GrauVia_GrauVia._(36, _omitEnumNames ? '' : 'BR_1SUP_BARRA_2');
  static const GrauVia_GrauVia BR_2 =
      GrauVia_GrauVia._(4, _omitEnumNames ? '' : 'BR_2');
  static const GrauVia_GrauVia BR_2_BARRA_2SUP =
      GrauVia_GrauVia._(37, _omitEnumNames ? '' : 'BR_2_BARRA_2SUP');
  static const GrauVia_GrauVia BR_2SUP =
      GrauVia_GrauVia._(5, _omitEnumNames ? '' : 'BR_2SUP');
  static const GrauVia_GrauVia BR_2SUP_BARRA_3 =
      GrauVia_GrauVia._(38, _omitEnumNames ? '' : 'BR_2SUP_BARRA_3');
  static const GrauVia_GrauVia BR_3 =
      GrauVia_GrauVia._(6, _omitEnumNames ? '' : 'BR_3');
  static const GrauVia_GrauVia BR_3_BARRA_3SUP =
      GrauVia_GrauVia._(39, _omitEnumNames ? '' : 'BR_3_BARRA_3SUP');
  static const GrauVia_GrauVia BR_3SUP =
      GrauVia_GrauVia._(7, _omitEnumNames ? '' : 'BR_3SUP');
  static const GrauVia_GrauVia BR_3SUP_BARRA_4 =
      GrauVia_GrauVia._(40, _omitEnumNames ? '' : 'BR_3SUP_BARRA_4');
  static const GrauVia_GrauVia BR_4 =
      GrauVia_GrauVia._(8, _omitEnumNames ? '' : 'BR_4');
  static const GrauVia_GrauVia BR_4_BARRA_4SUP =
      GrauVia_GrauVia._(41, _omitEnumNames ? '' : 'BR_4_BARRA_4SUP');
  static const GrauVia_GrauVia BR_4SUP =
      GrauVia_GrauVia._(9, _omitEnumNames ? '' : 'BR_4SUP');
  static const GrauVia_GrauVia BR_4SUP_BARRA_5 =
      GrauVia_GrauVia._(42, _omitEnumNames ? '' : 'BR_4SUP_BARRA_5');
  static const GrauVia_GrauVia BR_5 =
      GrauVia_GrauVia._(10, _omitEnumNames ? '' : 'BR_5');
  static const GrauVia_GrauVia BR_5_BARRA_5SUP =
      GrauVia_GrauVia._(43, _omitEnumNames ? '' : 'BR_5_BARRA_5SUP');
  static const GrauVia_GrauVia BR_5SUP =
      GrauVia_GrauVia._(11, _omitEnumNames ? '' : 'BR_5SUP');
  static const GrauVia_GrauVia BR_5SUP_BARRA_6 =
      GrauVia_GrauVia._(44, _omitEnumNames ? '' : 'BR_5SUP_BARRA_6');
  static const GrauVia_GrauVia BR_6 =
      GrauVia_GrauVia._(12, _omitEnumNames ? '' : 'BR_6');
  static const GrauVia_GrauVia BR_6_BARRA_6SUP =
      GrauVia_GrauVia._(45, _omitEnumNames ? '' : 'BR_6_BARRA_6SUP');
  static const GrauVia_GrauVia BR_6SUP =
      GrauVia_GrauVia._(13, _omitEnumNames ? '' : 'BR_6SUP');
  static const GrauVia_GrauVia BR_6SUP_BARRA_7A =
      GrauVia_GrauVia._(46, _omitEnumNames ? '' : 'BR_6SUP_BARRA_7A');
  static const GrauVia_GrauVia BR_7A =
      GrauVia_GrauVia._(14, _omitEnumNames ? '' : 'BR_7A');
  static const GrauVia_GrauVia BR_7A_BARRA_7B =
      GrauVia_GrauVia._(47, _omitEnumNames ? '' : 'BR_7A_BARRA_7B');
  static const GrauVia_GrauVia BR_7B =
      GrauVia_GrauVia._(17, _omitEnumNames ? '' : 'BR_7B');
  static const GrauVia_GrauVia BR_7B_BARRA_7C =
      GrauVia_GrauVia._(48, _omitEnumNames ? '' : 'BR_7B_BARRA_7C');
  static const GrauVia_GrauVia BR_7C =
      GrauVia_GrauVia._(18, _omitEnumNames ? '' : 'BR_7C');
  static const GrauVia_GrauVia BR_7C_BARRA_8A =
      GrauVia_GrauVia._(49, _omitEnumNames ? '' : 'BR_7C_BARRA_8A');
  static const GrauVia_GrauVia BR_8A =
      GrauVia_GrauVia._(19, _omitEnumNames ? '' : 'BR_8A');
  static const GrauVia_GrauVia BR_8A_BARRA_8B =
      GrauVia_GrauVia._(50, _omitEnumNames ? '' : 'BR_8A_BARRA_8B');
  static const GrauVia_GrauVia BR_8B =
      GrauVia_GrauVia._(20, _omitEnumNames ? '' : 'BR_8B');
  static const GrauVia_GrauVia BR_8B_BARRA_8C =
      GrauVia_GrauVia._(51, _omitEnumNames ? '' : 'BR_8B_BARRA_8C');
  static const GrauVia_GrauVia BR_8C =
      GrauVia_GrauVia._(21, _omitEnumNames ? '' : 'BR_8C');
  static const GrauVia_GrauVia BR_8C_BARRA_9A =
      GrauVia_GrauVia._(52, _omitEnumNames ? '' : 'BR_8C_BARRA_9A');
  static const GrauVia_GrauVia BR_9A =
      GrauVia_GrauVia._(22, _omitEnumNames ? '' : 'BR_9A');
  static const GrauVia_GrauVia BR_9A_BARRA_9B =
      GrauVia_GrauVia._(53, _omitEnumNames ? '' : 'BR_9A_BARRA_9B');
  static const GrauVia_GrauVia BR_9B =
      GrauVia_GrauVia._(23, _omitEnumNames ? '' : 'BR_9B');
  static const GrauVia_GrauVia BR_9B_BARRA_9C =
      GrauVia_GrauVia._(54, _omitEnumNames ? '' : 'BR_9B_BARRA_9C');
  static const GrauVia_GrauVia BR_9C =
      GrauVia_GrauVia._(24, _omitEnumNames ? '' : 'BR_9C');
  static const GrauVia_GrauVia BR_9C_BARRA_10A =
      GrauVia_GrauVia._(55, _omitEnumNames ? '' : 'BR_9C_BARRA_10A');
  static const GrauVia_GrauVia BR_10A =
      GrauVia_GrauVia._(25, _omitEnumNames ? '' : 'BR_10A');
  static const GrauVia_GrauVia BR_10A_BARRA_10B =
      GrauVia_GrauVia._(56, _omitEnumNames ? '' : 'BR_10A_BARRA_10B');
  static const GrauVia_GrauVia BR_10B =
      GrauVia_GrauVia._(26, _omitEnumNames ? '' : 'BR_10B');
  static const GrauVia_GrauVia BR_10B_BARRA_10C =
      GrauVia_GrauVia._(57, _omitEnumNames ? '' : 'BR_10B_BARRA_10C');
  static const GrauVia_GrauVia BR_10C =
      GrauVia_GrauVia._(27, _omitEnumNames ? '' : 'BR_10C');
  static const GrauVia_GrauVia BR_10C_BARRA_11A =
      GrauVia_GrauVia._(58, _omitEnumNames ? '' : 'BR_10C_BARRA_11A');
  static const GrauVia_GrauVia BR_11A =
      GrauVia_GrauVia._(28, _omitEnumNames ? '' : 'BR_11A');
  static const GrauVia_GrauVia BR_11A_BARRA_11B =
      GrauVia_GrauVia._(59, _omitEnumNames ? '' : 'BR_11A_BARRA_11B');
  static const GrauVia_GrauVia BR_11B =
      GrauVia_GrauVia._(29, _omitEnumNames ? '' : 'BR_11B');
  static const GrauVia_GrauVia BR_11B_BARRA_11C =
      GrauVia_GrauVia._(60, _omitEnumNames ? '' : 'BR_11B_BARRA_11C');
  static const GrauVia_GrauVia BR_11C =
      GrauVia_GrauVia._(30, _omitEnumNames ? '' : 'BR_11C');
  static const GrauVia_GrauVia BR_11C_BARRA_12A =
      GrauVia_GrauVia._(61, _omitEnumNames ? '' : 'BR_11C_BARRA_12A');
  static const GrauVia_GrauVia BR_12A =
      GrauVia_GrauVia._(31, _omitEnumNames ? '' : 'BR_12A');
  static const GrauVia_GrauVia BR_12A_BARRA_12B =
      GrauVia_GrauVia._(62, _omitEnumNames ? '' : 'BR_12A_BARRA_12B');
  static const GrauVia_GrauVia BR_12B =
      GrauVia_GrauVia._(32, _omitEnumNames ? '' : 'BR_12B');
  static const GrauVia_GrauVia BR_12B_BARRA_12C =
      GrauVia_GrauVia._(63, _omitEnumNames ? '' : 'BR_12B_BARRA_12C');
  static const GrauVia_GrauVia BR_12C =
      GrauVia_GrauVia._(33, _omitEnumNames ? '' : 'BR_12C');
  static const GrauVia_GrauVia BR_12C_BARRA_13A =
      GrauVia_GrauVia._(64, _omitEnumNames ? '' : 'BR_12C_BARRA_13A');
  static const GrauVia_GrauVia BR_13A =
      GrauVia_GrauVia._(34, _omitEnumNames ? '' : 'BR_13A');

  static const GrauVia_GrauVia FR_1 = BR_1SUP;
  static const GrauVia_GrauVia US_5_0 = BR_1SUP;
  static const GrauVia_GrauVia FR_2A = BR_2;
  static const GrauVia_GrauVia US_5_2 = BR_2;
  static const GrauVia_GrauVia FR_2C = BR_2SUP;
  static const GrauVia_GrauVia US_5_3 = BR_2SUP;
  static const GrauVia_GrauVia FR_3B = BR_3;
  static const GrauVia_GrauVia US_5_5 = BR_3;
  static const GrauVia_GrauVia FR_4A = BR_3SUP;
  static const GrauVia_GrauVia US_5_6 = BR_3SUP;
  static const GrauVia_GrauVia FR_4B_MAIS = BR_4;
  static const GrauVia_GrauVia US_5_7 = BR_4;
  static const GrauVia_GrauVia FR_5A_MAIS = BR_4SUP;
  static const GrauVia_GrauVia US_5_9 = BR_4SUP;
  static const GrauVia_GrauVia FR_5C = BR_5;
  static const GrauVia_GrauVia US_5_10A = BR_5;
  static const GrauVia_GrauVia FR_6A_MAIS = BR_5SUP;
  static const GrauVia_GrauVia US_5_10B = BR_5SUP;
  static const GrauVia_GrauVia FR_6B = BR_6;
  static const GrauVia_GrauVia US_5_10C = BR_6;
  static const GrauVia_GrauVia FR_6B_MAIS = BR_6SUP;
  static const GrauVia_GrauVia US_5_10D = BR_6SUP;
  static const GrauVia_GrauVia FR_6C = BR_7A;
  static const GrauVia_GrauVia US_5_11A = BR_7A;
  static const GrauVia_GrauVia FR_6C_MAIS = BR_7B;
  static const GrauVia_GrauVia US_5_11c = BR_7B;
  static const GrauVia_GrauVia FR_7A = BR_7C;
  static const GrauVia_GrauVia US_5_11D = BR_7C;
  static const GrauVia_GrauVia FR_7A_MAIS = BR_8A;
  static const GrauVia_GrauVia US_5_12A = BR_8A;
  static const GrauVia_GrauVia FR_7B = BR_8B;
  static const GrauVia_GrauVia US_5_12B = BR_8B;
  static const GrauVia_GrauVia FR_7B_MAIS = BR_8C;
  static const GrauVia_GrauVia US_5_12C = BR_8C;
  static const GrauVia_GrauVia FR_7C = BR_9A;
  static const GrauVia_GrauVia US_5_12D = BR_9A;
  static const GrauVia_GrauVia FR_7C_MAIS = BR_9B;
  static const GrauVia_GrauVia US_5_13A = BR_9B;
  static const GrauVia_GrauVia FR_8A = BR_9C;
  static const GrauVia_GrauVia US_5_13B = BR_9C;
  static const GrauVia_GrauVia FR_8A_MAIS = BR_10A;
  static const GrauVia_GrauVia US_5_13C = BR_10A;
  static const GrauVia_GrauVia FR_8B = BR_10B;
  static const GrauVia_GrauVia US_5_13D = BR_10B;
  static const GrauVia_GrauVia FR_8B_MAIS = BR_10C;
  static const GrauVia_GrauVia US_5_14A = BR_10C;
  static const GrauVia_GrauVia FR_8C = BR_11A;
  static const GrauVia_GrauVia US_5_14B = BR_11A;
  static const GrauVia_GrauVia FR_8C_MAIS = BR_11B;
  static const GrauVia_GrauVia US_5_14C = BR_11B;
  static const GrauVia_GrauVia FR_9A = BR_11C;
  static const GrauVia_GrauVia US_5_14D = BR_11C;
  static const GrauVia_GrauVia FR_9A_MAIS = BR_12A;
  static const GrauVia_GrauVia US_5_15A = BR_12A;
  static const GrauVia_GrauVia FR_9B = BR_12B;
  static const GrauVia_GrauVia US_5_15B = BR_12B;
  static const GrauVia_GrauVia FR_9B_MAIS = BR_12C;
  static const GrauVia_GrauVia US_5_15C = BR_12C;
  static const GrauVia_GrauVia FR_9C = BR_13A;
  static const GrauVia_GrauVia US_5_15D = BR_13A;

  static const $core.List<GrauVia_GrauVia> values = <GrauVia_GrauVia>[
    INDEFINIDO,
    PROJETO,
    BR_1,
    BR_1_BARRA_1SUP,
    BR_1SUP,
    BR_1SUP_BARRA_2,
    BR_2,
    BR_2_BARRA_2SUP,
    BR_2SUP,
    BR_2SUP_BARRA_3,
    BR_3,
    BR_3_BARRA_3SUP,
    BR_3SUP,
    BR_3SUP_BARRA_4,
    BR_4,
    BR_4_BARRA_4SUP,
    BR_4SUP,
    BR_4SUP_BARRA_5,
    BR_5,
    BR_5_BARRA_5SUP,
    BR_5SUP,
    BR_5SUP_BARRA_6,
    BR_6,
    BR_6_BARRA_6SUP,
    BR_6SUP,
    BR_6SUP_BARRA_7A,
    BR_7A,
    BR_7A_BARRA_7B,
    BR_7B,
    BR_7B_BARRA_7C,
    BR_7C,
    BR_7C_BARRA_8A,
    BR_8A,
    BR_8A_BARRA_8B,
    BR_8B,
    BR_8B_BARRA_8C,
    BR_8C,
    BR_8C_BARRA_9A,
    BR_9A,
    BR_9A_BARRA_9B,
    BR_9B,
    BR_9B_BARRA_9C,
    BR_9C,
    BR_9C_BARRA_10A,
    BR_10A,
    BR_10A_BARRA_10B,
    BR_10B,
    BR_10B_BARRA_10C,
    BR_10C,
    BR_10C_BARRA_11A,
    BR_11A,
    BR_11A_BARRA_11B,
    BR_11B,
    BR_11B_BARRA_11C,
    BR_11C,
    BR_11C_BARRA_12A,
    BR_12A,
    BR_12A_BARRA_12B,
    BR_12B,
    BR_12B_BARRA_12C,
    BR_12C,
    BR_12C_BARRA_13A,
    BR_13A,
  ];

  static final $core.List<GrauVia_GrauVia?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 64);
  static GrauVia_GrauVia? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GrauVia_GrauVia._(super.value, super.name);
}

class GrauBoulder_GrauBoulder extends $pb.ProtobufEnum {
  static const GrauBoulder_GrauBoulder INDEFINIDO =
      GrauBoulder_GrauBoulder._(0, _omitEnumNames ? '' : 'INDEFINIDO');
  static const GrauBoulder_GrauBoulder VB =
      GrauBoulder_GrauBoulder._(1, _omitEnumNames ? '' : 'VB');
  static const GrauBoulder_GrauBoulder VB_BARRA_V0 =
      GrauBoulder_GrauBoulder._(20, _omitEnumNames ? '' : 'VB_BARRA_V0');
  static const GrauBoulder_GrauBoulder V0 =
      GrauBoulder_GrauBoulder._(2, _omitEnumNames ? '' : 'V0');
  static const GrauBoulder_GrauBoulder V0_BARRA_V1 =
      GrauBoulder_GrauBoulder._(21, _omitEnumNames ? '' : 'V0_BARRA_V1');
  static const GrauBoulder_GrauBoulder V1 =
      GrauBoulder_GrauBoulder._(3, _omitEnumNames ? '' : 'V1');
  static const GrauBoulder_GrauBoulder V1_BARRA_V2 =
      GrauBoulder_GrauBoulder._(22, _omitEnumNames ? '' : 'V1_BARRA_V2');
  static const GrauBoulder_GrauBoulder V2 =
      GrauBoulder_GrauBoulder._(4, _omitEnumNames ? '' : 'V2');
  static const GrauBoulder_GrauBoulder V2_BARRA_V3 =
      GrauBoulder_GrauBoulder._(23, _omitEnumNames ? '' : 'V2_BARRA_V3');
  static const GrauBoulder_GrauBoulder V3 =
      GrauBoulder_GrauBoulder._(5, _omitEnumNames ? '' : 'V3');
  static const GrauBoulder_GrauBoulder V3_BARRA_V4 =
      GrauBoulder_GrauBoulder._(24, _omitEnumNames ? '' : 'V3_BARRA_V4');
  static const GrauBoulder_GrauBoulder V4 =
      GrauBoulder_GrauBoulder._(6, _omitEnumNames ? '' : 'V4');
  static const GrauBoulder_GrauBoulder V4_BARRA_V5 =
      GrauBoulder_GrauBoulder._(25, _omitEnumNames ? '' : 'V4_BARRA_V5');
  static const GrauBoulder_GrauBoulder V5 =
      GrauBoulder_GrauBoulder._(7, _omitEnumNames ? '' : 'V5');
  static const GrauBoulder_GrauBoulder V5_BARRA_V6 =
      GrauBoulder_GrauBoulder._(26, _omitEnumNames ? '' : 'V5_BARRA_V6');
  static const GrauBoulder_GrauBoulder V6 =
      GrauBoulder_GrauBoulder._(8, _omitEnumNames ? '' : 'V6');
  static const GrauBoulder_GrauBoulder V6_BARRA_V7 =
      GrauBoulder_GrauBoulder._(27, _omitEnumNames ? '' : 'V6_BARRA_V7');
  static const GrauBoulder_GrauBoulder V7 =
      GrauBoulder_GrauBoulder._(9, _omitEnumNames ? '' : 'V7');
  static const GrauBoulder_GrauBoulder V7_BARRA_V8 =
      GrauBoulder_GrauBoulder._(28, _omitEnumNames ? '' : 'V7_BARRA_V8');
  static const GrauBoulder_GrauBoulder V8 =
      GrauBoulder_GrauBoulder._(10, _omitEnumNames ? '' : 'V8');
  static const GrauBoulder_GrauBoulder V8_BARRA_V9 =
      GrauBoulder_GrauBoulder._(29, _omitEnumNames ? '' : 'V8_BARRA_V9');
  static const GrauBoulder_GrauBoulder V9 =
      GrauBoulder_GrauBoulder._(11, _omitEnumNames ? '' : 'V9');
  static const GrauBoulder_GrauBoulder V9_BARRA_V10 =
      GrauBoulder_GrauBoulder._(30, _omitEnumNames ? '' : 'V9_BARRA_V10');
  static const GrauBoulder_GrauBoulder V10 =
      GrauBoulder_GrauBoulder._(12, _omitEnumNames ? '' : 'V10');
  static const GrauBoulder_GrauBoulder V10_BARRA_V11 =
      GrauBoulder_GrauBoulder._(31, _omitEnumNames ? '' : 'V10_BARRA_V11');
  static const GrauBoulder_GrauBoulder V11 =
      GrauBoulder_GrauBoulder._(13, _omitEnumNames ? '' : 'V11');
  static const GrauBoulder_GrauBoulder V11_BARRA_V12 =
      GrauBoulder_GrauBoulder._(32, _omitEnumNames ? '' : 'V11_BARRA_V12');
  static const GrauBoulder_GrauBoulder V12 =
      GrauBoulder_GrauBoulder._(14, _omitEnumNames ? '' : 'V12');
  static const GrauBoulder_GrauBoulder V12_BARRA_V13 =
      GrauBoulder_GrauBoulder._(33, _omitEnumNames ? '' : 'V12_BARRA_V13');
  static const GrauBoulder_GrauBoulder V13 =
      GrauBoulder_GrauBoulder._(15, _omitEnumNames ? '' : 'V13');
  static const GrauBoulder_GrauBoulder V13_BARRA_V14 =
      GrauBoulder_GrauBoulder._(34, _omitEnumNames ? '' : 'V13_BARRA_V14');
  static const GrauBoulder_GrauBoulder V14 =
      GrauBoulder_GrauBoulder._(16, _omitEnumNames ? '' : 'V14');
  static const GrauBoulder_GrauBoulder V14_BARRA_V15 =
      GrauBoulder_GrauBoulder._(35, _omitEnumNames ? '' : 'V14_BARRA_V15');
  static const GrauBoulder_GrauBoulder V15 =
      GrauBoulder_GrauBoulder._(17, _omitEnumNames ? '' : 'V15');
  static const GrauBoulder_GrauBoulder V15_BARRA_V16 =
      GrauBoulder_GrauBoulder._(36, _omitEnumNames ? '' : 'V15_BARRA_V16');
  static const GrauBoulder_GrauBoulder V16 =
      GrauBoulder_GrauBoulder._(18, _omitEnumNames ? '' : 'V16');
  static const GrauBoulder_GrauBoulder V16_BARRA_V17 =
      GrauBoulder_GrauBoulder._(37, _omitEnumNames ? '' : 'V16_BARRA_V17');
  static const GrauBoulder_GrauBoulder V17 =
      GrauBoulder_GrauBoulder._(19, _omitEnumNames ? '' : 'V17');

  static const $core.List<GrauBoulder_GrauBoulder> values =
      <GrauBoulder_GrauBoulder>[
    INDEFINIDO,
    VB,
    VB_BARRA_V0,
    V0,
    V0_BARRA_V1,
    V1,
    V1_BARRA_V2,
    V2,
    V2_BARRA_V3,
    V3,
    V3_BARRA_V4,
    V4,
    V4_BARRA_V5,
    V5,
    V5_BARRA_V6,
    V6,
    V6_BARRA_V7,
    V7,
    V7_BARRA_V8,
    V8,
    V8_BARRA_V9,
    V9,
    V9_BARRA_V10,
    V10,
    V10_BARRA_V11,
    V11,
    V11_BARRA_V12,
    V12,
    V12_BARRA_V13,
    V13,
    V13_BARRA_V14,
    V14,
    V14_BARRA_V15,
    V15,
    V15_BARRA_V16,
    V16,
    V16_BARRA_V17,
    V17,
  ];

  static final $core.List<GrauBoulder_GrauBoulder?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 37);
  static GrauBoulder_GrauBoulder? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GrauBoulder_GrauBoulder._(super.value, super.name);
}

class GrauArtificial_GrauArtificial extends $pb.ProtobufEnum {
  static const GrauArtificial_GrauArtificial INDEFINIDO =
      GrauArtificial_GrauArtificial._(0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// Pontos de apoio sólidos isolados ou em uma curta sequência, com pouca exposição.
  static const GrauArtificial_GrauArtificial A0 =
      GrauArtificial_GrauArtificial._(1, _omitEnumNames ? '' : 'A0');
  static const GrauArtificial_GrauArtificial A0_MAIS =
      GrauArtificial_GrauArtificial._(2, _omitEnumNames ? '' : 'A0_MAIS');

  /// Peças fixas ou colocações sólidas de material móvel, fáceis e seguras, em uma
  /// sequência razoavelmente longa.
  static const GrauArtificial_GrauArtificial A1 =
      GrauArtificial_GrauArtificial._(3, _omitEnumNames ? '' : 'A1');
  static const GrauArtificial_GrauArtificial A1_MAIS =
      GrauArtificial_GrauArtificial._(4, _omitEnumNames ? '' : 'A1_MAIS');

  /// Colocação geralmente sólida das proteções móveis, porém mais difíceis. Algumas
  /// colocações podem não ser sólidas, mas estarão logo acima de uma boa peça. Não
  /// há quedas perigosas.
  static const GrauArtificial_GrauArtificial A2 =
      GrauArtificial_GrauArtificial._(5, _omitEnumNames ? '' : 'A2');

  /// Como A2, mas com possibilidade de mais colocações ruins acima de uma boa. Potencial
  /// de queda aproximado de 6 a 9 metros, mas sem atingir platôs.
  static const GrauArtificial_GrauArtificial A2_MAIS =
      GrauArtificial_GrauArtificial._(6, _omitEnumNames ? '' : 'A2_MAIS');

  /// Artificial difícil. Várias colocações frágeis em sequência, poucas proteções sólidas.
  /// Potencial de queda de até 15 metros, mas geralmente não causa acidentes graves.
  static const GrauArtificial_GrauArtificial A3 =
      GrauArtificial_GrauArtificial._(7, _omitEnumNames ? '' : 'A3');

  /// Como A3, mas com maior potencial de quedas perigosas.
  static const GrauArtificial_GrauArtificial A3_MAIS =
      GrauArtificial_GrauArtificial._(8, _omitEnumNames ? '' : 'A3_MAIS');

  /// Escaladas muito perigosas. Quedas potenciais de 18 a 30 metros, com perigo de atingir
  /// platôs ou lacas de pedra. Peças que aguentam somente o peso do corpo.
  static const GrauArtificial_GrauArtificial A4 =
      GrauArtificial_GrauArtificial._(9, _omitEnumNames ? '' : 'A4');

  /// Como o A4, mas são necessárias várias horas para cada enfiada de corda.
  static const GrauArtificial_GrauArtificial A4_MAIS =
      GrauArtificial_GrauArtificial._(10, _omitEnumNames ? '' : 'A4_MAIS');

  /// Extremo, sob o ponto de vista técnico e psicológico.
  static const GrauArtificial_GrauArtificial A5 =
      GrauArtificial_GrauArtificial._(11, _omitEnumNames ? '' : 'A5');

  /// Como um A5 em que as paradas não são sólidas.
  static const GrauArtificial_GrauArtificial A5_MAIS =
      GrauArtificial_GrauArtificial._(12, _omitEnumNames ? '' : 'A5_MAIS');

  static const $core.List<GrauArtificial_GrauArtificial> values =
      <GrauArtificial_GrauArtificial>[
    INDEFINIDO,
    A0,
    A0_MAIS,
    A1,
    A1_MAIS,
    A2,
    A2_MAIS,
    A3,
    A3_MAIS,
    A4,
    A4_MAIS,
    A5,
    A5_MAIS,
  ];

  static final $core.List<GrauArtificial_GrauArtificial?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 12);
  static GrauArtificial_GrauArtificial? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GrauArtificial_GrauArtificial._(super.value, super.name);
}

class GrauDuracao_GrauDuracao extends $pb.ProtobufEnum {
  static const GrauDuracao_GrauDuracao INDEFINIDO =
      GrauDuracao_GrauDuracao._(0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// Poucas horas de escalada.
  static const GrauDuracao_GrauDuracao D1 =
      GrauDuracao_GrauDuracao._(1, _omitEnumNames ? '' : 'D1');

  /// Meio dia de escalada.
  static const GrauDuracao_GrauDuracao D2 =
      GrauDuracao_GrauDuracao._(2, _omitEnumNames ? '' : 'D2');

  /// Um dia quase inteiro de escalada.
  static const GrauDuracao_GrauDuracao D3 =
      GrauDuracao_GrauDuracao._(3, _omitEnumNames ? '' : 'D3');

  /// Um longo dia de escalada.
  static const GrauDuracao_GrauDuracao D4 =
      GrauDuracao_GrauDuracao._(4, _omitEnumNames ? '' : 'D4');

  /// Requer uma noite na parede. Cordadas muito velozes podem repeti-la em um dia.
  static const GrauDuracao_GrauDuracao D5 =
      GrauDuracao_GrauDuracao._(5, _omitEnumNames ? '' : 'D5');

  /// Dois dias inteiros ou mais de escalada. Normalmente inclui longos e complicados
  /// trechos de escalada em artificial.
  static const GrauDuracao_GrauDuracao D6 =
      GrauDuracao_GrauDuracao._(6, _omitEnumNames ? '' : 'D6');

  /// Expedições a locais de acesso remoto com longa aproximação e muitos dias de escalada.
  static const GrauDuracao_GrauDuracao D7 =
      GrauDuracao_GrauDuracao._(7, _omitEnumNames ? '' : 'D7');

  static const $core.List<GrauDuracao_GrauDuracao> values =
      <GrauDuracao_GrauDuracao>[
    INDEFINIDO,
    D1,
    D2,
    D3,
    D4,
    D5,
    D6,
    D7,
  ];

  static final $core.List<GrauDuracao_GrauDuracao?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static GrauDuracao_GrauDuracao? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GrauDuracao_GrauDuracao._(super.value, super.name);
}

class GrauExposicao_GrauExposicao extends $pb.ProtobufEnum {
  static const GrauExposicao_GrauExposicao INDEFINIDO =
      GrauExposicao_GrauExposicao._(0, _omitEnumNames ? '' : 'INDEFINIDO');

  /// Vias bem protegidas, grampeação nível esportiva.
  static const GrauExposicao_GrauExposicao E1 =
      GrauExposicao_GrauExposicao._(1, _omitEnumNames ? '' : 'E1');

  /// Vias com proteção regular.
  static const GrauExposicao_GrauExposicao E2 =
      GrauExposicao_GrauExposicao._(2, _omitEnumNames ? '' : 'E2');

  /// Vias com proteção regular com trechos perigosos.
  static const GrauExposicao_GrauExposicao E3 =
      GrauExposicao_GrauExposicao._(3, _omitEnumNames ? '' : 'E3');

  /// Vias perigosas em caso de queda.
  static const GrauExposicao_GrauExposicao E4 =
      GrauExposicao_GrauExposicao._(4, _omitEnumNames ? '' : 'E4');

  /// Vias muito perigosas em caso de queda.
  static const GrauExposicao_GrauExposicao E5 =
      GrauExposicao_GrauExposicao._(5, _omitEnumNames ? '' : 'E5');

  static const $core.List<GrauExposicao_GrauExposicao> values =
      <GrauExposicao_GrauExposicao>[
    INDEFINIDO,
    E1,
    E2,
    E3,
    E4,
    E5,
  ];

  static final $core.List<GrauExposicao_GrauExposicao?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static GrauExposicao_GrauExposicao? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GrauExposicao_GrauExposicao._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
