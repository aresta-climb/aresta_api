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

class FonteMidia_Enum extends $pb.ProtobufEnum {
  static const FonteMidia_Enum INDEFINIDO =
      FonteMidia_Enum._(0, _omitEnumNames ? '' : 'INDEFINIDO');
  static const FonteMidia_Enum YOUTUBE =
      FonteMidia_Enum._(1, _omitEnumNames ? '' : 'YOUTUBE');
  static const FonteMidia_Enum INSTAGRAM =
      FonteMidia_Enum._(2, _omitEnumNames ? '' : 'INSTAGRAM');
  static const FonteMidia_Enum BLOG =
      FonteMidia_Enum._(3, _omitEnumNames ? '' : 'BLOG');
  static const FonteMidia_Enum TIKTOK =
      FonteMidia_Enum._(4, _omitEnumNames ? '' : 'TIKTOK');
  static const FonteMidia_Enum FACEBOOK =
      FonteMidia_Enum._(5, _omitEnumNames ? '' : 'FACEBOOK');
  static const FonteMidia_Enum TWITTER =
      FonteMidia_Enum._(6, _omitEnumNames ? '' : 'TWITTER');
  static const FonteMidia_Enum REDDIT =
      FonteMidia_Enum._(7, _omitEnumNames ? '' : 'REDDIT');
  static const FonteMidia_Enum OUTRO_UGC =
      FonteMidia_Enum._(8, _omitEnumNames ? '' : 'OUTRO_UGC');

  static const $core.List<FonteMidia_Enum> values = <FonteMidia_Enum>[
    INDEFINIDO,
    YOUTUBE,
    INSTAGRAM,
    BLOG,
    TIKTOK,
    FACEBOOK,
    TWITTER,
    REDDIT,
    OUTRO_UGC,
  ];

  static final $core.List<FonteMidia_Enum?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static FonteMidia_Enum? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FonteMidia_Enum._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
