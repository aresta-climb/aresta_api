# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

import pytest

def test_beta_proto_messages_exist():
    """
    Garante que o módulo beta_pb2 foi gerado e exporta as mensagens
    MidiaBeta, ResultadoLLMBeta e BetasPendentes com seus campos esperados.
    """
    from aresta_api.proto.generated import beta_pb2

    # Verifica existência das mensagens
    assert hasattr(beta_pb2, "MidiaBeta")
    assert hasattr(beta_pb2, "ResultadoLLMBeta")
    assert hasattr(beta_pb2, "BetasPendentes")
    assert hasattr(beta_pb2, "CandidatosBetaPorEscalada")

    # Instancia mensagens para validar campos
    midia = beta_pb2.MidiaBeta()
    assert hasattr(midia, "url")
    assert hasattr(midia, "titulo")
    assert hasattr(midia, "thumbnail_url")
    assert hasattr(midia, "fonte")
    assert hasattr(midia, "resultado_llm")
    assert hasattr(midia, "snippets")
    
    # Adiciona snippets
    midia.snippets.append("Snippet 1")
    midia.snippets.append("Snippet 2")
    assert len(midia.snippets) == 2

    res_llm = beta_pb2.ResultadoLLMBeta()
    assert hasattr(res_llm, "llm_confidence_score")
    assert hasattr(res_llm, "llm_reasoning")

    cand_esc = beta_pb2.CandidatosBetaPorEscalada()
    assert hasattr(cand_esc, "nome_escalada")
    assert hasattr(cand_esc, "nome_setor")
    assert hasattr(cand_esc, "nome_grupo")
    assert hasattr(cand_esc, "candidatos")

    pendentes = beta_pb2.BetasPendentes()
    assert hasattr(pendentes, "candidatos_por_escalada")


def test_beta_proto_enum_encapsulation():
    """
    Garante que os enums de beta.proto seguem estritamente as regras de PRINCIPIOS.md:
    - O enum deve ser nomeado Enum e encapsulado em uma mensagem dedicada.
    - O primeiro valor deve ser INDEFINIDO = 0.
    """
    from aresta_api.proto.generated import beta_pb2

    # Verifica encapsulamento do enum FonteMidia
    assert hasattr(beta_pb2, "FonteMidia")
    assert hasattr(beta_pb2.FonteMidia, "Enum")
    assert beta_pb2.FonteMidia.INDEFINIDO == 0
    assert beta_pb2.FonteMidia.YOUTUBE == 1
    assert beta_pb2.FonteMidia.INSTAGRAM == 2


def test_escalada_has_repeated_betas_field():
    """
    Garante que a mensagem Escalada em croqui.proto importa beta.proto
    e possui o campo repetido 'betas' do tipo MidiaBeta.
    """
    from aresta_api.proto.generated import croqui_pb2
    from aresta_api.proto.generated import beta_pb2

    escalada = croqui_pb2.Escalada()
    assert hasattr(escalada, "betas")
    
    # Testa inserção de um MidiaBeta na lista de betas
    midia = escalada.betas.add()
    midia.url = "https://youtube.com/watch?v=123"
    midia.titulo = "Beta Teste"
    midia.fonte = beta_pb2.FonteMidia.YOUTUBE
    midia.snippets.append("Trecho descritivo do vídeo")
    assert len(escalada.betas) == 1
    assert escalada.betas[0].url == "https://youtube.com/watch?v=123"
    assert escalada.betas[0].snippets[0] == "Trecho descritivo do vídeo"
