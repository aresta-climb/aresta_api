# SPDX-FileCopyrightText: Copyright (C) 2026 Aresta Climb Contributors
# SPDX-License-Identifier: MPL-2.0

from aresta_api.proto.generated import beta_pb2, croqui_pb2, indice_pb2


def test_no_maximo_um_campo_conteudo_markdown_por_mensagem() -> None:
    """
    Garante que no máximo um campo em cada mensagem do croqui.proto
    possua a opção de campo conteudo_markdown definida como verdadeira.
    """
    # Varre todos os tipos de mensagens registrados no descriptor do croqui
    for nome_mensagem, desc_mensagem in croqui_pb2.DESCRIPTOR.message_types_by_name.items():
        campos_markdown = []
        for campo in desc_mensagem.fields:
            opcoes = campo.GetOptions()
            possui_markdown = bool(opcoes.Extensions[croqui_pb2.conteudo_markdown])

            if possui_markdown:
                campos_markdown.append(campo.name)

        # Garante que no máximo um campo foi marcado
        assert len(campos_markdown) <= 1, (
            f"A mensagem '{nome_mensagem}' possui múltiplos campos marcados como "
            f"conteudo_markdown: {campos_markdown}. Apenas um é permitido."
        )


def test_tipo_no_seta_direcional() -> None:
    """Valida que o enum SETA_DIRECIONAL existe em NoTrajeto e é serializável."""
    assert croqui_pb2.NoTrajeto.TipoNo.SETA_DIRECIONAL == 12
    no = croqui_pb2.NoTrajeto(x=100, y=200, tipo=croqui_pb2.NoTrajeto.TipoNo.SETA_DIRECIONAL)
    dados = no.SerializeToString()
    recuperado = croqui_pb2.NoTrajeto()
    recuperado.ParseFromString(dados)
    assert recuperado.tipo == croqui_pb2.NoTrajeto.TipoNo.SETA_DIRECIONAL
    assert recuperado.x == 100
    assert recuperado.y == 200


def test_escalada_aceita_e_serializa_mapas() -> None:
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
    assert (
        recuperado_multi.mapas[0].caminho_imagem_mapa == "imagens/paredao_central_visao_geral.webp"
    )


def test_via_multiplas_enfiadas_nao_possui_campo_mapas_direto() -> None:
    """Garante que ViaMultiplasEnfiadas não possui campo 'mapas' diretamente nela."""
    via_multi = croqui_pb2.ViaMultiplasEnfiadas()
    assert not hasattr(via_multi, "mapas")
    nomes_campos = [campo.name for campo in via_multi.DESCRIPTOR.fields]
    assert "mapas" not in nomes_campos


def test_setor_e_grupo_possuem_campo_caminho_imagem_capa() -> None:
    """Valida que Setor e Grupo possuem o campo caminho_imagem_capa com opções de UI e serialização."""
    for desc_msg, nome in [
        (croqui_pb2.Setor.DESCRIPTOR, "Setor"),
        (croqui_pb2.Grupo.DESCRIPTOR, "Grupo"),
    ]:
        assert "caminho_imagem_capa" in desc_msg.fields_by_name, (
            f"O campo caminho_imagem_capa não existe em {nome}"
        )
        campo = desc_msg.fields_by_name["caminho_imagem_capa"]
        opcoes = campo.GetOptions()
        assert opcoes.Extensions[croqui_pb2.formato_na_ui] == croqui_pb2.CampoFormatoUi.IMAGEM
        assert opcoes.Extensions[croqui_pb2.tipo_conteudo] == croqui_pb2.TipoConteudo.CAMINHO
        assert opcoes.Extensions[croqui_pb2.mime_type] == "image/webp"
        assert opcoes.Extensions[croqui_pb2.texto_na_ui] == "Foto de Capa"

    setor = croqui_pb2.Setor(nome="Setor Teste", caminho_imagem_capa="imagens/capa_setor.webp")
    dados_setor = setor.SerializeToString()
    recuperado_setor = croqui_pb2.Setor()
    recuperado_setor.ParseFromString(dados_setor)
    assert recuperado_setor.caminho_imagem_capa == "imagens/capa_setor.webp"

    grupo = croqui_pb2.Grupo(nome="Grupo Teste", caminho_imagem_capa="imagens/capa_grupo.webp")
    dados_grupo = grupo.SerializeToString()
    recuperado_grupo = croqui_pb2.Grupo()
    recuperado_grupo.ParseFromString(dados_grupo)
    assert recuperado_grupo.caminho_imagem_capa == "imagens/capa_grupo.webp"


def test_pico_possui_malha_estrada_invisivel_e_serializavel() -> None:
    """Valida que Pico possui o campo malha_estrada (ArquivoMalhaEstrada) invisível na UI."""
    assert "malha_estrada" in croqui_pb2.Pico.DESCRIPTOR.fields_by_name
    campo = croqui_pb2.Pico.DESCRIPTOR.fields_by_name["malha_estrada"]
    opcoes = campo.GetOptions()
    assert opcoes.Extensions[croqui_pb2.formato_na_ui] == croqui_pb2.CampoFormatoUi.INVISIVEL

    for msg_cls in (croqui_pb2.NoMalhaEstrada, croqui_pb2.MalhaEstradaPico):
        opts_msg = msg_cls.DESCRIPTOR.GetOptions()
        assert (
            opts_msg.Extensions[croqui_pb2.mensagem_formato_na_ui]
            == croqui_pb2.MensagemFormatoUi.INVISIVEL
        )

    opts_arq = croqui_pb2.ArquivoMalhaEstrada.DESCRIPTOR.GetOptions()
    assert (
        opts_arq.Extensions[croqui_pb2.mensagem_formato_na_ui]
        == croqui_pb2.MensagemFormatoUi.ONEOF_CONTEUDO
    )

    pico_ref = croqui_pb2.Pico(nome="Gruta da Lapinha")
    pico_ref.malha_estrada.caminho = "malha_estrada.yaml"
    assert pico_ref.malha_estrada.WhichOneof("arquivo") == "caminho"

    pico = croqui_pb2.Pico(nome="Gruta da Lapinha")
    pico.malha_estrada.conteudo.latitude_referencia_e7 = -195622616
    pico.malha_estrada.conteudo.longitude_referencia_e7 = -439595684
    no = pico.malha_estrada.conteudo.nos.add()
    no.no_osm_id = 9876543210
    no.latitude_e7 = -195600000
    no.longitude_e7 = -439600000
    no.distancia_metros = 15200
    no.na_borda = True

    dados = pico.SerializeToString()
    recuperado = croqui_pb2.Pico()
    recuperado.ParseFromString(dados)
    assert recuperado.malha_estrada.WhichOneof("arquivo") == "conteudo"
    assert recuperado.malha_estrada.conteudo.latitude_referencia_e7 == -195622616
    assert recuperado.malha_estrada.conteudo.longitude_referencia_e7 == -439595684
    assert len(recuperado.malha_estrada.conteudo.nos) == 1
    assert recuperado.malha_estrada.conteudo.nos[0].no_osm_id == 9876543210
    assert recuperado.malha_estrada.conteudo.nos[0].latitude_e7 == -195600000
    assert recuperado.malha_estrada.conteudo.nos[0].longitude_e7 == -439600000
    assert recuperado.malha_estrada.conteudo.nos[0].distancia_metros == 15200
    assert recuperado.malha_estrada.conteudo.nos[0].na_borda is True



def test_metadados_arquivo_no_editor_formato_nome_arquivo() -> None:
    """Valida que MetadadosArquivoNoEditor usa NOME_ARQUIVO em caminho_novo e oculta campos internos."""
    assert croqui_pb2.CampoFormatoUi.NOME_ARQUIVO == 9

    desc = croqui_pb2.MetadadosArquivoNoEditor.DESCRIPTOR
    campo_novo = desc.fields_by_name["caminho_novo"]
    opcoes_novo = campo_novo.GetOptions()
    assert opcoes_novo.Extensions[croqui_pb2.formato_na_ui] == croqui_pb2.CampoFormatoUi.NOME_ARQUIVO
    assert opcoes_novo.Extensions[croqui_pb2.texto_na_ui] == "Nome do arquivo"

    campo_original = desc.fields_by_name["caminho_original"]
    assert (
        campo_original.GetOptions().Extensions[croqui_pb2.formato_na_ui]
        == croqui_pb2.CampoFormatoUi.INVISIVEL
    )

    campo_json = desc.fields_by_name["dados_json_originais"]
    assert (
        campo_json.GetOptions().Extensions[croqui_pb2.formato_na_ui]
        == croqui_pb2.CampoFormatoUi.INVISIVEL
    )


def test_grau_boulder_projeto_e_nota_qualidade_precomputados_indice() -> None:
    """Valida a presença de GrauBoulder.PROJETO e PrecomputadosResumoCroqui.nota_qualidade."""
    assert croqui_pb2.GrauBoulder.GrauBoulder.PROJETO == 38
    boulder = croqui_pb2.Boulder(
        nome="Projeto Secreto",
        dificuldade=croqui_pb2.GrauBoulder.GrauBoulder.PROJETO,
    )
    recuperado_boulder = croqui_pb2.Boulder()
    recuperado_boulder.ParseFromString(boulder.SerializeToString())
    assert recuperado_boulder.dificuldade == croqui_pb2.GrauBoulder.GrauBoulder.PROJETO

    resumo = indice_pb2.ResumoCroqui(id="br_mg_teste")
    resumo.precomputados.total_escaladas = 10
    resumo.precomputados.nota_qualidade = 6450
    recuperado_resumo = indice_pb2.ResumoCroqui()
    recuperado_resumo.ParseFromString(resumo.SerializeToString())
    assert recuperado_resumo.precomputados.nota_qualidade == 6450


def test_contratos_beta_midia_limpa_e_arquivo_curadoria_betas() -> None:
    """
    Valida que MidiaBeta possui apenas campos de publicação (incluindo FonteMidia.BLOG = 3),
    CandidatoMidiaBeta e ColecaoCuradoriaBetas encapsulam a curadoria por escalada_uid,
    e Croqui possui curadoria_betas (ArquivoCuradoriaBetas com ONEOF_CONTEUDO).
    """
    assert beta_pb2.FonteMidia.BLOG == 3

    campos_midia = set(beta_pb2.MidiaBeta.DESCRIPTOR.fields_by_name.keys())
    assert campos_midia == {"url", "titulo", "fonte"}

    midia = beta_pb2.MidiaBeta(
        url="https://blog.exemplo.com/escalada-pedra-grande",
        titulo="Relato Pedra Grande",
        fonte=beta_pb2.FonteMidia.BLOG,
    )
    candidato = beta_pb2.CandidatoMidiaBeta(
        midia=midia,
        match_multiplas_fontes=True,
        match_nome_no_snippet=True,
        snippets=["Trecho do blog falando sobre a via..."],
    )
    candidato.resultado_llm.llm_confidence_score = 91
    candidato.resultado_llm.llm_reasoning = "Menciona a via e o setor com detalhes."

    curadoria_esc = beta_pb2.CuradoriaBetasEscalada(escalada_uid="JeenN3HpFf1fWM")
    curadoria_esc.betas_nao_scorados.append(candidato)
    curadoria_esc.betas_nao_revisados.append(candidato)
    curadoria_esc.betas_rejeitados.append(
        beta_pb2.MidiaBeta(
            url="https://www.youtube.com/watch?v=invalido",
            titulo="Vídeo irrelevante",
            fonte=beta_pb2.FonteMidia.YOUTUBE,
        )
    )

    croqui = croqui_pb2.Croqui(id="br_mg_teste", nome="Croqui Teste")
    croqui.curadoria_betas.conteudo.escaladas.append(curadoria_esc)

    dados = croqui.SerializeToString()
    recuperado = croqui_pb2.Croqui()
    recuperado.ParseFromString(dados)

    assert len(recuperado.curadoria_betas.conteudo.escaladas) == 1
    esc_rec = recuperado.curadoria_betas.conteudo.escaladas[0]
    assert esc_rec.escalada_uid == "JeenN3HpFf1fWM"
    assert len(esc_rec.betas_nao_scorados) == 1
    assert esc_rec.betas_nao_scorados[0].midia.fonte == beta_pb2.FonteMidia.BLOG
    assert len(esc_rec.betas_nao_revisados) == 1
    assert esc_rec.betas_nao_revisados[0].resultado_llm.llm_confidence_score == 91
    assert len(esc_rec.betas_rejeitados) == 1
    assert esc_rec.betas_rejeitados[0].url == "https://www.youtube.com/watch?v=invalido"

    campo_curadoria = croqui_pb2.Croqui.DESCRIPTOR.fields_by_name["curadoria_betas"]
    assert (
        campo_curadoria.GetOptions().Extensions[croqui_pb2.formato_na_ui]
        == croqui_pb2.CampoFormatoUi.INVISIVEL
    )
    opts_arq = croqui_pb2.ArquivoCuradoriaBetas.DESCRIPTOR.GetOptions()
    assert (
        opts_arq.Extensions[croqui_pb2.mensagem_formato_na_ui]
        == croqui_pb2.MensagemFormatoUi.ONEOF_CONTEUDO
    )


def test_ponto_de_interesse_possui_tamanho_fonte_serializavel() -> None:
    """Valida que Mapa.PontoDeInteresse possui o campo int32 tamanho_fonte com texto_na_ui."""
    desc_poi = croqui_pb2.Mapa.PontoDeInteresse.DESCRIPTOR
    assert "tamanho_fonte" in desc_poi.fields_by_name
    campo_tf = desc_poi.fields_by_name["tamanho_fonte"]
    assert campo_tf.number == 14
    assert campo_tf.GetOptions().Extensions[croqui_pb2.texto_na_ui] == "Tamanho da Fonte"

    poi = croqui_pb2.Mapa.PontoDeInteresse(
        uid="poi_teste_1234",
        texto_visivel="132",
        tamanho_fonte=20,
    )
    poi.retangulo.x = 100
    poi.retangulo.y = 200
    poi.retangulo.comprimento = 40
    poi.retangulo.largura = 30

    recuperado = croqui_pb2.Mapa.PontoDeInteresse()
    recuperado.ParseFromString(poi.SerializeToString())
    assert recuperado.texto_visivel == "132"
    assert recuperado.tamanho_fonte == 20


def test_escalada_serializa_betas_aprovados_e_fonte_midia_enum() -> None:
    """
    Valida que FonteMidia segue o encapsulamento Enum com INDEFINIDO = 0 e que
    Escalada.betas serializa e desserializa instâncias limpas de MidiaBeta.
    """
    assert hasattr(beta_pb2.FonteMidia, "Enum")
    assert beta_pb2.FonteMidia.INDEFINIDO == 0
    assert beta_pb2.FonteMidia.YOUTUBE == 1
    assert beta_pb2.FonteMidia.INSTAGRAM == 2
    assert beta_pb2.FonteMidia.BLOG == 3

    escalada = croqui_pb2.Escalada()
    midia = escalada.betas.add()
    midia.url = "https://youtube.com/watch?v=123"
    midia.titulo = "Beta Teste"
    midia.fonte = beta_pb2.FonteMidia.YOUTUBE

    recuperada = croqui_pb2.Escalada()
    recuperada.ParseFromString(escalada.SerializeToString())
    assert len(recuperada.betas) == 1
    assert recuperada.betas[0].url == "https://youtube.com/watch?v=123"
    assert recuperada.betas[0].titulo == "Beta Teste"
    assert recuperada.betas[0].fonte == beta_pb2.FonteMidia.YOUTUBE

