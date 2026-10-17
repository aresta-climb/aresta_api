// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoPrevia = 'https://previa.arestaclimb.com';
const String rotaVerificarSaudePrevia = '/health';
const String rotaCriarSessaoPrevia = '/sessoes';
const String rotaObterMetaSessaoPrevia = '/{codigo}/meta';
const String rotaConectarWebsocketPrevia = '/ws';

class RespostaSaudePrevia {
  final String servico;
  final String status;
  final int sessoesAtivas;

  const RespostaSaudePrevia({
    required this.servico,
    required this.status,
    required this.sessoesAtivas,
  });

  factory RespostaSaudePrevia.fromJson(Map<String, dynamic> json) {
    return RespostaSaudePrevia(
      servico: json['servico'] as String,
      status: json['status'] as String,
      sessoesAtivas: json['sessoesAtivas'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'servico': servico,
      'status': status,
      'sessoesAtivas': sessoesAtivas,
    };
  }
}

class RequisicaoCriarSessaoPrevia {
  final String? ipLocal;
  final int? portaLocal;
  final String? nomeCroqui;

  const RequisicaoCriarSessaoPrevia({
    this.ipLocal,
    this.portaLocal,
    this.nomeCroqui,
  });

  factory RequisicaoCriarSessaoPrevia.fromJson(Map<String, dynamic> json) {
    return RequisicaoCriarSessaoPrevia(
      ipLocal: json['ipLocal'] as String?,
      portaLocal: json['portaLocal'] as int?,
      nomeCroqui: json['nomeCroqui'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ipLocal': ipLocal,
      'portaLocal': portaLocal,
      'nomeCroqui': nomeCroqui,
    };
  }
}

class RespostaSessaoPrevia {
  final String codigo;
  final String codigoFormatado;
  final String urlPrevia;
  final String wsUrl;
  final int? expiraEm;

  const RespostaSessaoPrevia({
    required this.codigo,
    required this.codigoFormatado,
    required this.urlPrevia,
    required this.wsUrl,
    this.expiraEm,
  });

  factory RespostaSessaoPrevia.fromJson(Map<String, dynamic> json) {
    return RespostaSessaoPrevia(
      codigo: json['codigo'] as String,
      codigoFormatado: json['codigo_formatado'] as String,
      urlPrevia: json['url_previa'] as String,
      wsUrl: json['ws_url'] as String,
      expiraEm: json['expira_em'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'codigo': codigo,
      'codigo_formatado': codigoFormatado,
      'url_previa': urlPrevia,
      'ws_url': wsUrl,
      'expira_em': expiraEm,
    };
  }
}

class MetadadosSessaoPrevia {
  final String codigo;
  final int? criadoEm;
  final int? ultimoAcessoEm;
  final RequisicaoCriarSessaoPrevia? metadados;
  final String? ipLocal;
  final int? portaLocal;
  final String? urlLocal;
  final bool? editorConectado;

  const MetadadosSessaoPrevia({
    required this.codigo,
    this.criadoEm,
    this.ultimoAcessoEm,
    this.metadados,
    this.ipLocal,
    this.portaLocal,
    this.urlLocal,
    this.editorConectado,
  });

  factory MetadadosSessaoPrevia.fromJson(Map<String, dynamic> json) {
    return MetadadosSessaoPrevia(
      codigo: json['codigo'] as String,
      criadoEm: json['criadoEm'] as int?,
      ultimoAcessoEm: json['ultimoAcessoEm'] as int?,
      metadados: json['metadados'] != null ? RequisicaoCriarSessaoPrevia.fromJson(json['metadados'] as Map<String, dynamic>) : null,
      ipLocal: json['ipLocal'] as String?,
      portaLocal: json['portaLocal'] as int?,
      urlLocal: json['urlLocal'] as String?,
      editorConectado: json['editorConectado'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'codigo': codigo,
      'criadoEm': criadoEm,
      'ultimoAcessoEm': ultimoAcessoEm,
      'metadados': metadados?.toJson(),
      'ipLocal': ipLocal,
      'portaLocal': portaLocal,
      'urlLocal': urlLocal,
      'editorConectado': editorConectado,
    };
  }
}

class ErroPrevia {
  final String erro;

  const ErroPrevia({
    required this.erro,
  });

  factory ErroPrevia.fromJson(Map<String, dynamic> json) {
    return ErroPrevia(
      erro: json['erro'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'erro': erro,
    };
  }
}
