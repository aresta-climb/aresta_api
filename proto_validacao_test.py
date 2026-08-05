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
