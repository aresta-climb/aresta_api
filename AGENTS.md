# Princípios de Engenharia Aresta (`aresta_api`)

Para garantir que o nosso código e schemas, sejam eles escritos por humanos ou por agentes autônomos de IA (como Google Antigravity e OPSX), se mantenham coesos, testáveis, sustentáveis e simples, adotamos oito princípios basilares e inegociáveis.

Estes princípios devem guiar toda e qualquer nova implementação, evolução de schema Protobuf, revisão ou refatoração no repositório.

## I. Tudo em Português
Todo o repositório deve **OBRIGATORIAMENTE** ser em português brasileiro. Isso inclui, mas não se limita a: documentação, especificações, mensagens, campos e opções de schemas `.proto`, comentários de código, docstrings, nomes de módulos, classes, funções, métodos e variáveis.
*Exceções:* Nomes de bibliotecas de terceiros, palavras-chave da linguagem/Protobuf e termos técnicos consolidados do ecossistema.

## II. Modularidade e Desacoplamento (Library-First)
Toda funcionalidade DEVE começar e ser estruturada como uma biblioteca ou módulo independente.
- As bibliotecas e validadores em `core/` devem ser autossuficientes, testáveis de forma isolada e claramente documentados.
- Evite criar arquivos ou pacotes que sirvam apenas para fins puramente organizacionais; cada módulo separado deve ter um propósito funcional claro e uma interface pública coesa.
- Não misture regras de negócios ou validações de schema em scripts monolíticos acoplados.

## III. Testes Orientados a Comportamento e Espelhamento 1:1
Os testes devem validar **o que** o código e os contratos fazem (comportamento e invariantes de schema), e nunca **como** foram implementados internamente.
- **Espelhamento 1:1 Obrigatório**: QUALQUER arquivo `.py` de produção DEVE possuir um arquivo `_test.py` correspondente no mesmo diretório (e alterações nos contratos `.proto` devem ser validadas por suítes de contrato/serialização). Se decidimos separar código em um arquivo próprio, ele possui por definição uma interface pública que deve ser testada.
- **Um Teste por Comportamento (Behavior-Driven Testing)**: Cada função de teste deve verificar um único comportamento, regra de validação ou contrato de serialização observável através da API pública (seguindo a estrutura *Dado/Quando/Então* ou *Preparar/Agir/Verificar*).
- **Proibição de Change-Detector Tests**: É estritamente proibido escrever testes acoplados à implementação interna (inspecionar atributos privados, verificar a sequência de chamadas de funções auxiliares internas ou verificar apenas `hasattr` estáticos sem exercitar a serialização/comportamento real). Uma refatoração interna que preserve o contrato público nunca deve quebrar os testes.

## IV. 100% de Cobertura Comportamental e TDD (Red-Green-Refactor)
O Desenvolvimento Orientado a Testes (Test-Driven Development) e a cobertura integral são **obrigatórios** e inegociáveis.
- **Ciclo Red-Green-Refactor**: Os testes DEVEM ser escritos e vistos falhar (*Red*) antes do início de qualquer implementação de código ou evolução de schema (*Green*), seguidos de refatoração (*Refactor*).
- **100% de Unit Test Coverage via Comportamento**: Qualquer alteração submetida deve manter 100% de cobertura de testes atingida exclusivamente exercitando comportamentos reais pela interface pública.
- **Resolução de Cobertura pelo Design**: Se uma linha ou ramificação (`if/else`, `try/except`) não puder ser alcançada por um teste de comportamento público, **o defeito está no código de produção** (código morto, validação defensiva redundante ou acoplamento direto de I/O). A solução obrigatória é simplificar o código de produção ou remover a ramificação inalcançável — sendo proibido usar mocks internos ou chamar métodos privados para forçar cobertura artificial.

## V. Fidelidade de Produção, Anti-Mocking e Testes de Integração em Primeiro Lugar
A suíte de testes deve ser representativa do comportamento real do sistema em produção.
- **Testes de Integração em Primeiro Lugar**: Priorize testar as fronteiras e os contratos de serialização/compilação entre os componentes antes de descer para detalhes isolados.
- **Proibição de Mocks para Código Interno**: É proibido usar `unittest.mock`, `MagicMock`, `patch` ou `monkeypatch` para isolar classes, mensagens Protobuf, descritores ou bibliotecas internas do próprio projeto. Use sempre mensagens Protobuf reais compiladas e sistema de arquivos temporário real (`tmp_path`).
- **Bibliotecas `test-only` de Fakes Determinísticos**: Para fronteiras externas (rede, execução de ferramentas externas ou armazenamento), devem ser utilizadas **bibliotecas `test-only` de Fakes determinísticos** em memória (configuráveis inclusive para simular falhas determinísticas), evitando reimplementar stubs ad-hoc em cada arquivo de teste.
- **Fakes Também São Bibliotecas Testadas**: Toda biblioteca de Fake (`*_fake.py`) é uma biblioteca de primeira classe e DEVE obrigatoriamente possuir seu próprio arquivo de teste espelhado (`*_fake_test.py`) garantindo que o Fake cumpre fielmente o contrato real.

## VI. Simplicidade, Anti-Abstração e Documentação Contínua
O código e os schemas DEVEM ser simples, declarativos, bem documentados e fáceis de compreender.
- Evite abstrações prematuras e códigos "espertos" (complexidade desnecessária). Siga a regra de ouro: *"Melhor um pouco de duplicação do que a abstração errada."*
- Pratique o DRY (Don't Repeat Yourself) de forma prudente: extraia apenas o que for óbvio e simples para reutilização clara.
- Mantenha docstrings e comentários nos arquivos `.proto` explicando *o porquê* (intenção e invariantes) e atualize o `README.md` e documentos de design sempre que evoluir os contratos.

## VII. Inegociabilidade Perante Código Legado (Regra do Escoteiro)
A existência de código ou testes legados no repositório que ainda não sigam integralmente estes padrões **NÃO é desculpa nem precedente** para violá-los.
- Agentes autônomos e desenvolvedores estão proibidos de imitar antipadrões presentes em arquivos vizinhos (como uso de `MagicMock`/`patch`, *change-detector tests* baseados apenas em `hasattr` ou identificadores em inglês).
- Sempre que tocar em um arquivo ou módulo existente que viole este `AGENTS.md`, você DEVE refatorar o trecho e os testes afetados para que passem a seguir integralmente estes princípios.

## VIII. Design e Evolução de Schemas Protobuf
Os arquivos `.proto` definem o contrato canônico de dados entre todos os sistemas do ecossistema Aresta (`aresta_db`, `aresta_app`, `aresta_backend`) e devem seguir estritamente as seguintes regras:
- **Encapsulamento de Enums**: Todo novo enum deve ser chamado `Enum` e ser encapsulado por uma mensagem dedicada com o nome semântico do enum (contendo apenas o `Enum`). Isso garante o escopo adequado sem necessidade de prefixos redundantes nos valores.
- **Valor Padrão de Enums**: Todo enum deve obrigatoriamente iniciar com `INDEFINIDO = 0;`.
- **Encapsulamento de Oneofs**: Todo novo `oneof` deve ser encapsulado em uma mensagem dedicada contendo a anotação `(aresta.mensagem_formato_na_ui) = ONEOF_CONTEUDO;` na mensagem envoltória.
- **Unicidade de Conteúdo Markdown**: Cada mensagem do `croqui.proto` pode possuir no máximo um campo marcado com a opção `[(aresta.conteudo_markdown) = true]`.
- **Geração Sincronizada de Stubs**: Qualquer alteração nos arquivos `.proto` deve ser acompanhada pela execução de `python build.py` para atualizar os artefatos gerados de forma determinística.

---
> **Nota para Agentes Autônomos**: Vocês estão estritamente obrigados a considerar este documento como diretriz de mais alta prioridade ao planejar arquitetura, evoluir schemas `.proto`, sugerir refatorações ou implementar novas rotinas.
