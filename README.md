# 📡 aresta_api – API de Acesso ao Banco de Dados de Escalada (schema protobuf)

## O que é?
`aresta_api` contém **os *schemas* protobuf** que descrevem a estrutura dos dados de escalada usados pelo Aresta. Esses arquivos definem como as informações de vias, graus, proteções, acessos e metadados são serializadas e trocadas entre componentes (serviços, scripts de conversão, clientes).

## Principais arquivos
- **`proto/croqui.proto`** – Define a mensagem principal `Croqui` com campos como `via`, `grau`, `proteção`, `acesso`, `coordenadas` e `metadata`.
- **`proto/croqui_experimental.proto`** – Mensagem para empacotamento de croquis em arquivos `.croqui`.
- **`proto/indice.proto`** – Estrutura de índices que centraliza todos os croquis.
- **`proto/serving.proto`** – Mensagens de request/response usadas pelos serviços gRPC que servem os dados.
- **`proto/generated/`** – Diretório onde os arquivos Python gerados a partir dos `.proto` são armazenados (gerados via `protoc`).

## Como gerar o código a partir dos `.proto`

Primeiro, instale as dependências Python:
```bash
python -m pip install -r requirements.txt
```

Após isso, instale o executável do Dart na sua máquina, e o plugin para o protoc. Instruções [aqui](https://pub.dev/packages/protoc_plugin), mas basicamente rode:

```bash
dart pub global activate protoc_plugin
```

Por fim, rode o build para atualizar os arquivos gerados:

```bash
python build.py
```

## Licença
- O código está licenciado sob **Mozilla Public License 2.0 (MPL-2.0)** (arquivo `LICENSE`).
- Os schemas protobuf descrevem **dados** que são licenciados sob **ODbL 1.0** – consulte o [Resumo de Licenças e Direitos Autorais](https://github.com/aresta-climb/aresta_db/blob/main/LICENCAS_RESUMO.md) para saber como usá‑los.

## Contribuindo
1. Faça um **Fork** do repositório.
2. Modifique ou adicione novos arquivos `.proto` conforme necessário.
3. Rode `python build.py` para gerar os stubs atualizados.
4. Abra um **Pull Request**.
