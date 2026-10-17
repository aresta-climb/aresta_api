# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

"""
Testes orientados a comportamento para `aresta_api/src/gerador_sql.py`.

Valida 100% dos comportamentos observáveis do inspetor SQLite e dos emissores de
código multi-linguagem (Python, TypeScript e Dart), seguindo a estrutura
Dado/Quando/Então e um teste por comportamento.
"""

from __future__ import annotations

import sqlite3
from pathlib import Path

import pytest

from .gerador_sql import (
    ErroEsquemaSqlInvalido,
    compilar_arquivos_sql,
    gerar_codigo_dart_sql,
    gerar_codigo_python_sql,
    gerar_codigo_ts_sql,
    inspecionar_esquema_sql,
)

SQL_COMPLETO_MULTI_TABELA = """
-- Comentário de cabeçalho com ponto e vírgula; não deve quebrar o parser
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    -- Identificador único
    croqui_uid TEXT PRIMARY KEY, -- Comentário inline; também ignorado
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT,
    atualizado_em INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS tabela_todos_os_tipos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    texto_obrigatorio TEXT NOT NULL,
    texto_opcional TEXT,
    texto_com_padrao TEXT NOT NULL DEFAULT 'padrao',
    inteiro_obrigatorio INTEGER NOT NULL,
    inteiro_opcional INTEGER,
    inteiro_com_padrao INTEGER NOT NULL DEFAULT 42,
    real_obrigatorio REAL NOT NULL,
    real_opcional REAL,
    real_com_padrao REAL NOT NULL DEFAULT 1.5,
    binario_obrigatorio BLOB NOT NULL,
    binario_opcional BLOB,
    binario_com_padrao BLOB NOT NULL DEFAULT X'00',
    camelCaseCol TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_croquis_slug
ON catalogo_croquis(id_slug);

CREATE UNIQUE INDEX IF NOT EXISTS idx_unico_texto
ON tabela_todos_os_tipos(texto_obrigatorio);
"""


# =============================================================================
# 1. Comportamentos de Inspeção e Validação SQL (inspecionar_esquema_sql)
# =============================================================================


def test_inspecionar_esquema_sql_preserva_ordem_e_metadados_das_tabelas() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")

    assert esquema.nome_modulo == "catalogo"
    assert [t.nome for t in esquema.tabelas] == ["catalogo_croquis", "tabela_todos_os_tipos"]
    assert [i.nome for i in esquema.indices] == ["idx_croquis_slug", "idx_unico_texto"]
    assert len(esquema.comandos_ddl) == 4
    assert esquema.ddl_completo == "\n\n".join(esquema.comandos_ddl)


def test_inspecionar_esquema_sql_remove_comentarios_de_linha_e_inline_do_ddl_extraido() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    ddl_croquis = esquema.tabelas[0].ddl

    assert "CREATE TABLE IF NOT EXISTS catalogo_croquis" in ddl_croquis
    assert "--" not in ddl_croquis
    assert "Comentário" not in ddl_croquis
    assert ddl_croquis.endswith(");")


def test_inspecionar_esquema_sql_identifica_chave_primaria_text_como_obrigatoria_sem_padrao() -> None:
    esquema = inspecionar_esquema_sql(
        "CREATE TABLE itens (uid TEXT PRIMARY KEY, nome TEXT NOT NULL);"
    )
    col_uid = esquema.tabelas[0].colunas[0]

    assert col_uid.nome == "uid"
    assert col_uid.tipo_sql == "TEXT"
    assert col_uid.chave_primaria is True
    assert col_uid.obrigatoria is True
    assert col_uid.possui_padrao is False


def test_inspecionar_esquema_sql_identifica_integer_primary_key_autoincrement_com_padrao() -> None:
    esquema = inspecionar_esquema_sql(
        "CREATE TABLE eventos (id INTEGER PRIMARY KEY AUTOINCREMENT, tipo TEXT NOT NULL);"
    )
    col_id = esquema.tabelas[0].colunas[0]

    assert col_id.nome == "id"
    assert col_id.tipo_sql == "INTEGER"
    assert col_id.chave_primaria is True
    assert col_id.obrigatoria is True
    assert col_id.possui_padrao is True


def test_inspecionar_esquema_sql_identifica_integer_primary_key_sem_autoincrement_sem_padrao() -> None:
    esquema = inspecionar_esquema_sql(
        "CREATE TABLE fixos (codigo INTEGER PRIMARY KEY, descricao TEXT NOT NULL);"
    )
    col_codigo = esquema.tabelas[0].colunas[0]

    assert col_codigo.nome == "codigo"
    assert col_codigo.tipo_sql == "INTEGER"
    assert col_codigo.chave_primaria is True
    assert col_codigo.obrigatoria is True
    assert col_codigo.possui_padrao is False


def test_inspecionar_esquema_sql_normaliza_tipos_declarados_em_minusculas() -> None:
    esquema = inspecionar_esquema_sql(
        """
        CREATE TABLE minusculas (
            a text primary key,
            b integer not null,
            c real,
            d blob
        );
        """
    )
    tipos = {c.nome: c.tipo_sql for c in esquema.tabelas[0].colunas}

    assert tipos == {"a": "TEXT", "b": "INTEGER", "c": "REAL", "d": "BLOB"}


def test_inspecionar_esquema_sql_extrai_indices_simples_e_unicos() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")

    idx_normal, idx_unico = esquema.indices
    assert idx_normal.nome == "idx_croquis_slug"
    assert idx_normal.nome_tabela == "catalogo_croquis"
    assert "CREATE INDEX IF NOT EXISTS idx_croquis_slug" in idx_normal.ddl

    assert idx_unico.nome == "idx_unico_texto"
    assert idx_unico.nome_tabela == "tabela_todos_os_tipos"
    assert "CREATE UNIQUE INDEX IF NOT EXISTS idx_unico_texto" in idx_unico.ddl


def test_inspecionar_esquema_sql_rejeita_sintaxe_sql_invalida() -> None:
    with pytest.raises(ErroEsquemaSqlInvalido, match="Erro de sintaxe SQL"):
        inspecionar_esquema_sql("CREATE TABELA_INEXISTENTE erro (id TEXT);", nome_modulo="quebrado")


def test_inspecionar_esquema_sql_rejeita_arquivo_sem_nenhuma_tabela() -> None:
    with pytest.raises(ErroEsquemaSqlInvalido, match="Nenhuma tabela encontrada no esquema 'vazio'"):
        inspecionar_esquema_sql("-- Arquivo apenas com comentários\n", nome_modulo="vazio")


@pytest.mark.parametrize("tipo_invalido", ["VARCHAR(50)", "NUMERIC", "BOOLEAN", "DATETIME"])
def test_inspecionar_esquema_sql_rejeita_tipos_nao_canonicos_sqlite(tipo_invalido: str) -> None:
    with pytest.raises(ErroEsquemaSqlInvalido, match="Tipo SQL não suportado"):
        inspecionar_esquema_sql(f"CREATE TABLE t (col {tipo_invalido} NOT NULL);")


# =============================================================================
# 2. Comportamentos de Geração Python (gerar_codigo_python_sql)
# =============================================================================


def test_gerar_codigo_python_sql_omite_not_required_quando_nenhuma_coluna_tem_padrao() -> None:
    esquema = inspecionar_esquema_sql(
        "CREATE TABLE simples (chave TEXT PRIMARY KEY, valor TEXT);"
    )
    codigo_py = gerar_codigo_python_sql(esquema)

    assert "from typing import TypedDict" in codigo_py
    assert "NotRequired" not in codigo_py
    assert "class LinhaSimples(TypedDict):" in codigo_py
    assert "    chave: str" in codigo_py
    assert "    valor: str | None" in codigo_py


def test_gerar_codigo_python_sql_importa_not_required_quando_coluna_possui_default() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_py = gerar_codigo_python_sql(esquema)

    assert "from typing import NotRequired, TypedDict" in codigo_py


def test_gerar_codigo_python_sql_mapeia_todos_os_tipos_e_nulabilidades_corretamente() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_py = gerar_codigo_python_sql(esquema)

    linhas_esperadas = [
        "class LinhaTabelaTodosOsTipos(TypedDict):",
        "    id: NotRequired[int]",
        "    texto_obrigatorio: str",
        "    texto_opcional: str | None",
        "    texto_com_padrao: NotRequired[str]",
        "    inteiro_obrigatorio: int",
        "    inteiro_opcional: int | None",
        "    inteiro_com_padrao: NotRequired[int]",
        "    real_obrigatorio: float",
        "    real_opcional: float | None",
        "    real_com_padrao: NotRequired[float]",
        "    binario_obrigatorio: bytes",
        "    binario_opcional: bytes | None",
        "    binario_com_padrao: NotRequired[bytes]",
        "    camelCaseCol: str",
    ]
    for esperado in linhas_esperadas:
        assert esperado in codigo_py


def test_gerar_codigo_python_sql_executa_ddl_e_cria_tabelas_e_indices_em_sqlite_real() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_py = gerar_codigo_python_sql(esquema)

    escopo: dict[str, object] = {}
    exec(codigo_py, escopo)

    assert escopo["COLUNAS_CATALOGO_CROQUIS"] == (
        "croqui_uid",
        "id_slug",
        "nome",
        "cidade",
        "estado",
        "atualizado_em",
    )
    comandos = escopo["COMANDOS_DDL"]
    assert isinstance(comandos, tuple)
    assert len(comandos) == 4
    assert escopo["DDL_COMPLETO"] == "\n\n".join(str(c) for c in comandos)

    conexao = sqlite3.connect(":memory:")
    try:
        for cmd in comandos:
            assert isinstance(cmd, str)
            conexao.execute(cmd)

        # Testa inserção real omitindo a coluna com DEFAULT (atualizado_em)
        conexao.execute(
            "INSERT INTO catalogo_croquis (croqui_uid, id_slug, nome, cidade, estado) "
            "VALUES ('u1', 'br_mg_igarape_pedra', 'Pedra Grande', 'Igarapé', 'MG')"
        )
        linha = conexao.execute(
            "SELECT croqui_uid, estado, atualizado_em FROM catalogo_croquis"
        ).fetchone()
        assert linha == ("u1", "MG", 0)
    finally:
        conexao.close()


# =============================================================================
# 3. Comportamentos de Geração TypeScript (gerar_codigo_ts_sql)
# =============================================================================


def test_gerar_codigo_ts_sql_emite_constantes_ddl_e_colunas_readonly() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_ts = gerar_codigo_ts_sql(esquema)

    assert "export const DDL_TABELA_CATALOGO_CROQUIS = `" in codigo_ts
    assert (
        'export const COLUNAS_CATALOGO_CROQUIS: readonly string[] = '
        '["croqui_uid", "id_slug", "nome", "cidade", "estado", "atualizado_em"];'
    ) in codigo_ts
    assert "export const DDL_TABELA_TABELA_TODOS_OS_TIPOS = `" in codigo_ts
    assert "export const DDL_INDICE_IDX_CROQUIS_SLUG = `" in codigo_ts
    assert "export const DDL_INDICE_IDX_UNICO_TEXTO = `" in codigo_ts
    assert (
        "export const COMANDOS_DDL: readonly string[] = [\n"
        "  DDL_TABELA_CATALOGO_CROQUIS,\n"
        "  DDL_TABELA_TABELA_TODOS_OS_TIPOS,\n"
        "  DDL_INDICE_IDX_CROQUIS_SLUG,\n"
        "  DDL_INDICE_IDX_UNICO_TEXTO,\n"
        "];"
    ) in codigo_ts
    assert 'export const DDL_COMPLETO: string = COMANDOS_DDL.join("\\n\\n");' in codigo_ts


def test_gerar_codigo_ts_sql_mapeia_todos_os_tipos_obrigatorios_anulaveis_e_opcionais() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_ts = gerar_codigo_ts_sql(esquema)

    bloco_esperado = "\n".join(
        [
            "export interface LinhaTabelaTodosOsTipos {",
            "  id?: number;",
            "  texto_obrigatorio: string;",
            "  texto_opcional: string | null;",
            "  texto_com_padrao?: string;",
            "  inteiro_obrigatorio: number;",
            "  inteiro_opcional: number | null;",
            "  inteiro_com_padrao?: number;",
            "  real_obrigatorio: number;",
            "  real_opcional: number | null;",
            "  real_com_padrao?: number;",
            "  binario_obrigatorio: Uint8Array;",
            "  binario_opcional: Uint8Array | null;",
            "  binario_com_padrao?: Uint8Array;",
            "  camelCaseCol: string;",
            "}",
        ]
    )
    assert bloco_esperado in codigo_ts


# =============================================================================
# 4. Comportamentos de Geração Dart (gerar_codigo_dart_sql)
# =============================================================================


def test_gerar_codigo_dart_sql_emite_constantes_ddl_camel_case() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo_d1")
    codigo_dart = gerar_codigo_dart_sql(esquema)

    assert "const String ddlTabelaCatalogoCroquis = r'''" in codigo_dart
    assert "const String ddlTabelaTabelaTodosOsTipos = r'''" in codigo_dart
    assert "const String ddlIndiceIdxCroquisSlug = r'''" in codigo_dart
    assert "const String ddlIndiceIdxUnicoTexto = r'''" in codigo_dart
    assert (
        "const List<String> comandosDdlCatalogoD1 = <String>[\n"
        "  ddlTabelaCatalogoCroquis,\n"
        "  ddlTabelaTabelaTodosOsTipos,\n"
        "  ddlIndiceIdxCroquisSlug,\n"
        "  ddlIndiceIdxUnicoTexto,\n"
        "];"
    ) in codigo_dart
    assert "const String ddlCompletoCatalogoD1 = r'''" in codigo_dart


def test_gerar_codigo_dart_sql_declara_campos_finais_e_construtor_com_valores_padrao() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_dart = gerar_codigo_dart_sql(esquema)

    campos_esperados = [
        "  final int id;",
        "  final String textoObrigatorio;",
        "  final String? textoOpcional;",
        "  final String textoComPadrao;",
        "  final int inteiroObrigatorio;",
        "  final int? inteiroOpcional;",
        "  final int inteiroComPadrao;",
        "  final double realObrigatorio;",
        "  final double? realOpcional;",
        "  final double realComPadrao;",
        "  final List<int> binarioObrigatorio;",
        "  final List<int>? binarioOpcional;",
        "  final List<int> binarioComPadrao;",
        "  final String camelCaseCol;",
    ]
    for campo in campos_esperados:
        assert campo in codigo_dart

    construtor_esperado = "\n".join(
        [
            "  const LinhaTabelaTodosOsTipos({",
            "    this.id = 0,",
            "    required this.textoObrigatorio,",
            "    this.textoOpcional,",
            "    this.textoComPadrao = '',",
            "    required this.inteiroObrigatorio,",
            "    this.inteiroOpcional,",
            "    this.inteiroComPadrao = 0,",
            "    required this.realObrigatorio,",
            "    this.realOpcional,",
            "    this.realComPadrao = 0.0,",
            "    required this.binarioObrigatorio,",
            "    this.binarioOpcional,",
            "    this.binarioComPadrao = const <int>[],",
            "    required this.camelCaseCol,",
            "  });",
        ]
    )
    assert construtor_esperado in codigo_dart


def test_gerar_codigo_dart_sql_emite_from_map_e_to_map_para_todas_combinacoes() -> None:
    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    codigo_dart = gerar_codigo_dart_sql(esquema)

    from_map_esperado = "\n".join(
        [
            "  factory LinhaTabelaTodosOsTipos.fromMap(Map<String, dynamic> map) {",
            "    return LinhaTabelaTodosOsTipos(",
            "      id: (map['id'] as int?) ?? 0,",
            "      textoObrigatorio: map['texto_obrigatorio'] as String,",
            "      textoOpcional: map['texto_opcional'] as String?,",
            "      textoComPadrao: (map['texto_com_padrao'] as String?) ?? '',",
            "      inteiroObrigatorio: map['inteiro_obrigatorio'] as int,",
            "      inteiroOpcional: map['inteiro_opcional'] as int?,",
            "      inteiroComPadrao: (map['inteiro_com_padrao'] as int?) ?? 0,",
            "      realObrigatorio: (map['real_obrigatorio'] as num).toDouble(),",
            "      realOpcional: (map['real_opcional'] as num?)?.toDouble(),",
            "      realComPadrao: (map['real_com_padrao'] as num?)?.toDouble() ?? 0.0,",
            "      binarioObrigatorio: List<int>.from(map['binario_obrigatorio'] as List),",
            "      binarioOpcional: map['binario_opcional'] != null ? List<int>.from(map['binario_opcional'] as List) : null,",
            "      binarioComPadrao: map['binario_com_padrao'] != null ? List<int>.from(map['binario_com_padrao'] as List) : <int>[],",
            "      camelCaseCol: map['camelCaseCol'] as String,",
            "    );",
            "  }",
        ]
    )
    assert from_map_esperado in codigo_dart

    to_map_esperado = "\n".join(
        [
            "  Map<String, dynamic> toMap() {",
            "    return <String, dynamic>{",
            "      'id': id,",
            "      'texto_obrigatorio': textoObrigatorio,",
            "      'texto_opcional': textoOpcional,",
            "      'texto_com_padrao': textoComPadrao,",
            "      'inteiro_obrigatorio': inteiroObrigatorio,",
            "      'inteiro_opcional': inteiroOpcional,",
            "      'inteiro_com_padrao': inteiroComPadrao,",
            "      'real_obrigatorio': realObrigatorio,",
            "      'real_opcional': realOpcional,",
            "      'real_com_padrao': realComPadrao,",
            "      'binario_obrigatorio': binarioObrigatorio,",
            "      'binario_opcional': binarioOpcional,",
            "      'binario_com_padrao': binarioComPadrao,",
            "      'camelCaseCol': camelCaseCol,",
            "    };",
            "  }",
        ]
    )
    assert to_map_esperado in codigo_dart


# =============================================================================
# 5. Compilação em Diretório e Contratos Reais do Repositório
# =============================================================================


def test_compilar_arquivos_sql_gera_arvore_completa_python_dart_ts(tmp_path: Path) -> None:
    dir_sql = tmp_path / "sql"
    dir_sql.mkdir()
    (dir_sql / "alfa.sql").write_text(
        "CREATE TABLE alfa (id TEXT PRIMARY KEY);", encoding="utf-8"
    )
    (dir_sql / "beta.sql").write_text(
        "CREATE TABLE beta (id INTEGER PRIMARY KEY AUTOINCREMENT);", encoding="utf-8"
    )

    dir_saida = dir_sql / "generated"
    arquivos_gerados = compilar_arquivos_sql(dir_sql, dir_saida)

    assert (dir_saida / "python" / "__init__.py").exists()
    assert (dir_saida / "python" / "alfa_sql.py").exists()
    assert (dir_saida / "python" / "beta_sql.py").exists()
    assert (dir_saida / "dart" / "alfa_sql.dart").exists()
    assert (dir_saida / "dart" / "beta_sql.dart").exists()
    assert (dir_saida / "ts" / "alfa_sql.ts").exists()
    assert (dir_saida / "ts" / "beta_sql.ts").exists()
    assert len(arquivos_gerados) == 7


def test_esquemas_reais_catalogo_e_catalogo_d1_possuem_colunas_e_indices_canonicos() -> None:
    raiz_api = Path(__file__).resolve().parent.parent
    sql_catalogo = (raiz_api / "sql" / "catalogo.sql").read_text(encoding="utf-8")
    sql_d1 = (raiz_api / "sql" / "catalogo_d1.sql").read_text(encoding="utf-8")

    esquema_catalogo = inspecionar_esquema_sql(sql_catalogo, nome_modulo="catalogo")
    assert [t.nome for t in esquema_catalogo.tabelas] == [
        "catalogo_croquis",
        "catalogo_aresta",
        "catalogo_meta",
    ]
    colunas_croquis = [c.nome for c in esquema_catalogo.tabelas[0].colunas]
    assert colunas_croquis == [
        "croqui_uid",
        "id_slug",
        "nome",
        "cidade",
        "estado",
        "atualizado_em",
    ]
    assert [i.nome for i in esquema_catalogo.indices] == [
        "idx_catalogo_aresta_croqui",
        "idx_catalogo_aresta_nome",
        "idx_catalogo_aresta_tipo",
    ]

    esquema_d1 = inspecionar_esquema_sql(sql_d1, nome_modulo="catalogo_d1")
    assert [t.nome for t in esquema_d1.tabelas] == ["deltas_catalogo"]
    assert [c.nome for c in esquema_d1.tabelas[0].colunas] == [
        "id",
        "versao_hash",
        "criado_em",
        "upserts_json",
        "deletes_json",
    ]
    assert [i.nome for i in esquema_d1.indices] == ["idx_deltas_versao_hash"]


def test_execucao_real_typescript_gerado_no_deno(tmp_path: Path) -> None:
    import shutil
    import subprocess

    binario_deno = shutil.which("deno")
    if not binario_deno:  # pragma: no cover
        pytest.skip("Deno não disponível no PATH")

    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    arq_modulo = tmp_path / "catalogo_sql.ts"
    arq_modulo.write_text(gerar_codigo_ts_sql(esquema), encoding="utf-8")

    arq_teste = tmp_path / "verificar_ts.ts"
    arq_teste.write_text(
        """
import {
  COLUNAS_CATALOGO_CROQUIS,
  COMANDOS_DDL,
  DDL_COMPLETO,
  LinhaCatalogoCroquis,
  LinhaTabelaTodosOsTipos,
} from "./catalogo_sql.ts";

const croqui: LinhaCatalogoCroquis = {
  croqui_uid: "u1",
  id_slug: "br_mg_igarape_pedra",
  nome: "Pedra Grande",
  cidade: "Igarapé",
  estado: "MG",
};

const linhaCompleta: LinhaTabelaTodosOsTipos = {
  texto_obrigatorio: "ok",
  texto_opcional: null,
  inteiro_obrigatorio: 10,
  inteiro_opcional: null,
  real_obrigatorio: 2.5,
  real_opcional: null,
  binario_obrigatorio: new Uint8Array([1, 2, 3]),
  binario_opcional: null,
  camelCaseCol: "valor",
};

if (COLUNAS_CATALOGO_CROQUIS[4] !== "estado") throw new Error("Coluna estado incorreta");
if (COMANDOS_DDL.length !== 4) throw new Error("Quantidade de comandos DDL incorreta");
if (!DDL_COMPLETO.includes("catalogo_croquis")) throw new Error("DDL_COMPLETO inválido");
if (croqui.estado !== "MG" || linhaCompleta.inteiro_obrigatorio !== 10) {
  throw new Error("Valores inválidos");
}
""",
        encoding="utf-8",
    )

    resultado = subprocess.run(
        [binario_deno, "run", str(arq_teste)],
        capture_output=True,
        text=True,
        check=False,
    )
    assert resultado.returncode == 0, f"Erro no Deno: {resultado.stderr}"


def test_execucao_real_roundtrip_dart_gerado_na_vm_dart(tmp_path: Path) -> None:
    import shutil
    import subprocess

    binario_dart = shutil.which("dart")
    if not binario_dart:  # pragma: no cover
        pytest.skip("Dart não disponível no PATH")

    esquema = inspecionar_esquema_sql(SQL_COMPLETO_MULTI_TABELA, nome_modulo="catalogo")
    arq_modulo = tmp_path / "catalogo_sql.dart"
    arq_modulo.write_text(gerar_codigo_dart_sql(esquema), encoding="utf-8")

    arq_main = tmp_path / "verificar_dart.dart"
    arq_main.write_text(
        """
import 'catalogo_sql.dart';

void main() {
  assert(comandosDdlCatalogo.length == 4);
  assert(ddlCompletoCatalogo.contains('catalogo_croquis'));

  // 1. Testa round-trip completo com valores preenchidos
  final original = LinhaTabelaTodosOsTipos(
    id: 7,
    textoObrigatorio: 'abc',
    textoOpcional: 'opc',
    textoComPadrao: 'custom',
    inteiroObrigatorio: 99,
    inteiroOpcional: 12,
    inteiroComPadrao: 5,
    realObrigatorio: 3.14,
    realOpcional: 2.71,
    realComPadrao: 9.5,
    binarioObrigatorio: <int>[10, 20],
    binarioOpcional: <int>[30],
    binarioComPadrao: <int>[40],
    camelCaseCol: 'camel',
  );

  final mapa = original.toMap();
  final reconstruido = LinhaTabelaTodosOsTipos.fromMap(mapa);
  if (reconstruido.id != 7) throw StateError('id divergente');
  if (reconstruido.textoObrigatorio != 'abc') throw StateError('textoObrigatorio divergente');
  if (reconstruido.textoOpcional != 'opc') throw StateError('textoOpcional divergente');
  if (reconstruido.inteiroOpcional != 12) throw StateError('inteiroOpcional divergente');
  if (reconstruido.realObrigatorio != 3.14) throw StateError('realObrigatorio divergente');
  if (reconstruido.binarioObrigatorio.length != 2) throw StateError('binarioObrigatorio divergente');
  if (reconstruido.binarioOpcional?.first != 30) throw StateError('binarioOpcional divergente');

  // 2. Testa round-trip com campos anuláveis nulos e campos com padrão ausentes no mapa
  final mapaMinimo = <String, dynamic>{
    'texto_obrigatorio': 'min',
    'texto_opcional': null,
    'inteiro_obrigatorio': 1,
    'inteiro_opcional': null,
    'real_obrigatorio': 5, // int convertido via (as num).toDouble()
    'real_opcional': null,
    'binario_obrigatorio': <int>[1],
    'binario_opcional': null,
    'camelCaseCol': 'ok',
  };
  final minimo = LinhaTabelaTodosOsTipos.fromMap(mapaMinimo);
  if (minimo.id != 0) throw StateError('Padrao id falhou');
  if (minimo.textoComPadrao != '') throw StateError('Padrao texto falhou');
  if (minimo.inteiroComPadrao != 0) throw StateError('Padrao int falhou');
  if (minimo.realComPadrao != 0.0) throw StateError('Padrao double falhou');
  if (minimo.binarioComPadrao.isNotEmpty) throw StateError('Padrao blob falhou');
  if (minimo.textoOpcional != null || minimo.realOpcional != null || minimo.binarioOpcional != null) {
    throw StateError('Nulos falharam');
  }
}
""",
        encoding="utf-8",
    )

    resultado = subprocess.run(
        [binario_dart, "run", str(arq_main)],
        capture_output=True,
        text=True,
        check=False,
    )
    assert resultado.returncode == 0, f"Erro no Dart: {resultado.stderr}\n{resultado.stdout}"

