-- SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
-- SPDX-License-Identifier: MPL-2.0
--
-- =============================================================================
-- ESQUEMA RELACIONAL CANÔNICO DO CATÁLOGO SQLITE (catalogo.db)
-- =============================================================================
-- Propósito Geral:
--   Define a estrutura do banco de dados SQLite local (`catalogo.db`) embarcado
--   e sincronizado no aplicativo móvel Aresta (`aresta_app`), gerado pelo
--   pipeline de compilação de dados (`aresta_db`) e espelhado no Cloudflare D1
--   (`aresta_backend/cloudflare/catalogo`).
--
--   O catálogo permite busca instantânea offline/online por picos, croquis,
--   grupos, setores, vias/boulders e botões de ação, além de resolução direta
--   de qualquer entidade pelo seu identificador único imutável (`uid`) para
--   integração com cadenas, favoritos, projetos e deep links.
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_croquis
-- -----------------------------------------------------------------------------
-- Propósito:
--   Armazena uma linha resumida por croqui (pico ou área de escalada) publicado
--   no repositório `aresta_db`. Serve como tabela pai lógica para as entidades
--   indexadas em `catalogo_aresta` e fornece os metadados geográficos básicos
--   para listagem e filtragem rápida por localidade.
--
-- Colunas e Valores Possíveis:
--   * croqui_uid (TEXT PRIMARY KEY, obrigatório, não-nulo):
--       Identificador único universal e imutável do croqui (UUIDv4 em formato
--       canônico de 36 caracteres, ex: '550e8400-e29b-41d4-a716-446655440000').
--       Persiste mesmo que o croqui mude de nome ou de pasta (`id_slug`).
--   * id_slug (TEXT NOT NULL, obrigatório):
--       Identificador textual legível e nome do diretório do croqui no R2/CDN,
--       seguindo a convenção geográfica `<pais>_<estado>_<cidade>_<nome_pico>`
--       em snake_case minúsculo sem acentos (ex: 'br_mg_igarape_pedra_grande').
--   * nome (TEXT NOT NULL, obrigatório):
--       Nome de exibição principal do croqui/pico em português com acentuação
--       (ex: 'Pedra Grande de Igarapé', 'Serra do Cipó - Grupo Grande').
--   * cidade (TEXT, anulável):
--       Nome do município onde o croqui está localizado, com iniciais maiúsculas
--       (ex: 'Igarapé', 'São João Del Rei'). Pode ser string vazia ('') ou NULL
--       quando não extraível do slug.
--   * estado (TEXT, anulável):
--       Sigla da unidade federativa / estado / província em letras maiúsculas
--       de 2 caracteres (ex: 'MG', 'RJ', 'SP', 'ES'). Pode ser string vazia ('')
--       ou NULL quando não aplicável.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS catalogo_croquis (
    croqui_uid TEXT PRIMARY KEY,
    id_slug TEXT NOT NULL,
    nome TEXT NOT NULL,
    cidade TEXT,
    estado TEXT
);

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_aresta
-- -----------------------------------------------------------------------------
-- Propósito:
--   Tabela desnormalizada e unificada de todas as entidades endereçáveis por
--   UID dentro dos croquis: escaladas (vias/boulders/highlines), setores,
--   grupos de setores e botões informativos/links.
--   Permite busca textual unificada e resolução O(1) de qualquer `uid` para o
--   seu respectivo `croqui_uid`, hierarquia (`grupo_uid`, `setor_uid`) e
--   atributos técnicos de escalada.
--
-- Colunas e Valores Possíveis:
--   * uid (TEXT PRIMARY KEY, obrigatório, não-nulo):
--       Identificador único universal e imutável da entidade (UUIDv4 de 36
--       caracteres). Chave estrangeira lógica referenciada pelos registros de
--       usuário (cadenas, favoritos) no Supabase.
--   * tipo (TEXT NOT NULL, obrigatório):
--       Discriminador do tipo da entidade. Valores válidos:
--         - 'escalada': Via esportiva, tradicional/móvel, multienfiada, boulder ou highline.
--         - 'setor': Setor de escalada contendo uma ou mais escaladas/mapas.
--         - 'grupo': Agrupamento intermediário de setores dentro de um pico.
--         - 'botao': Botão de ação/informação configurado na capa do croqui.
--   * croqui_uid (TEXT NOT NULL, obrigatório):
--       UID do croqui ao qual esta entidade pertence (referencia
--       `catalogo_croquis.croqui_uid`).
--   * nome (TEXT NOT NULL, obrigatório):
--       Nome de exibição da entidade (nome da via/boulder, nome do setor, nome
--       do grupo ou rótulo textual do botão).
--   * escalada_grau (TEXT, anulável):
--       Graduação formatada para exibição quando `tipo = 'escalada'`, ou NULL
--       para setores, grupos e botões (ou escaladas sem grau definido).
--       Exemplos de valores:
--         - Vias (graduação brasileira): '4', '5', '6sup', '7a', '7b/7c', '8a'
--         - Boulders (escala V / Hueco): 'V0', 'V1/V2', 'V4', 'V10'
--         - Highlines (comprimento em metros): '45m', '120m'
--         - Sem graduação / outras entidades: '' ou NULL
--   * escalada_tipo (TEXT, anulável):
--       Modalidade da escalada quando `tipo = 'escalada'`, ou NULL para demais
--       tipos de entidade (`'setor'`, `'grupo'`, `'botao'`).
--       Valores possíveis quando preenchido:
--         - 'esportiva'   (Via equipada com proteções fixas)
--         - 'tradicional' (Via em móvel / proteções removíveis)
--         - 'boulder'     (Bloco / problema de boulder)
--         - 'multienfiada'(Via de parede / múltiplas enfiadas)
--         - 'highline'    (Fita de equilíbrio em altura)
--   * setor_uid (TEXT, anulável):
--       UID do setor pai direto quando `tipo = 'escalada'` (referencia outra
--       linha de `catalogo_aresta` com `tipo = 'setor'`). NULL para setores,
--       grupos e botões.
--   * grupo_uid (TEXT, anulável):
--       UID do grupo de setores ao qual o setor ou a escalada pertence
--       (referencia outra linha de `catalogo_aresta` com `tipo = 'grupo'`).
--       NULL quando o setor está diretamente na raiz do pico ou para grupos e
--       botões.
-- -----------------------------------------------------------------------------
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

-- -----------------------------------------------------------------------------
-- Tabela: catalogo_meta
-- -----------------------------------------------------------------------------
-- Propósito:
--   Armazena pares chave-valor de metadados de controle e versionamento do
--   próprio arquivo `catalogo.db` no dispositivo local.
--
-- Colunas e Valores Possíveis:
--   * chave (TEXT PRIMARY KEY, obrigatório, não-nulo):
--       Identificador do metadado. Chaves canônicas utilizadas:
--         - 'versao_catalogo': Hash determinístico do conteúdo do catálogo.
--   * valor (TEXT NOT NULL, obrigatório):
--       Valor textual associado à chave. Para `'versao_catalogo'`, armazena os
--       primeiros 16 caracteres hexadecimais (64 bits) do SHA-256 calculado
--       sobre todas as linhas ordenadas de `catalogo_croquis` e `catalogo_aresta`
--       (ex: 'a1b2c3d4e5f60718').
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS catalogo_meta (
    chave TEXT PRIMARY KEY,
    valor TEXT NOT NULL
);

-- -----------------------------------------------------------------------------
-- Índices de Performance de Consulta (catalogo_aresta)
-- -----------------------------------------------------------------------------

-- Acelera a listagem e remoção em cascata de todas as entidades pertencentes a
-- um croqui específico (`WHERE croqui_uid = ?`).
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_croqui
ON catalogo_aresta(croqui_uid);

-- Acelera buscas textuais case-insensitive por nome de via, boulder ou setor
-- (`WHERE nome LIKE ? COLLATE NOCASE` e ordenação alfabética).
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_nome
ON catalogo_aresta(nome COLLATE NOCASE);

-- Acelera a filtragem por categoria de entidade (`WHERE tipo = 'escalada'`,
-- `WHERE tipo = 'setor'`, etc.).
CREATE INDEX IF NOT EXISTS idx_catalogo_aresta_tipo
ON catalogo_aresta(tipo);
