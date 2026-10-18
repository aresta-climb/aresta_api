# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

from __future__ import annotations

import importlib.util
import os
import sys
import tempfile
import unittest
from pathlib import Path
from typing import Any
from unittest.mock import patch

import pytest

_build_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "build.py")
_spec = importlib.util.spec_from_file_location("aresta_api_build", _build_path)
assert _spec is not None
assert _spec.loader is not None
build = importlib.util.module_from_spec(_spec)
sys.modules["build"] = build
_spec.loader.exec_module(build)

from src.validador_paridade import ErroParidadeContrato  # noqa: E402


class TestBuild(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.proto_dir = os.path.join(self.temp_dir.name, "proto")
        self.generated_dir = os.path.join(self.proto_dir, "generated")
        os.makedirs(self.proto_dir)

        self.dummy_proto = os.path.join(self.proto_dir, "dummy.proto")
        with open(self.dummy_proto, "w", encoding="utf-8") as f:
            f.write('syntax = "proto3";\nmessage Dummy { string id = 1; }\n')

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    @patch("build.protoc.main")
    @patch("build.os.path.abspath")
    def test_successful_build(self, mock_abspath: Any, mock_protoc: Any) -> None:
        mock_abspath.return_value = os.path.join(self.temp_dir.name, "build.py")
        mock_protoc.return_value = 0

        build.generate_protos(argv=[])

        mock_protoc.assert_called_once()
        args_chamada = mock_protoc.call_args[0][0]
        assert any(arg.startswith("--mypy_out=") for arg in args_chamada)
        assert any(arg.startswith("--python_out=") for arg in args_chamada)
        assert os.path.exists(os.path.join(self.generated_dir, ".protos_hash"))

        with open(os.path.join(self.generated_dir, "dummy_pb2.py"), "w", encoding="utf-8") as f:
            f.write("# dummy")
        with open(os.path.join(self.generated_dir, "dummy_pb2.pyi"), "w", encoding="utf-8") as f:
            f.write("# dummy pyi")

        build.generate_protos(argv=[])
        assert mock_protoc.call_count == 1

        with open(self.dummy_proto, "a", encoding="utf-8") as f:
            f.write("// Edição\n")

        build.generate_protos(argv=[])
        assert mock_protoc.call_count == 2

    @patch("build.protoc.main")
    @patch("build.os.path.abspath")
    def test_force_flag(self, mock_abspath: Any, mock_protoc: Any) -> None:
        mock_abspath.return_value = os.path.join(self.temp_dir.name, "build.py")
        mock_protoc.return_value = 0

        build.generate_protos(argv=[])
        assert mock_protoc.call_count == 1

        with open(os.path.join(self.generated_dir, "dummy_pb2.py"), "w", encoding="utf-8") as f:
            f.write("# dummy")

        build.generate_protos(argv=[])
        assert mock_protoc.call_count == 1

        build.generate_protos(argv=["-f"])
        assert mock_protoc.call_count == 2

        build.generate_protos(argv=["--force"])
        assert mock_protoc.call_count == 3

    @patch("build.os.path.abspath")
    def test_no_proto_files(self, mock_abspath: Any) -> None:
        mock_abspath.return_value = os.path.join(self.temp_dir.name, "build.py")
        os.remove(self.dummy_proto)

        with pytest.raises(SystemExit) as cm:
            build.generate_protos(argv=[])
        assert cm.value.code == 1

    @patch("build.protoc.main", return_value=1)
    @patch("build.os.path.abspath")
    def test_protoc_failure(self, mock_abspath: Any, mock_protoc: Any) -> None:
        mock_abspath.return_value = os.path.join(self.temp_dir.name, "build.py")

        with pytest.raises(SystemExit) as cm:
            build.generate_protos(argv=[])
        assert cm.value.code == 1
        assert mock_protoc.call_count == 1


def test_compilar_contratos_sql_e_openapi_com_paridade_e_cache(tmp_path: Path) -> None:
    dir_sql = tmp_path / "sql"
    dir_openapi = tmp_path / "openapi"
    dir_sql.mkdir()
    dir_openapi.mkdir()

    (dir_sql / "catalogo.sql").write_text(
        """
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT
);
CREATE TABLE IF NOT EXISTS catalogo_aresta (
    uid TEXT PRIMARY KEY,
    tipo TEXT NOT NULL,
    croqui_uid TEXT NOT NULL,
    nome TEXT NOT NULL,
    escalada_grau TEXT,
    escalada_tipo TEXT,
    setor_uid TEXT,
    grupo_uid TEXT
);
""",
        encoding="utf-8",
    )

    (dir_openapi / "catalogo.yaml").write_text(
        """
openapi: 3.1.0
info:
  title: Catalogo
  version: 1.0.0
servers:
  - url: https://catalogo.arestaclimb.com
paths: {}
components:
  schemas:
    CatalogoCroqui:
      type: object
      required: [croqui_uid, id_slug, nome, cidade, estado]
      properties:
        croqui_uid: { type: string }
        id_slug: { type: string }
        nome: { type: string }
        cidade: { type: [string, "null"] }
        estado: { type: [string, "null"] }
    CatalogoEntidade:
      type: object
      required: [uid, tipo, croqui_uid, nome, escalada_grau, escalada_tipo, setor_uid, grupo_uid]
      properties:
        uid: { type: string }
        tipo: { type: string }
        croqui_uid: { type: string }
        nome: { type: string }
        escalada_grau: { type: [string, "null"] }
        escalada_tipo: { type: [string, "null"] }
        setor_uid: { type: [string, "null"] }
        grupo_uid: { type: [string, "null"] }
""",
        encoding="utf-8",
    )

    # 1ª compilação gera artefatos e hashes
    build.compilar_contratos_sql_e_openapi(diretorio_raiz=tmp_path, forcar=False)
    assert (dir_sql / "generated" / "python" / "catalogo_sql.py").exists()
    assert (dir_openapi / "generated" / "python" / "catalogo.py").exists()
    assert (dir_sql / "generated" / ".sql_hash").exists()
    assert (dir_openapi / "generated" / ".openapi_hash").exists()

    # 2ª compilação com mesmo hash reutiliza o cache
    build.compilar_contratos_sql_e_openapi(diretorio_raiz=tmp_path, forcar=False)

    # 3ª compilação com forcar=True regera tudo
    build.compilar_contratos_sql_e_openapi(diretorio_raiz=tmp_path, forcar=True)


def test_compilar_contratos_sql_e_openapi_falha_quando_paridade_diverge(tmp_path: Path) -> None:
    dir_sql = tmp_path / "sql"
    dir_openapi = tmp_path / "openapi"
    dir_sql.mkdir()
    dir_openapi.mkdir()

    (dir_sql / "catalogo.sql").write_text(
        "CREATE TABLE catalogo_croquis (croqui_uid TEXT PRIMARY KEY, estado TEXT);",
        encoding="utf-8",
    )
    (dir_openapi / "catalogo.yaml").write_text(
        """
openapi: 3.1.0
info:
  title: Catalogo
  version: 1.0.0
paths: {}
components:
  schemas:
    CatalogoCroqui:
      type: object
      required: [croqui_uid, uf]
      properties:
        croqui_uid: { type: string }
        uf: { type: [string, "null"] }
""",
        encoding="utf-8",
    )

    with pytest.raises(ErroParidadeContrato, match="Divergência de colunas"):
        build.compilar_contratos_sql_e_openapi(diretorio_raiz=tmp_path, forcar=True)


def test_compilar_contratos_sql_e_openapi_ignora_quando_diretorios_ausentes(tmp_path: Path) -> None:
    build.compilar_contratos_sql_e_openapi(diretorio_raiz=tmp_path, forcar=False)
    assert not (tmp_path / "sql").exists()
