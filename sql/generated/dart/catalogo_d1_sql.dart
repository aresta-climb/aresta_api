// SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
// SPDX-License-Identifier: MPL-2.0
// ARQUIVO GERADO AUTOMATICAMENTE POR aresta_api/src/gerador_sql.py — NÃO EDITE MANUALMENTE.

const String ddlTabelaDeltasCatalogo = r'''
CREATE TABLE IF NOT EXISTS deltas_catalogo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    versao_hash TEXT NOT NULL UNIQUE,
    criado_em TEXT NOT NULL,
    upserts_json TEXT NOT NULL,
    deletes_json TEXT NOT NULL
);
''';

const String ddlIndiceIdxDeltasVersaoHash = r'''
CREATE INDEX IF NOT EXISTS idx_deltas_versao_hash
ON deltas_catalogo(versao_hash);
''';

const List<String> comandosDdlCatalogoD1 = <String>[
  ddlTabelaDeltasCatalogo,
  ddlIndiceIdxDeltasVersaoHash,
];

const String ddlCompletoCatalogoD1 = r'''
CREATE TABLE IF NOT EXISTS deltas_catalogo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    versao_hash TEXT NOT NULL UNIQUE,
    criado_em TEXT NOT NULL,
    upserts_json TEXT NOT NULL,
    deletes_json TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_deltas_versao_hash
ON deltas_catalogo(versao_hash);
''';

class LinhaDeltasCatalogo {
  final int id;
  final String versaoHash;
  final String criadoEm;
  final String upsertsJson;
  final String deletesJson;

  const LinhaDeltasCatalogo({
    this.id = 0,
    required this.versaoHash,
    required this.criadoEm,
    required this.upsertsJson,
    required this.deletesJson,
  });

  factory LinhaDeltasCatalogo.fromMap(Map<String, dynamic> map) {
    return LinhaDeltasCatalogo(
      id: (map['id'] as int?) ?? 0,
      versaoHash: map['versao_hash'] as String,
      criadoEm: map['criado_em'] as String,
      upsertsJson: map['upserts_json'] as String,
      deletesJson: map['deletes_json'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'versao_hash': versaoHash,
      'criado_em': criadoEm,
      'upserts_json': upsertsJson,
      'deletes_json': deletesJson,
    };
  }
}
