// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoFeedback = 'https://yzkhiaoqtxvvcyyuwmqg.supabase.co';
const String rotaEnviarFeedbackApp = '/functions/v1/app-feedback';
const String rotaEnviarFeedbackDiscord = '/functions/v1/discord-feedback';
const String rotaVerificarSaudeFeedback = '/health';
const String rotaObterDiagnosticoFeedback = '/diagnostico/{id}';
const String rotaObterAnexoFeedback = '/anexos/{caminho}';

class MetadadosFeedbackApp {
  final String feedbackId;
  final String tipoFeedback;
  final String? croquiId;
  final String? modoAcessoCroqui;
  final String? appVersion;
  final String? os;
  final String? osVersion;
  final String? deviceModel;
  final String? screenSize;
  final String? deviceOrientation;
  final bool? isDarkMode;
  final String? connectivity;
  final String? appInstanceId;
  final String? submittedAt;
  final String? submittedAtTimestamp;
  final List<String>? breadcrumbs;
  final String? navigationTree;
  final String? indiceSha256;
  final String? croquiStatus;
  final String? thumbnailStatus;

  const MetadadosFeedbackApp({
    required this.feedbackId,
    required this.tipoFeedback,
    this.croquiId,
    this.modoAcessoCroqui,
    this.appVersion,
    this.os,
    this.osVersion,
    this.deviceModel,
    this.screenSize,
    this.deviceOrientation,
    this.isDarkMode,
    this.connectivity,
    this.appInstanceId,
    this.submittedAt,
    this.submittedAtTimestamp,
    this.breadcrumbs,
    this.navigationTree,
    this.indiceSha256,
    this.croquiStatus,
    this.thumbnailStatus,
  });

  factory MetadadosFeedbackApp.fromJson(Map<String, dynamic> json) {
    return MetadadosFeedbackApp(
      feedbackId: json['feedbackId'] as String,
      tipoFeedback: json['tipo_feedback'] as String,
      croquiId: json['croqui_id'] as String?,
      modoAcessoCroqui: json['modo_acesso_croqui'] as String?,
      appVersion: json['appVersion'] as String?,
      os: json['os'] as String?,
      osVersion: json['osVersion'] as String?,
      deviceModel: json['deviceModel'] as String?,
      screenSize: json['screenSize'] as String?,
      deviceOrientation: json['deviceOrientation'] as String?,
      isDarkMode: json['isDarkMode'] as bool?,
      connectivity: json['connectivity'] as String?,
      appInstanceId: json['appInstanceId'] as String?,
      submittedAt: json['submittedAt'] as String?,
      submittedAtTimestamp: json['submittedAtTimestamp'] as String?,
      breadcrumbs: json['breadcrumbs'] != null ? (json['breadcrumbs'] as List<dynamic>).map((e) => e as String).toList() : null,
      navigationTree: json['navigationTree'] as String?,
      indiceSha256: json['indice_sha256'] as String?,
      croquiStatus: json['croqui_status'] as String?,
      thumbnailStatus: json['thumbnail_status'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'feedbackId': feedbackId,
      'tipo_feedback': tipoFeedback,
      'croqui_id': croquiId,
      'modo_acesso_croqui': modoAcessoCroqui,
      'appVersion': appVersion,
      'os': os,
      'osVersion': osVersion,
      'deviceModel': deviceModel,
      'screenSize': screenSize,
      'deviceOrientation': deviceOrientation,
      'isDarkMode': isDarkMode,
      'connectivity': connectivity,
      'appInstanceId': appInstanceId,
      'submittedAt': submittedAt,
      'submittedAtTimestamp': submittedAtTimestamp,
      'breadcrumbs': breadcrumbs,
      'navigationTree': navigationTree,
      'indice_sha256': indiceSha256,
      'croqui_status': croquiStatus,
      'thumbnail_status': thumbnailStatus,
    };
  }
}

class RequisicaoMultipartFeedbackApp {
  final String description;
  final String metadata;
  final String? screenshot;
  final String? indiceFile;
  final String? croquiFile;

  const RequisicaoMultipartFeedbackApp({
    required this.description,
    required this.metadata,
    this.screenshot,
    this.indiceFile,
    this.croquiFile,
  });

  factory RequisicaoMultipartFeedbackApp.fromJson(Map<String, dynamic> json) {
    return RequisicaoMultipartFeedbackApp(
      description: json['description'] as String,
      metadata: json['metadata'] as String,
      screenshot: json['screenshot'] as String?,
      indiceFile: json['indice_file'] as String?,
      croquiFile: json['croqui_file'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'description': description,
      'metadata': metadata,
      'screenshot': screenshot,
      'indice_file': indiceFile,
      'croqui_file': croquiFile,
    };
  }
}

class RespostaFeedback {
  final bool success;
  final String message;
  final String? issueUrl;

  const RespostaFeedback({
    required this.success,
    required this.message,
    this.issueUrl,
  });

  factory RespostaFeedback.fromJson(Map<String, dynamic> json) {
    return RespostaFeedback(
      success: json['success'] as bool,
      message: json['message'] as String,
      issueUrl: json['issue_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'issue_url': issueUrl,
    };
  }
}

class ErroFeedback {
  final String error;

  const ErroFeedback({
    required this.error,
  });

  factory ErroFeedback.fromJson(Map<String, dynamic> json) {
    return ErroFeedback(
      error: json['error'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'error': error,
    };
  }
}
