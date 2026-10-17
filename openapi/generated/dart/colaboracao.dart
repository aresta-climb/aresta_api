// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_openapi.py — NÃO EDITE MANUALMENTE.

const String urlServidorPadraoColaboracao = 'https://yzkhiaoqtxvvcyyuwmqg.supabase.co';
const String rotaCriarPullRequest = '/functions/v1/create-pr';
const String rotaGitProxyBase = '/functions/v1/git-proxy';
const String rotaGitProxyInfoRefs = '/functions/v1/git-proxy/info/refs';
const String rotaGitProxyReceivePack = '/functions/v1/git-proxy/git-receive-pack';

class RequisicaoCriarPullRequest {
  final String branch;
  final String title;
  final String description;
  final String? tokenUsuarioGithub;
  final String? githubUserToken;

  const RequisicaoCriarPullRequest({
    required this.branch,
    required this.title,
    required this.description,
    this.tokenUsuarioGithub,
    this.githubUserToken,
  });

  factory RequisicaoCriarPullRequest.fromJson(Map<String, dynamic> json) {
    return RequisicaoCriarPullRequest(
      branch: json['branch'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      tokenUsuarioGithub: json['token_usuario_github'] as String?,
      githubUserToken: json['github_user_token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'branch': branch,
      'title': title,
      'description': description,
      'token_usuario_github': tokenUsuarioGithub,
      'github_user_token': githubUserToken,
    };
  }
}

class RespostaCriarPullRequest {
  final int numeroPr;
  final String urlPr;
  final int prNumber;
  final String prUrl;
  final bool? atualizado;

  const RespostaCriarPullRequest({
    required this.numeroPr,
    required this.urlPr,
    required this.prNumber,
    required this.prUrl,
    this.atualizado,
  });

  factory RespostaCriarPullRequest.fromJson(Map<String, dynamic> json) {
    return RespostaCriarPullRequest(
      numeroPr: json['numero_pr'] as int,
      urlPr: json['url_pr'] as String,
      prNumber: json['pr_number'] as int,
      prUrl: json['pr_url'] as String,
      atualizado: json['atualizado'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'numero_pr': numeroPr,
      'url_pr': urlPr,
      'pr_number': prNumber,
      'pr_url': prUrl,
      'atualizado': atualizado,
    };
  }
}

class ErroColaboracao {
  final String erro;
  final List<String>? arquivosInvalidos;

  const ErroColaboracao({
    required this.erro,
    this.arquivosInvalidos,
  });

  factory ErroColaboracao.fromJson(Map<String, dynamic> json) {
    return ErroColaboracao(
      erro: json['erro'] as String,
      arquivosInvalidos: json['arquivos_invalidos'] != null ? (json['arquivos_invalidos'] as List<dynamic>).map((e) => e as String).toList() : null,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'erro': erro,
      'arquivos_invalidos': arquivosInvalidos,
    };
  }
}
