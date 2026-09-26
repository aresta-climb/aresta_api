# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

import pytest
from aresta_api.proto.generated import croqui_pb2

def test_no_maximo_um_campo_conteudo_markdown_por_mensagem():
    """
    Garante que no máximo um campo em cada mensagem do croqui.proto 
    possua a opção de campo conteudo_markdown definida como verdadeira.
    """
    # Varre todos os tipos de mensagens registrados no descriptor do croqui
    for nome_mensagem, desc_mensagem in croqui_pb2.DESCRIPTOR.message_types_by_name.items():
        campos_markdown = []
        for campo in desc_mensagem.fields:
            opcoes = campo.GetOptions()
            possui_markdown = False
            try:
                possui_markdown = opcoes.Extensions[croqui_pb2.conteudo_markdown]
            except KeyError:
                pass
            
            if possui_markdown:
                campos_markdown.append(campo.name)
        
        # Garante que no máximo um campo foi marcado
        assert len(campos_markdown) <= 1, (
            f"A mensagem '{nome_mensagem}' possui múltiplos campos marcados como "
            f"conteudo_markdown: {campos_markdown}. Apenas um é permitido."
        )


def test_tipo_no_seta_direcional():
    """Valida que o enum SETA_DIRECIONAL existe em NoTrajeto e é serializável."""
    assert croqui_pb2.NoTrajeto.TipoNo.SETA_DIRECIONAL == 12
    no = croqui_pb2.NoTrajeto(x=100, y=200, tipo=croqui_pb2.NoTrajeto.TipoNo.SETA_DIRECIONAL)
    dados = no.SerializeToString()
    recuperado = croqui_pb2.NoTrajeto()
    recuperado.ParseFromString(dados)
    assert recuperado.tipo == croqui_pb2.NoTrajeto.TipoNo.SETA_DIRECIONAL
    assert recuperado.x == 100
    assert recuperado.y == 200


def test_escalada_aceita_e_serializa_mapas():
    """Valida que instâncias de Escalada aceitam e serializam mapas para diferentes tipos de escalada."""
    # Teste 1: Boulder com mapa de detalhe/saída
    escalada_boulder = croqui_pb2.Escalada()
    escalada_boulder.boulder.nome = "Sit Start do Bloco"
    mapa_boulder = escalada_boulder.mapas.add()
    mapa_boulder.caminho_imagem_mapa = "imagens/boulder_saida.webp"
    mapa_boulder.largura_mapa = 1150
    mapa_boulder.altura_mapa = 870
    ponto_boulder = mapa_boulder.pontos_de_interesse.add()
    ponto_boulder.id = "p1"
    ponto_boulder.label = "Saída"

    dados_boulder = escalada_boulder.SerializeToString()
    recuperado_boulder = croqui_pb2.Escalada()
    recuperado_boulder.ParseFromString(dados_boulder)

    assert recuperado_boulder.boulder.nome == "Sit Start do Bloco"
    assert len(recuperado_boulder.mapas) == 1
    assert recuperado_boulder.mapas[0].caminho_imagem_mapa == "imagens/boulder_saida.webp"
    assert recuperado_boulder.mapas[0].largura_mapa == 1150
    assert recuperado_boulder.mapas[0].altura_mapa == 870
    assert len(recuperado_boulder.mapas[0].pontos_de_interesse) == 1
    assert recuperado_boulder.mapas[0].pontos_de_interesse[0].label == "Saída"

    # Teste 2: Via esportiva com mapa
    escalada_esportiva = croqui_pb2.Escalada()
    escalada_esportiva.via_esportiva.nome = "Via Teste"
    mapa_esp = escalada_esportiva.mapas.add()
    mapa_esp.caminho_imagem_mapa = "imagens/via_teste_detalhe.webp"

    dados_esp = escalada_esportiva.SerializeToString()
    recuperado_esp = croqui_pb2.Escalada()
    recuperado_esp.ParseFromString(dados_esp)

    assert recuperado_esp.via_esportiva.nome == "Via Teste"
    assert len(recuperado_esp.mapas) == 1
    assert recuperado_esp.mapas[0].caminho_imagem_mapa == "imagens/via_teste_detalhe.webp"

    # Teste 3: Via móvel com mapa
    escalada_movel = croqui_pb2.Escalada()
    escalada_movel.via_movel.nome = "Fissura Teste"
    mapa_movel = escalada_movel.mapas.add()
    mapa_movel.caminho_imagem_mapa = "imagens/fissura_teste.webp"

    dados_movel = escalada_movel.SerializeToString()
    recuperado_movel = croqui_pb2.Escalada()
    recuperado_movel.ParseFromString(dados_movel)

    assert recuperado_movel.via_movel.nome == "Fissura Teste"
    assert len(recuperado_movel.mapas) == 1
    assert recuperado_movel.mapas[0].caminho_imagem_mapa == "imagens/fissura_teste.webp"

    # Teste 4: Via de múltiplas enfiadas encapsulada em Escalada com mapa
    escalada_multi = croqui_pb2.Escalada()
    escalada_multi.via_multiplas_enfiadas.nome = "Paredão Central"
    mapa_multi = escalada_multi.mapas.add()
    mapa_multi.caminho_imagem_mapa = "imagens/paredao_central_visao_geral.webp"

    dados_multi = escalada_multi.SerializeToString()
    recuperado_multi = croqui_pb2.Escalada()
    recuperado_multi.ParseFromString(dados_multi)

    assert recuperado_multi.via_multiplas_enfiadas.nome == "Paredão Central"
    assert len(recuperado_multi.mapas) == 1
    assert recuperado_multi.mapas[0].caminho_imagem_mapa == "imagens/paredao_central_visao_geral.webp"


def test_via_multiplas_enfiadas_nao_possui_campo_mapas_direto():
    """Garante que ViaMultiplasEnfiadas não possui campo 'mapas' diretamente nela."""
    via_multi = croqui_pb2.ViaMultiplasEnfiadas()
    assert not hasattr(via_multi, "mapas")
    nomes_campos = [campo.name for campo in via_multi.DESCRIPTOR.fields]
    assert "mapas" not in nomes_campos


