# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

from __future__ import annotations

import argparse
import glob
import hashlib
import os
import sys
from pathlib import Path

from grpc_tools import protoc

_ESTE_DIRETORIO = os.path.dirname(os.path.abspath(__file__))
if _ESTE_DIRETORIO not in sys.path:
    sys.path.insert(0, _ESTE_DIRETORIO)

from src.gerador_openapi import (  # noqa: E402
    compilar_arquivos_openapi,
    inspecionar_especificacao_openapi,
)
from src.gerador_sql import (  # noqa: E402
    compilar_arquivos_sql,
    inspecionar_esquema_sql,
)
from src.validador_paridade import (  # noqa: E402
    MAPEAMENTO_PARIDADE_CATALOGO,
    validar_paridade_esquemas,
)


def get_protos_hash(proto_files: list[str]) -> str:
    """Calcula um hash único de todos os arquivos .proto para detectar mudanças."""
    hasher = hashlib.sha256()
    for f in sorted(proto_files):
        with open(f, "rb") as fp:
            hasher.update(fp.read())
    return hasher.hexdigest()


def generate_protos(argv: list[str] | None = None) -> None:
    """
    Gera arquivos do Protobuf para Python e Dart.
    argv: Lista de argumentos (ex: ['-f']). Se None, usa sys.argv[1:].
    """
    parser = argparse.ArgumentParser(description="Gera arquivos do Protobuf para Python e Dart.")
    parser.add_argument(
        "-f",
        "--force",
        action="store_true",
        help="Força a re-geração dos arquivos, ignorando o cache de hash.",
    )
    args = parser.parse_args(argv)

    root_dir = os.path.dirname(os.path.abspath(__file__))
    proto_dir = os.path.join(root_dir, "proto")
    generated_dir = os.path.join(proto_dir, "generated")
    hash_file = os.path.join(generated_dir, ".protos_hash")

    os.makedirs(generated_dir, exist_ok=True)

    proto_files = glob.glob(os.path.join(proto_dir, "*.proto"))
    if not proto_files:
        print("Nenhum arquivo .proto encontrado em", proto_dir)
        sys.exit(1)

    current_hash = get_protos_hash(proto_files)

    if not args.force and os.path.exists(hash_file):
        with open(hash_file) as f:
            saved_hash = f.read().strip()

        gerados = [
            f
            for f in os.listdir(generated_dir)
            if f.endswith("_pb2.py") or f.endswith("_pb2.pyi") or f.endswith(".pb.dart")
        ]

        if current_hash == saved_hash and gerados:
            print("Nenhuma alteração nos arquivos .proto. Compilação pulada.")
            init_path = os.path.join(generated_dir, "__init__.py")
            if not os.path.exists(init_path):
                with open(init_path, "w") as f:
                    f.write("")
            return

    init_path = os.path.join(generated_dir, "__init__.py")
    if not os.path.exists(init_path) or os.path.getsize(init_path) == 0:
        with open(init_path, "w") as f:
            f.write("import sys\nimport os\nsys.path.insert(0, os.path.dirname(__file__))\n")

    print(f"Foram encontrados {len(proto_files)} arquivos .proto. Gerando os arquivos...")

    from importlib.resources import files

    well_known_types_dir = str(files("grpc_tools").joinpath("_proto"))

    protoc_args = [
        "grpc_tools.protoc",
        f"-I{proto_dir}",
        f"-I{well_known_types_dir}",
        f"--python_out={generated_dir}",
        f"--mypy_out={generated_dir}",
        f"--dart_out={generated_dir}",
        *proto_files,
    ]

    print("Executando o protoc para Python e Dart...")
    exit_code = protoc.main(protoc_args)
    if exit_code != 0:
        print("Erro ao gerar os arquivos do Protobuf.", file=sys.stderr)
        sys.exit(exit_code)
    else:
        print("Arquivos do Python e Dart gerados com sucesso.")
        with open(hash_file, "w") as f:
            f.write(current_hash)


def compilar_contratos_sql_e_openapi(
    diretorio_raiz: Path | str | None = None,
    forcar: bool = False,
) -> None:
    """
    Valida paridade SQL ↔ OpenAPI e compila os contratos `sql/*.sql` e `openapi/*.yaml`
    para Python, Dart e TypeScript.
    """
    raiz = Path(diretorio_raiz) if diretorio_raiz is not None else Path(os.path.dirname(os.path.abspath(__file__)))
    dir_sql = raiz / "sql"
    dir_openapi = raiz / "openapi"

    if not dir_sql.exists() or not dir_openapi.exists():
        return

    arquivos_sql = sorted(dir_sql.glob("*.sql"))
    arquivos_yaml = sorted(dir_openapi.glob("*.yaml"))

    # Valida paridade entre catalogo.sql e catalogo.yaml quando presentes
    arq_catalogo_sql = dir_sql / "catalogo.sql"
    arq_catalogo_yaml = dir_openapi / "catalogo.yaml"
    if arq_catalogo_sql.exists() and arq_catalogo_yaml.exists():
        esquema_cat = inspecionar_esquema_sql(
            arq_catalogo_sql.read_text(encoding="utf-8"), nome_modulo="catalogo"
        )
        spec_cat = inspecionar_especificacao_openapi(
            arq_catalogo_yaml.read_text(encoding="utf-8"), nome_modulo="catalogo"
        )
        validar_paridade_esquemas(esquema_cat, spec_cat, MAPEAMENTO_PARIDADE_CATALOGO)

    # Compilação SQL com cache de hash
    dir_sql_gerados = dir_sql / "generated"
    dir_sql_gerados.mkdir(parents=True, exist_ok=True)
    arq_hash_sql = dir_sql_gerados / ".sql_hash"
    hash_sql_atual = get_protos_hash([str(p) for p in arquivos_sql])

    precisa_sql = forcar or not arq_hash_sql.exists() or arq_hash_sql.read_text(encoding="utf-8").strip() != hash_sql_atual
    if precisa_sql:
        compilar_arquivos_sql(dir_sql, dir_sql_gerados)
        arq_hash_sql.write_text(hash_sql_atual, encoding="utf-8")

    # Compilação OpenAPI com cache de hash
    dir_openapi_gerados = dir_openapi / "generated"
    dir_openapi_gerados.mkdir(parents=True, exist_ok=True)
    arq_hash_openapi = dir_openapi_gerados / ".openapi_hash"
    hash_openapi_atual = get_protos_hash([str(p) for p in arquivos_yaml])

    precisa_openapi = (
        forcar
        or not arq_hash_openapi.exists()
        or arq_hash_openapi.read_text(encoding="utf-8").strip() != hash_openapi_atual
    )
    if precisa_openapi:
        compilar_arquivos_openapi(dir_openapi, dir_openapi_gerados)
        arq_hash_openapi.write_text(hash_openapi_atual, encoding="utf-8")


def main(argv: list[str] | None = None) -> None:
    argumentos = argv if argv is not None else sys.argv[1:]
    forcar = "-f" in argumentos or "--force" in argumentos
    generate_protos(argumentos)
    compilar_contratos_sql_e_openapi(forcar=forcar)


if __name__ == "__main__":
    main()
