# 📡 aresta_api – Contratos Canônicos do Ecossistema Aresta (`proto`, `sql` e `openapi`)

## O que é?
`aresta_api` é a **Fonte Única de Verdade (Single Source of Truth)** para todos os contratos de comunicação e persistência compartilhados entre os repositórios do Aresta (`aresta_db` em Python, `aresta_backend` em Deno/TypeScript e `aresta_app` em Flutter/Dart).

O repositório organiza os contratos em três pilares:
1. **`proto/` (Protocol Buffers)** – Mensagens binárias (`.binarypb`) para croquis (`croqui.proto`), índice (`indice.proto`), betas (`beta.proto`), metadados experimentais (`croqui_experimental.proto`) e serving (`serving.proto`).
2. **`sql/` (SQLite / Cloudflare D1)** – Esquemas relacionais canônicos em SQL puro (`catalogo.sql` para o banco local e borda, e `catalogo_d1.sql` para a tabela de deltas na borda).
3. **`openapi/` (OpenAPI 3.1)** – Especificações formais das APIs HTTP REST do `aresta_backend` (`catalogo.yaml`, `app_links.yaml`, `previa.yaml`, `colaboracao.yaml` e `feedback.yaml`), incluindo URLs de servidores (`servers`), rotas (`paths`), parâmetros e schemas de payload (`components/schemas`).

## Estrutura de Diretórios
- **`src/`** – Bibliotecas modulares e testadas (100% de cobertura comportamental) responsáveis pela validação e geração multi-linguagem:
  - `gerador_sql.py` / `gerador_sql_test.py`: Valida `.sql` em SQLite `:memory:`, inspeciona metadados via `PRAGMA table_info` e emite `.py` (`TypedDict`), `.dart` (classes `fromMap`/`toMap`) e `.ts` (`interface`) além das constantes DDL.
  - `gerador_openapi.py` / `gerador_openapi_test.py`: Valida `.yaml` contra o schema oficial OpenAPI 3.1 via `openapi-spec-validator` e emite constantes de URLs, rotas e tipos estruturais em Python, Dart e TypeScript.
  - `validador_paridade.py` / `validador_paridade_test.py`: Garante paridade estrita 1:1 de colunas, tipos e nulabilidade entre tabelas SQL e schemas OpenAPI correspondentes.
- **`proto/generated/`**, **`sql/generated/`**, **`openapi/generated/`** – Artefatos gerados deterministicamente para consumo direto nos projetos.

## Como compilar os contratos e rodar os testes (`uv`)

O `aresta_api` utiliza o **[uv](https://docs.astral.sh/uv/)** para gerenciamento determinístico de dependências (`pyproject.toml` + `uv.lock`).

Para instalar o plugin Dart do `protoc` (necessário apenas ao regenerar `.proto`):
```bash
dart pub global activate protoc_plugin
```

Para validar todos os contratos e gerar os artefatos Python, Dart e TypeScript:
```bash
uv run python build.py
```

Para executar a suíte de testes unitários e de integração com verificação de cobertura e tipagem:
```bash
uv run pytest
uv run ruff check .
uv run mypy .
```

## Licença
- O código está licenciado sob **Mozilla Public License 2.0 (MPL-2.0)** (arquivo `LICENSE`).
- Os schemas descrevem **dados** que são licenciados sob **ODbL 1.0** – consulte o [Resumo de Licenças e Direitos Autorais](https://github.com/aresta-climb/aresta_db/blob/main/LICENCAS_RESUMO.md) para saber como usá-los.
