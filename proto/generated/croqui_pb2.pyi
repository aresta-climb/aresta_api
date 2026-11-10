from google.protobuf import descriptor_pb2 as _descriptor_pb2
import beta_pb2 as _beta_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf.internal import python_message as _python_message
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor
MIME_TYPE_FIELD_NUMBER: _ClassVar[int]
mime_type: _descriptor.FieldDescriptor
TEXTO_NA_UI_FIELD_NUMBER: _ClassVar[int]
texto_na_ui: _descriptor.FieldDescriptor
TIPO_CONTEUDO_FIELD_NUMBER: _ClassVar[int]
tipo_conteudo: _descriptor.FieldDescriptor
MENSAGEM_FIELD_NUMBER: _ClassVar[int]
mensagem: _descriptor.FieldDescriptor
CONTEUDO_MARKDOWN_FIELD_NUMBER: _ClassVar[int]
conteudo_markdown: _descriptor.FieldDescriptor
FORMATO_NA_UI_FIELD_NUMBER: _ClassVar[int]
formato_na_ui: _descriptor.FieldDescriptor
ONEOF_DEFAULT_FIELD_NUMBER: _ClassVar[int]
oneof_default: _descriptor.FieldDescriptor
TITULO_NA_UI_FIELD_NUMBER: _ClassVar[int]
titulo_na_ui: _descriptor.FieldDescriptor
BOOLEANO_TEXTO_INDEFINIDO_FIELD_NUMBER: _ClassVar[int]
booleano_texto_indefinido: _descriptor.FieldDescriptor
BOOLEANO_TEXTO_SIM_FIELD_NUMBER: _ClassVar[int]
booleano_texto_sim: _descriptor.FieldDescriptor
BOOLEANO_TEXTO_NAO_FIELD_NUMBER: _ClassVar[int]
booleano_texto_nao: _descriptor.FieldDescriptor
NOME_ARQUIVO_IMAGEM_FIELD_NUMBER: _ClassVar[int]
nome_arquivo_imagem: _descriptor.FieldDescriptor
AVANCADO_FIELD_NUMBER: _ClassVar[int]
avancado: _descriptor.FieldDescriptor
MENSAGEM_TEXTO_NA_UI_FIELD_NUMBER: _ClassVar[int]
mensagem_texto_na_ui: _descriptor.FieldDescriptor
MENSAGEM_FORMATO_NA_UI_FIELD_NUMBER: _ClassVar[int]
mensagem_formato_na_ui: _descriptor.FieldDescriptor
ENUM_TEXTO_NA_UI_FIELD_NUMBER: _ClassVar[int]
enum_texto_na_ui: _descriptor.FieldDescriptor

class TipoConteudo(_message.Message):
    __slots__ = ()
    class Enum(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[TipoConteudo.Enum]
        INLINE: _ClassVar[TipoConteudo.Enum]
        CAMINHO: _ClassVar[TipoConteudo.Enum]
    INDEFINIDO: TipoConteudo.Enum
    INLINE: TipoConteudo.Enum
    CAMINHO: TipoConteudo.Enum
    def __init__(self) -> None: ...

class CampoFormatoUi(_message.Message):
    __slots__ = ()
    class Enum(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[CampoFormatoUi.Enum]
        INLINE: _ClassVar[CampoFormatoUi.Enum]
        INVISIVEL: _ClassVar[CampoFormatoUi.Enum]
        TEXTO_CURTO: _ClassVar[CampoFormatoUi.Enum]
        TEXTO_LONGO: _ClassVar[CampoFormatoUi.Enum]
        MARKDOWN: _ClassVar[CampoFormatoUi.Enum]
        LATITUDE_E7: _ClassVar[CampoFormatoUi.Enum]
        LONGITUDE_E7: _ClassVar[CampoFormatoUi.Enum]
        IMAGEM: _ClassVar[CampoFormatoUi.Enum]
        NOME_ARQUIVO: _ClassVar[CampoFormatoUi.Enum]
    INDEFINIDO: CampoFormatoUi.Enum
    INLINE: CampoFormatoUi.Enum
    INVISIVEL: CampoFormatoUi.Enum
    TEXTO_CURTO: CampoFormatoUi.Enum
    TEXTO_LONGO: CampoFormatoUi.Enum
    MARKDOWN: CampoFormatoUi.Enum
    LATITUDE_E7: CampoFormatoUi.Enum
    LONGITUDE_E7: CampoFormatoUi.Enum
    IMAGEM: CampoFormatoUi.Enum
    NOME_ARQUIVO: CampoFormatoUi.Enum
    def __init__(self) -> None: ...

class MensagemFormatoUi(_message.Message):
    __slots__ = ()
    class Enum(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[MensagemFormatoUi.Enum]
        SEPARADO: _ClassVar[MensagemFormatoUi.Enum]
        INLINE: _ClassVar[MensagemFormatoUi.Enum]
        ONEOF: _ClassVar[MensagemFormatoUi.Enum]
        INVISIVEL: _ClassVar[MensagemFormatoUi.Enum]
        ONEOF_CONTEUDO: _ClassVar[MensagemFormatoUi.Enum]
        MAPA: _ClassVar[MensagemFormatoUi.Enum]
        COORDENADA: _ClassVar[MensagemFormatoUi.Enum]
    INDEFINIDO: MensagemFormatoUi.Enum
    SEPARADO: MensagemFormatoUi.Enum
    INLINE: MensagemFormatoUi.Enum
    ONEOF: MensagemFormatoUi.Enum
    INVISIVEL: MensagemFormatoUi.Enum
    ONEOF_CONTEUDO: MensagemFormatoUi.Enum
    MAPA: MensagemFormatoUi.Enum
    COORDENADA: MensagemFormatoUi.Enum
    def __init__(self) -> None: ...

class Croqui(_message.Message):
    __slots__ = ("id", "uid", "nome", "descricao", "creditos", "botoes", "picos", "arquivos_externos", "caminho_thumbnail", "revisado_manualmente", "revisado_bounding_circle", "status_desenho_extraivel", "ultima_migracao", "publicar_croqui", "curadoria_betas")
    Extensions: _python_message._ExtensionDict
    class StatusDesenhoExtraivel(_message.Message):
        __slots__ = ()
        class Enum(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
            __slots__ = ()
            INDEFINIDO: _ClassVar[Croqui.StatusDesenhoExtraivel.Enum]
            NAO_TEM_DESENHO: _ClassVar[Croqui.StatusDesenhoExtraivel.Enum]
            TEM_DESENHO_MAS_NAO_EXTRAIDO: _ClassVar[Croqui.StatusDesenhoExtraivel.Enum]
            DESENHO_EXTRAIDO: _ClassVar[Croqui.StatusDesenhoExtraivel.Enum]
        INDEFINIDO: Croqui.StatusDesenhoExtraivel.Enum
        NAO_TEM_DESENHO: Croqui.StatusDesenhoExtraivel.Enum
        TEM_DESENHO_MAS_NAO_EXTRAIDO: Croqui.StatusDesenhoExtraivel.Enum
        DESENHO_EXTRAIDO: Croqui.StatusDesenhoExtraivel.Enum
        def __init__(self) -> None: ...
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    ID_FIELD_NUMBER: _ClassVar[int]
    UID_FIELD_NUMBER: _ClassVar[int]
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    CREDITOS_FIELD_NUMBER: _ClassVar[int]
    BOTOES_FIELD_NUMBER: _ClassVar[int]
    PICOS_FIELD_NUMBER: _ClassVar[int]
    ARQUIVOS_EXTERNOS_FIELD_NUMBER: _ClassVar[int]
    CAMINHO_THUMBNAIL_FIELD_NUMBER: _ClassVar[int]
    REVISADO_MANUALMENTE_FIELD_NUMBER: _ClassVar[int]
    REVISADO_BOUNDING_CIRCLE_FIELD_NUMBER: _ClassVar[int]
    STATUS_DESENHO_EXTRAIVEL_FIELD_NUMBER: _ClassVar[int]
    ULTIMA_MIGRACAO_FIELD_NUMBER: _ClassVar[int]
    PUBLICAR_CROQUI_FIELD_NUMBER: _ClassVar[int]
    CURADORIA_BETAS_FIELD_NUMBER: _ClassVar[int]
    id: str
    uid: str
    nome: str
    descricao: str
    creditos: _containers.RepeatedScalarFieldContainer[str]
    botoes: _containers.RepeatedCompositeFieldContainer[Botao]
    picos: _containers.RepeatedCompositeFieldContainer[Pico]
    arquivos_externos: _containers.RepeatedCompositeFieldContainer[ArquivoExterno]
    caminho_thumbnail: str
    revisado_manualmente: bool
    revisado_bounding_circle: bool
    status_desenho_extraivel: Croqui.StatusDesenhoExtraivel.Enum
    ultima_migracao: int
    publicar_croqui: bool
    curadoria_betas: ArquivoCuradoriaBetas
    def __init__(self, id: _Optional[str] = ..., uid: _Optional[str] = ..., nome: _Optional[str] = ..., descricao: _Optional[str] = ..., creditos: _Optional[_Iterable[str]] = ..., botoes: _Optional[_Iterable[_Union[Botao, _Mapping]]] = ..., picos: _Optional[_Iterable[_Union[Pico, _Mapping]]] = ..., arquivos_externos: _Optional[_Iterable[_Union[ArquivoExterno, _Mapping]]] = ..., caminho_thumbnail: _Optional[str] = ..., revisado_manualmente: _Optional[bool] = ..., revisado_bounding_circle: _Optional[bool] = ..., status_desenho_extraivel: _Optional[_Union[Croqui.StatusDesenhoExtraivel.Enum, str]] = ..., ultima_migracao: _Optional[int] = ..., publicar_croqui: _Optional[bool] = ..., curadoria_betas: _Optional[_Union[ArquivoCuradoriaBetas, _Mapping]] = ...) -> None: ...

class Botao(_message.Message):
    __slots__ = ("uid", "texto", "destino")
    UID_FIELD_NUMBER: _ClassVar[int]
    TEXTO_FIELD_NUMBER: _ClassVar[int]
    DESTINO_FIELD_NUMBER: _ClassVar[int]
    uid: str
    texto: str
    destino: DestinoBotao
    def __init__(self, uid: _Optional[str] = ..., texto: _Optional[str] = ..., destino: _Optional[_Union[DestinoBotao, _Mapping]] = ...) -> None: ...

class DestinoBotao(_message.Message):
    __slots__ = ("secao_textual",)
    SECAO_TEXTUAL_FIELD_NUMBER: _ClassVar[int]
    secao_textual: ArquivoMarkdown
    def __init__(self, secao_textual: _Optional[_Union[ArquivoMarkdown, _Mapping]] = ...) -> None: ...

class ArquivoExterno(_message.Message):
    __slots__ = ("caminho", "checksum_sha256")
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CHECKSUM_SHA256_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    checksum_sha256: str
    def __init__(self, caminho: _Optional[str] = ..., checksum_sha256: _Optional[str] = ...) -> None: ...

class MetadadosArquivoNoEditor(_message.Message):
    __slots__ = ("caminho_original", "caminho_novo", "dados_json_originais")
    CAMINHO_ORIGINAL_FIELD_NUMBER: _ClassVar[int]
    CAMINHO_NOVO_FIELD_NUMBER: _ClassVar[int]
    DADOS_JSON_ORIGINAIS_FIELD_NUMBER: _ClassVar[int]
    caminho_original: str
    caminho_novo: str
    dados_json_originais: str
    def __init__(self, caminho_original: _Optional[str] = ..., caminho_novo: _Optional[str] = ..., dados_json_originais: _Optional[str] = ...) -> None: ...

class ArquivoMarkdown(_message.Message):
    __slots__ = ("caminho", "conteudo")
    Extensions: _python_message._ExtensionDict
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    conteudo: str
    def __init__(self, caminho: _Optional[str] = ..., conteudo: _Optional[str] = ...) -> None: ...

class PrecomputadosSetor(_message.Message):
    __slots__ = ("total_escaladas", "total_esportivas", "total_moveis", "total_boulders", "total_multiplas_enfiadas", "total_highlines")
    TOTAL_ESCALADAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_ESPORTIVAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_MOVEIS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_BOULDERS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_MULTIPLAS_ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_HIGHLINES_FIELD_NUMBER: _ClassVar[int]
    total_escaladas: int
    total_esportivas: int
    total_moveis: int
    total_boulders: int
    total_multiplas_enfiadas: int
    total_highlines: int
    def __init__(self, total_escaladas: _Optional[int] = ..., total_esportivas: _Optional[int] = ..., total_moveis: _Optional[int] = ..., total_boulders: _Optional[int] = ..., total_multiplas_enfiadas: _Optional[int] = ..., total_highlines: _Optional[int] = ...) -> None: ...

class PrecomputadosGrupo(_message.Message):
    __slots__ = ("total_escaladas", "total_esportivas", "total_moveis", "total_boulders", "total_multiplas_enfiadas", "total_highlines")
    TOTAL_ESCALADAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_ESPORTIVAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_MOVEIS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_BOULDERS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_MULTIPLAS_ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_HIGHLINES_FIELD_NUMBER: _ClassVar[int]
    total_escaladas: int
    total_esportivas: int
    total_moveis: int
    total_boulders: int
    total_multiplas_enfiadas: int
    total_highlines: int
    def __init__(self, total_escaladas: _Optional[int] = ..., total_esportivas: _Optional[int] = ..., total_moveis: _Optional[int] = ..., total_boulders: _Optional[int] = ..., total_multiplas_enfiadas: _Optional[int] = ..., total_highlines: _Optional[int] = ...) -> None: ...

class PrecomputadosPico(_message.Message):
    __slots__ = ("total_escaladas", "total_setores", "total_grupos", "total_esportivas", "total_moveis", "total_boulders", "total_multiplas_enfiadas", "total_highlines")
    TOTAL_ESCALADAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_SETORES_FIELD_NUMBER: _ClassVar[int]
    TOTAL_GRUPOS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_ESPORTIVAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_MOVEIS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_BOULDERS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_MULTIPLAS_ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    TOTAL_HIGHLINES_FIELD_NUMBER: _ClassVar[int]
    total_escaladas: int
    total_setores: int
    total_grupos: int
    total_esportivas: int
    total_moveis: int
    total_boulders: int
    total_multiplas_enfiadas: int
    total_highlines: int
    def __init__(self, total_escaladas: _Optional[int] = ..., total_setores: _Optional[int] = ..., total_grupos: _Optional[int] = ..., total_esportivas: _Optional[int] = ..., total_moveis: _Optional[int] = ..., total_boulders: _Optional[int] = ..., total_multiplas_enfiadas: _Optional[int] = ..., total_highlines: _Optional[int] = ...) -> None: ...

class NoMalhaEstrada(_message.Message):
    __slots__ = ("no_osm_id", "latitude_e7", "longitude_e7", "distancia_metros", "na_borda", "duracao_minutos")
    NO_OSM_ID_FIELD_NUMBER: _ClassVar[int]
    LATITUDE_E7_FIELD_NUMBER: _ClassVar[int]
    LONGITUDE_E7_FIELD_NUMBER: _ClassVar[int]
    DISTANCIA_METROS_FIELD_NUMBER: _ClassVar[int]
    NA_BORDA_FIELD_NUMBER: _ClassVar[int]
    DURACAO_MINUTOS_FIELD_NUMBER: _ClassVar[int]
    no_osm_id: int
    latitude_e7: int
    longitude_e7: int
    distancia_metros: int
    na_borda: bool
    duracao_minutos: int
    def __init__(self, no_osm_id: _Optional[int] = ..., latitude_e7: _Optional[int] = ..., longitude_e7: _Optional[int] = ..., distancia_metros: _Optional[int] = ..., na_borda: _Optional[bool] = ..., duracao_minutos: _Optional[int] = ...) -> None: ...

class MalhaEstradaPico(_message.Message):
    __slots__ = ("latitude_referencia_e7", "longitude_referencia_e7", "nos")
    LATITUDE_REFERENCIA_E7_FIELD_NUMBER: _ClassVar[int]
    LONGITUDE_REFERENCIA_E7_FIELD_NUMBER: _ClassVar[int]
    NOS_FIELD_NUMBER: _ClassVar[int]
    latitude_referencia_e7: int
    longitude_referencia_e7: int
    nos: _containers.RepeatedCompositeFieldContainer[NoMalhaEstrada]
    def __init__(self, latitude_referencia_e7: _Optional[int] = ..., longitude_referencia_e7: _Optional[int] = ..., nos: _Optional[_Iterable[_Union[NoMalhaEstrada, _Mapping]]] = ...) -> None: ...

class Pico(_message.Message):
    __slots__ = ("nome", "descricao", "cidade", "estado", "localizacao", "url_google_maps", "nome_associacao", "url_filiacao_associacao", "chave_pix_manutencao", "patrocinadores", "setores_ou_grupos", "mapas_gerais", "precomputados", "malha_estrada")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    CIDADE_FIELD_NUMBER: _ClassVar[int]
    ESTADO_FIELD_NUMBER: _ClassVar[int]
    LOCALIZACAO_FIELD_NUMBER: _ClassVar[int]
    URL_GOOGLE_MAPS_FIELD_NUMBER: _ClassVar[int]
    NOME_ASSOCIACAO_FIELD_NUMBER: _ClassVar[int]
    URL_FILIACAO_ASSOCIACAO_FIELD_NUMBER: _ClassVar[int]
    CHAVE_PIX_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    PATROCINADORES_FIELD_NUMBER: _ClassVar[int]
    SETORES_OU_GRUPOS_FIELD_NUMBER: _ClassVar[int]
    MAPAS_GERAIS_FIELD_NUMBER: _ClassVar[int]
    PRECOMPUTADOS_FIELD_NUMBER: _ClassVar[int]
    MALHA_ESTRADA_FIELD_NUMBER: _ClassVar[int]
    nome: str
    descricao: str
    cidade: str
    estado: str
    localizacao: Coordenada
    url_google_maps: str
    nome_associacao: str
    url_filiacao_associacao: str
    chave_pix_manutencao: str
    patrocinadores: _containers.RepeatedCompositeFieldContainer[Patrocinador]
    setores_ou_grupos: _containers.RepeatedCompositeFieldContainer[SetorOuGrupo]
    mapas_gerais: ArquivoMapas
    precomputados: PrecomputadosPico
    malha_estrada: ArquivoMalhaEstrada
    def __init__(self, nome: _Optional[str] = ..., descricao: _Optional[str] = ..., cidade: _Optional[str] = ..., estado: _Optional[str] = ..., localizacao: _Optional[_Union[Coordenada, _Mapping]] = ..., url_google_maps: _Optional[str] = ..., nome_associacao: _Optional[str] = ..., url_filiacao_associacao: _Optional[str] = ..., chave_pix_manutencao: _Optional[str] = ..., patrocinadores: _Optional[_Iterable[_Union[Patrocinador, _Mapping]]] = ..., setores_ou_grupos: _Optional[_Iterable[_Union[SetorOuGrupo, _Mapping]]] = ..., mapas_gerais: _Optional[_Union[ArquivoMapas, _Mapping]] = ..., precomputados: _Optional[_Union[PrecomputadosPico, _Mapping]] = ..., malha_estrada: _Optional[_Union[ArquivoMalhaEstrada, _Mapping]] = ...) -> None: ...

class ArquivoMalhaEstrada(_message.Message):
    __slots__ = ("caminho", "conteudo")
    Extensions: _python_message._ExtensionDict
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    conteudo: MalhaEstradaPico
    def __init__(self, caminho: _Optional[str] = ..., conteudo: _Optional[_Union[MalhaEstradaPico, _Mapping]] = ...) -> None: ...

class ColecaoDeMapas(_message.Message):
    __slots__ = ("mapas",)
    MAPAS_FIELD_NUMBER: _ClassVar[int]
    mapas: _containers.RepeatedCompositeFieldContainer[Mapa]
    def __init__(self, mapas: _Optional[_Iterable[_Union[Mapa, _Mapping]]] = ...) -> None: ...

class ArquivoMapas(_message.Message):
    __slots__ = ("caminho", "conteudo")
    Extensions: _python_message._ExtensionDict
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    conteudo: ColecaoDeMapas
    def __init__(self, caminho: _Optional[str] = ..., conteudo: _Optional[_Union[ColecaoDeMapas, _Mapping]] = ...) -> None: ...

class ArquivoCuradoriaBetas(_message.Message):
    __slots__ = ("caminho", "conteudo")
    Extensions: _python_message._ExtensionDict
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    conteudo: _beta_pb2.ColecaoCuradoriaBetas
    def __init__(self, caminho: _Optional[str] = ..., conteudo: _Optional[_Union[_beta_pb2.ColecaoCuradoriaBetas, _Mapping]] = ...) -> None: ...

class SetorOuGrupo(_message.Message):
    __slots__ = ("setor", "grupo")
    SETOR_FIELD_NUMBER: _ClassVar[int]
    GRUPO_FIELD_NUMBER: _ClassVar[int]
    setor: ArquivoSetor
    grupo: ArquivoGrupo
    def __init__(self, setor: _Optional[_Union[ArquivoSetor, _Mapping]] = ..., grupo: _Optional[_Union[ArquivoGrupo, _Mapping]] = ...) -> None: ...

class ArquivoSetor(_message.Message):
    __slots__ = ("caminho", "conteudo")
    Extensions: _python_message._ExtensionDict
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    conteudo: Setor
    def __init__(self, caminho: _Optional[str] = ..., conteudo: _Optional[_Union[Setor, _Mapping]] = ...) -> None: ...

class ArquivoGrupo(_message.Message):
    __slots__ = ("caminho", "conteudo")
    Extensions: _python_message._ExtensionDict
    EXT_METADADOS_ARQUIVO_FIELD_NUMBER: _ClassVar[int]
    ext_metadados_arquivo: _descriptor.FieldDescriptor
    CAMINHO_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    caminho: str
    conteudo: Grupo
    def __init__(self, caminho: _Optional[str] = ..., conteudo: _Optional[_Union[Grupo, _Mapping]] = ...) -> None: ...

class Grupo(_message.Message):
    __slots__ = ("uid", "nome", "caminho_imagem_capa", "descricao", "localizacao_estacionamento", "localizacao_escalada", "mapas", "setores", "precomputados")
    UID_FIELD_NUMBER: _ClassVar[int]
    NOME_FIELD_NUMBER: _ClassVar[int]
    CAMINHO_IMAGEM_CAPA_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    LOCALIZACAO_ESTACIONAMENTO_FIELD_NUMBER: _ClassVar[int]
    LOCALIZACAO_ESCALADA_FIELD_NUMBER: _ClassVar[int]
    MAPAS_FIELD_NUMBER: _ClassVar[int]
    SETORES_FIELD_NUMBER: _ClassVar[int]
    PRECOMPUTADOS_FIELD_NUMBER: _ClassVar[int]
    uid: str
    nome: str
    caminho_imagem_capa: str
    descricao: str
    localizacao_estacionamento: Coordenada
    localizacao_escalada: Coordenada
    mapas: _containers.RepeatedCompositeFieldContainer[Mapa]
    setores: _containers.RepeatedCompositeFieldContainer[ArquivoSetor]
    precomputados: PrecomputadosGrupo
    def __init__(self, uid: _Optional[str] = ..., nome: _Optional[str] = ..., caminho_imagem_capa: _Optional[str] = ..., descricao: _Optional[str] = ..., localizacao_estacionamento: _Optional[_Union[Coordenada, _Mapping]] = ..., localizacao_escalada: _Optional[_Union[Coordenada, _Mapping]] = ..., mapas: _Optional[_Iterable[_Union[Mapa, _Mapping]]] = ..., setores: _Optional[_Iterable[_Union[ArquivoSetor, _Mapping]]] = ..., precomputados: _Optional[_Union[PrecomputadosGrupo, _Mapping]] = ...) -> None: ...

class Setor(_message.Message):
    __slots__ = ("uid", "nome", "caminho_imagem_capa", "descricao", "localizacao_estacionamento", "localizacao_escalada", "trilhas", "sinal_de_celular", "amigavel_a_criancas", "amigavel_a_bebes", "mapas", "escaladas", "precomputados")
    UID_FIELD_NUMBER: _ClassVar[int]
    NOME_FIELD_NUMBER: _ClassVar[int]
    CAMINHO_IMAGEM_CAPA_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    LOCALIZACAO_ESTACIONAMENTO_FIELD_NUMBER: _ClassVar[int]
    LOCALIZACAO_ESCALADA_FIELD_NUMBER: _ClassVar[int]
    TRILHAS_FIELD_NUMBER: _ClassVar[int]
    SINAL_DE_CELULAR_FIELD_NUMBER: _ClassVar[int]
    AMIGAVEL_A_CRIANCAS_FIELD_NUMBER: _ClassVar[int]
    AMIGAVEL_A_BEBES_FIELD_NUMBER: _ClassVar[int]
    MAPAS_FIELD_NUMBER: _ClassVar[int]
    ESCALADAS_FIELD_NUMBER: _ClassVar[int]
    PRECOMPUTADOS_FIELD_NUMBER: _ClassVar[int]
    uid: str
    nome: str
    caminho_imagem_capa: str
    descricao: str
    localizacao_estacionamento: Coordenada
    localizacao_escalada: Coordenada
    trilhas: _containers.RepeatedCompositeFieldContainer[Trilha]
    sinal_de_celular: bool
    amigavel_a_criancas: bool
    amigavel_a_bebes: bool
    mapas: _containers.RepeatedCompositeFieldContainer[Mapa]
    escaladas: _containers.RepeatedCompositeFieldContainer[Escalada]
    precomputados: PrecomputadosSetor
    def __init__(self, uid: _Optional[str] = ..., nome: _Optional[str] = ..., caminho_imagem_capa: _Optional[str] = ..., descricao: _Optional[str] = ..., localizacao_estacionamento: _Optional[_Union[Coordenada, _Mapping]] = ..., localizacao_escalada: _Optional[_Union[Coordenada, _Mapping]] = ..., trilhas: _Optional[_Iterable[_Union[Trilha, _Mapping]]] = ..., sinal_de_celular: _Optional[bool] = ..., amigavel_a_criancas: _Optional[bool] = ..., amigavel_a_bebes: _Optional[bool] = ..., mapas: _Optional[_Iterable[_Union[Mapa, _Mapping]]] = ..., escaladas: _Optional[_Iterable[_Union[Escalada, _Mapping]]] = ..., precomputados: _Optional[_Union[PrecomputadosSetor, _Mapping]] = ...) -> None: ...

class Mapa(_message.Message):
    __slots__ = ("caminho_imagem_mapa", "largura_mapa", "altura_mapa", "pontos_de_interesse", "referencias")
    class PontoDeInteresse(_message.Message):
        __slots__ = ("uid", "id", "label", "rotulo", "texto_visivel", "tamanho_fonte", "cor", "preenchido", "circulo", "quadrado", "retangulo", "poligono", "linha")
        UID_FIELD_NUMBER: _ClassVar[int]
        ID_FIELD_NUMBER: _ClassVar[int]
        LABEL_FIELD_NUMBER: _ClassVar[int]
        ROTULO_FIELD_NUMBER: _ClassVar[int]
        TEXTO_VISIVEL_FIELD_NUMBER: _ClassVar[int]
        TAMANHO_FONTE_FIELD_NUMBER: _ClassVar[int]
        COR_FIELD_NUMBER: _ClassVar[int]
        PREENCHIDO_FIELD_NUMBER: _ClassVar[int]
        CIRCULO_FIELD_NUMBER: _ClassVar[int]
        QUADRADO_FIELD_NUMBER: _ClassVar[int]
        RETANGULO_FIELD_NUMBER: _ClassVar[int]
        POLIGONO_FIELD_NUMBER: _ClassVar[int]
        LINHA_FIELD_NUMBER: _ClassVar[int]
        uid: str
        id: str
        label: str
        rotulo: str
        texto_visivel: str
        tamanho_fonte: int
        cor: str
        preenchido: bool
        circulo: BoundingCirculo
        quadrado: BoundingQuadrado
        retangulo: BoundingRetangulo
        poligono: BoundingPoligono
        linha: LinhaTrajeto
        def __init__(self, uid: _Optional[str] = ..., id: _Optional[str] = ..., label: _Optional[str] = ..., rotulo: _Optional[str] = ..., texto_visivel: _Optional[str] = ..., tamanho_fonte: _Optional[int] = ..., cor: _Optional[str] = ..., preenchido: _Optional[bool] = ..., circulo: _Optional[_Union[BoundingCirculo, _Mapping]] = ..., quadrado: _Optional[_Union[BoundingQuadrado, _Mapping]] = ..., retangulo: _Optional[_Union[BoundingRetangulo, _Mapping]] = ..., poligono: _Optional[_Union[BoundingPoligono, _Mapping]] = ..., linha: _Optional[_Union[LinhaTrajeto, _Mapping]] = ...) -> None: ...
    class AjusteDeCamera(_message.Message):
        __slots__ = ("foco_id_indice", "posicao_vertical", "posicao_horizontal", "zoom")
        FOCO_ID_INDICE_FIELD_NUMBER: _ClassVar[int]
        POSICAO_VERTICAL_FIELD_NUMBER: _ClassVar[int]
        POSICAO_HORIZONTAL_FIELD_NUMBER: _ClassVar[int]
        ZOOM_FIELD_NUMBER: _ClassVar[int]
        foco_id_indice: int
        posicao_vertical: int
        posicao_horizontal: int
        zoom: float
        def __init__(self, foco_id_indice: _Optional[int] = ..., posicao_vertical: _Optional[int] = ..., posicao_horizontal: _Optional[int] = ..., zoom: _Optional[float] = ...) -> None: ...
    class Referencia(_message.Message):
        __slots__ = ("alvo_uid", "pontos_uids", "ids", "grupo", "setor", "escalada", "ajuste_de_camera")
        ALVO_UID_FIELD_NUMBER: _ClassVar[int]
        PONTOS_UIDS_FIELD_NUMBER: _ClassVar[int]
        IDS_FIELD_NUMBER: _ClassVar[int]
        GRUPO_FIELD_NUMBER: _ClassVar[int]
        SETOR_FIELD_NUMBER: _ClassVar[int]
        ESCALADA_FIELD_NUMBER: _ClassVar[int]
        AJUSTE_DE_CAMERA_FIELD_NUMBER: _ClassVar[int]
        alvo_uid: str
        pontos_uids: _containers.RepeatedScalarFieldContainer[str]
        ids: _containers.RepeatedScalarFieldContainer[str]
        grupo: str
        setor: str
        escalada: str
        ajuste_de_camera: Mapa.AjusteDeCamera
        def __init__(self, alvo_uid: _Optional[str] = ..., pontos_uids: _Optional[_Iterable[str]] = ..., ids: _Optional[_Iterable[str]] = ..., grupo: _Optional[str] = ..., setor: _Optional[str] = ..., escalada: _Optional[str] = ..., ajuste_de_camera: _Optional[_Union[Mapa.AjusteDeCamera, _Mapping]] = ...) -> None: ...
    CAMINHO_IMAGEM_MAPA_FIELD_NUMBER: _ClassVar[int]
    LARGURA_MAPA_FIELD_NUMBER: _ClassVar[int]
    ALTURA_MAPA_FIELD_NUMBER: _ClassVar[int]
    PONTOS_DE_INTERESSE_FIELD_NUMBER: _ClassVar[int]
    REFERENCIAS_FIELD_NUMBER: _ClassVar[int]
    caminho_imagem_mapa: str
    largura_mapa: int
    altura_mapa: int
    pontos_de_interesse: _containers.RepeatedCompositeFieldContainer[Mapa.PontoDeInteresse]
    referencias: _containers.RepeatedCompositeFieldContainer[Mapa.Referencia]
    def __init__(self, caminho_imagem_mapa: _Optional[str] = ..., largura_mapa: _Optional[int] = ..., altura_mapa: _Optional[int] = ..., pontos_de_interesse: _Optional[_Iterable[_Union[Mapa.PontoDeInteresse, _Mapping]]] = ..., referencias: _Optional[_Iterable[_Union[Mapa.Referencia, _Mapping]]] = ...) -> None: ...

class BoundingCirculo(_message.Message):
    __slots__ = ("x", "y", "raio")
    X_FIELD_NUMBER: _ClassVar[int]
    Y_FIELD_NUMBER: _ClassVar[int]
    RAIO_FIELD_NUMBER: _ClassVar[int]
    x: int
    y: int
    raio: int
    def __init__(self, x: _Optional[int] = ..., y: _Optional[int] = ..., raio: _Optional[int] = ...) -> None: ...

class BoundingQuadrado(_message.Message):
    __slots__ = ("x", "y", "lado")
    X_FIELD_NUMBER: _ClassVar[int]
    Y_FIELD_NUMBER: _ClassVar[int]
    LADO_FIELD_NUMBER: _ClassVar[int]
    x: int
    y: int
    lado: int
    def __init__(self, x: _Optional[int] = ..., y: _Optional[int] = ..., lado: _Optional[int] = ...) -> None: ...

class BoundingRetangulo(_message.Message):
    __slots__ = ("x", "y", "comprimento", "largura", "angulo_graus_x100")
    X_FIELD_NUMBER: _ClassVar[int]
    Y_FIELD_NUMBER: _ClassVar[int]
    COMPRIMENTO_FIELD_NUMBER: _ClassVar[int]
    LARGURA_FIELD_NUMBER: _ClassVar[int]
    ANGULO_GRAUS_X100_FIELD_NUMBER: _ClassVar[int]
    x: int
    y: int
    comprimento: int
    largura: int
    angulo_graus_x100: int
    def __init__(self, x: _Optional[int] = ..., y: _Optional[int] = ..., comprimento: _Optional[int] = ..., largura: _Optional[int] = ..., angulo_graus_x100: _Optional[int] = ...) -> None: ...

class BoundingPoligono(_message.Message):
    __slots__ = ("coordenadas",)
    COORDENADAS_FIELD_NUMBER: _ClassVar[int]
    coordenadas: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, coordenadas: _Optional[_Iterable[int]] = ...) -> None: ...

class LinhaTrajeto(_message.Message):
    __slots__ = ("estilo", "espessura", "conteudo", "compilado")
    class EstiloTraco(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        TRACEJADO: _ClassVar[LinhaTrajeto.EstiloTraco]
        SOLIDO: _ClassVar[LinhaTrajeto.EstiloTraco]
        PONTILHADO: _ClassVar[LinhaTrajeto.EstiloTraco]
        CAMINHADA: _ClassVar[LinhaTrajeto.EstiloTraco]
    TRACEJADO: LinhaTrajeto.EstiloTraco
    SOLIDO: LinhaTrajeto.EstiloTraco
    PONTILHADO: LinhaTrajeto.EstiloTraco
    CAMINHADA: LinhaTrajeto.EstiloTraco
    ESTILO_FIELD_NUMBER: _ClassVar[int]
    ESPESSURA_FIELD_NUMBER: _ClassVar[int]
    CONTEUDO_FIELD_NUMBER: _ClassVar[int]
    COMPILADO_FIELD_NUMBER: _ClassVar[int]
    estilo: LinhaTrajeto.EstiloTraco
    espessura: int
    conteudo: DadosConteudoLinha
    compilado: DadosCompiladosLinha
    def __init__(self, estilo: _Optional[_Union[LinhaTrajeto.EstiloTraco, str]] = ..., espessura: _Optional[int] = ..., conteudo: _Optional[_Union[DadosConteudoLinha, _Mapping]] = ..., compilado: _Optional[_Union[DadosCompiladosLinha, _Mapping]] = ...) -> None: ...

class DadosConteudoLinha(_message.Message):
    __slots__ = ("nos",)
    NOS_FIELD_NUMBER: _ClassVar[int]
    nos: _containers.RepeatedCompositeFieldContainer[NoTrajeto]
    def __init__(self, nos: _Optional[_Iterable[_Union[NoTrajeto, _Mapping]]] = ...) -> None: ...

class NoTrajeto(_message.Message):
    __slots__ = ("x", "y", "tipo", "rotulo", "raio", "tamanho_fonte")
    class TipoNo(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        PASSAGEM: _ClassVar[NoTrajeto.TipoNo]
        CIRCULO_IDENTIFICADOR: _ClassVar[NoTrajeto.TipoNo]
        INICIO_AGACHADO: _ClassVar[NoTrajeto.TipoNo]
        PROTECAO_FIXA: _ClassVar[NoTrajeto.TipoNo]
        PARADA_INTERMEDIARIA: _ClassVar[NoTrajeto.TipoNo]
        TOP_PARADA: _ClassVar[NoTrajeto.TipoNo]
        CRUX: _ClassVar[NoTrajeto.TipoNo]
        PROTECAO_MOVEL: _ClassVar[NoTrajeto.TipoNo]
        PROTECAO_PITON: _ClassVar[NoTrajeto.TipoNo]
        PROTECAO_FITA: _ClassVar[NoTrajeto.TipoNo]
        BURACO_CLIFF: _ClassVar[NoTrajeto.TipoNo]
        FIM_TOP: _ClassVar[NoTrajeto.TipoNo]
        SETA_DIRECIONAL: _ClassVar[NoTrajeto.TipoNo]
    PASSAGEM: NoTrajeto.TipoNo
    CIRCULO_IDENTIFICADOR: NoTrajeto.TipoNo
    INICIO_AGACHADO: NoTrajeto.TipoNo
    PROTECAO_FIXA: NoTrajeto.TipoNo
    PARADA_INTERMEDIARIA: NoTrajeto.TipoNo
    TOP_PARADA: NoTrajeto.TipoNo
    CRUX: NoTrajeto.TipoNo
    PROTECAO_MOVEL: NoTrajeto.TipoNo
    PROTECAO_PITON: NoTrajeto.TipoNo
    PROTECAO_FITA: NoTrajeto.TipoNo
    BURACO_CLIFF: NoTrajeto.TipoNo
    FIM_TOP: NoTrajeto.TipoNo
    SETA_DIRECIONAL: NoTrajeto.TipoNo
    X_FIELD_NUMBER: _ClassVar[int]
    Y_FIELD_NUMBER: _ClassVar[int]
    TIPO_FIELD_NUMBER: _ClassVar[int]
    ROTULO_FIELD_NUMBER: _ClassVar[int]
    RAIO_FIELD_NUMBER: _ClassVar[int]
    TAMANHO_FONTE_FIELD_NUMBER: _ClassVar[int]
    x: int
    y: int
    tipo: NoTrajeto.TipoNo
    rotulo: str
    raio: int
    tamanho_fonte: int
    def __init__(self, x: _Optional[int] = ..., y: _Optional[int] = ..., tipo: _Optional[_Union[NoTrajeto.TipoNo, str]] = ..., rotulo: _Optional[str] = ..., raio: _Optional[int] = ..., tamanho_fonte: _Optional[int] = ...) -> None: ...

class DadosCompiladosLinha(_message.Message):
    __slots__ = ("caminho_svg", "caixa_delimitadora", "marcadores")
    CAMINHO_SVG_FIELD_NUMBER: _ClassVar[int]
    CAIXA_DELIMITADORA_FIELD_NUMBER: _ClassVar[int]
    MARCADORES_FIELD_NUMBER: _ClassVar[int]
    caminho_svg: str
    caixa_delimitadora: BoundingRetangulo
    marcadores: _containers.RepeatedCompositeFieldContainer[MarcadorCompilado]
    def __init__(self, caminho_svg: _Optional[str] = ..., caixa_delimitadora: _Optional[_Union[BoundingRetangulo, _Mapping]] = ..., marcadores: _Optional[_Iterable[_Union[MarcadorCompilado, _Mapping]]] = ...) -> None: ...

class MarcadorCompilado(_message.Message):
    __slots__ = ("x", "y", "angulo_graus_x100", "tipo", "rotulo", "raio", "tamanho_fonte")
    X_FIELD_NUMBER: _ClassVar[int]
    Y_FIELD_NUMBER: _ClassVar[int]
    ANGULO_GRAUS_X100_FIELD_NUMBER: _ClassVar[int]
    TIPO_FIELD_NUMBER: _ClassVar[int]
    ROTULO_FIELD_NUMBER: _ClassVar[int]
    RAIO_FIELD_NUMBER: _ClassVar[int]
    TAMANHO_FONTE_FIELD_NUMBER: _ClassVar[int]
    x: int
    y: int
    angulo_graus_x100: int
    tipo: NoTrajeto.TipoNo
    rotulo: str
    raio: int
    tamanho_fonte: int
    def __init__(self, x: _Optional[int] = ..., y: _Optional[int] = ..., angulo_graus_x100: _Optional[int] = ..., tipo: _Optional[_Union[NoTrajeto.TipoNo, str]] = ..., rotulo: _Optional[str] = ..., raio: _Optional[int] = ..., tamanho_fonte: _Optional[int] = ...) -> None: ...

class Escalada(_message.Message):
    __slots__ = ("uid", "via_esportiva", "via_movel", "boulder", "via_multiplas_enfiadas", "highline", "betas", "mapas")
    UID_FIELD_NUMBER: _ClassVar[int]
    VIA_ESPORTIVA_FIELD_NUMBER: _ClassVar[int]
    VIA_MOVEL_FIELD_NUMBER: _ClassVar[int]
    BOULDER_FIELD_NUMBER: _ClassVar[int]
    VIA_MULTIPLAS_ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    HIGHLINE_FIELD_NUMBER: _ClassVar[int]
    BETAS_FIELD_NUMBER: _ClassVar[int]
    MAPAS_FIELD_NUMBER: _ClassVar[int]
    uid: str
    via_esportiva: ViaEsportiva
    via_movel: ViaMovel
    boulder: Boulder
    via_multiplas_enfiadas: ViaMultiplasEnfiadas
    highline: Highline
    betas: _containers.RepeatedCompositeFieldContainer[_beta_pb2.MidiaBeta]
    mapas: _containers.RepeatedCompositeFieldContainer[Mapa]
    def __init__(self, uid: _Optional[str] = ..., via_esportiva: _Optional[_Union[ViaEsportiva, _Mapping]] = ..., via_movel: _Optional[_Union[ViaMovel, _Mapping]] = ..., boulder: _Optional[_Union[Boulder, _Mapping]] = ..., via_multiplas_enfiadas: _Optional[_Union[ViaMultiplasEnfiadas, _Mapping]] = ..., highline: _Optional[_Union[Highline, _Mapping]] = ..., betas: _Optional[_Iterable[_Union[_beta_pb2.MidiaBeta, _Mapping]]] = ..., mapas: _Optional[_Iterable[_Union[Mapa, _Mapping]]] = ...) -> None: ...

class ViaEsportiva(_message.Message):
    __slots__ = ("nome", "destaque", "dificuldade", "dificuldade_artificial", "exposicao", "tipo_parede", "extensao", "quantidade_protecoes_intermediarias", "quantidade_protecoes_parada", "tipo_ancoragem", "conquistadores", "data_abertura", "data_manutencao", "descricao", "url_video_beta", "chave_pix_manutencao")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESTAQUE_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_ARTIFICIAL_FIELD_NUMBER: _ClassVar[int]
    EXPOSICAO_FIELD_NUMBER: _ClassVar[int]
    TIPO_PAREDE_FIELD_NUMBER: _ClassVar[int]
    EXTENSAO_FIELD_NUMBER: _ClassVar[int]
    QUANTIDADE_PROTECOES_INTERMEDIARIAS_FIELD_NUMBER: _ClassVar[int]
    QUANTIDADE_PROTECOES_PARADA_FIELD_NUMBER: _ClassVar[int]
    TIPO_ANCORAGEM_FIELD_NUMBER: _ClassVar[int]
    CONQUISTADORES_FIELD_NUMBER: _ClassVar[int]
    DATA_ABERTURA_FIELD_NUMBER: _ClassVar[int]
    DATA_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    URL_VIDEO_BETA_FIELD_NUMBER: _ClassVar[int]
    CHAVE_PIX_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    nome: str
    destaque: bool
    dificuldade: GrauVia.GrauVia
    dificuldade_artificial: GrauArtificial.GrauArtificial
    exposicao: GrauExposicao.GrauExposicao
    tipo_parede: TipoParede.TipoParede
    extensao: int
    quantidade_protecoes_intermediarias: int
    quantidade_protecoes_parada: int
    tipo_ancoragem: str
    conquistadores: _containers.RepeatedScalarFieldContainer[str]
    data_abertura: str
    data_manutencao: str
    descricao: str
    url_video_beta: str
    chave_pix_manutencao: str
    def __init__(self, nome: _Optional[str] = ..., destaque: _Optional[bool] = ..., dificuldade: _Optional[_Union[GrauVia.GrauVia, str]] = ..., dificuldade_artificial: _Optional[_Union[GrauArtificial.GrauArtificial, str]] = ..., exposicao: _Optional[_Union[GrauExposicao.GrauExposicao, str]] = ..., tipo_parede: _Optional[_Union[TipoParede.TipoParede, str]] = ..., extensao: _Optional[int] = ..., quantidade_protecoes_intermediarias: _Optional[int] = ..., quantidade_protecoes_parada: _Optional[int] = ..., tipo_ancoragem: _Optional[str] = ..., conquistadores: _Optional[_Iterable[str]] = ..., data_abertura: _Optional[str] = ..., data_manutencao: _Optional[str] = ..., descricao: _Optional[str] = ..., url_video_beta: _Optional[str] = ..., chave_pix_manutencao: _Optional[str] = ...) -> None: ...

class ViaMovel(_message.Message):
    __slots__ = ("nome", "destaque", "dificuldade", "dificuldade_artificial", "dificuldade_artificial_em_livre", "exposicao", "tipo_parede", "extensao", "quantidade_protecoes_intermediarias", "quantidade_protecoes_parada", "protecoes_moveis", "tipo_ancoragem", "conquistadores", "data_abertura", "data_manutencao", "descricao", "url_video_beta", "chave_pix_manutencao")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESTAQUE_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_ARTIFICIAL_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_ARTIFICIAL_EM_LIVRE_FIELD_NUMBER: _ClassVar[int]
    EXPOSICAO_FIELD_NUMBER: _ClassVar[int]
    TIPO_PAREDE_FIELD_NUMBER: _ClassVar[int]
    EXTENSAO_FIELD_NUMBER: _ClassVar[int]
    QUANTIDADE_PROTECOES_INTERMEDIARIAS_FIELD_NUMBER: _ClassVar[int]
    QUANTIDADE_PROTECOES_PARADA_FIELD_NUMBER: _ClassVar[int]
    PROTECOES_MOVEIS_FIELD_NUMBER: _ClassVar[int]
    TIPO_ANCORAGEM_FIELD_NUMBER: _ClassVar[int]
    CONQUISTADORES_FIELD_NUMBER: _ClassVar[int]
    DATA_ABERTURA_FIELD_NUMBER: _ClassVar[int]
    DATA_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    URL_VIDEO_BETA_FIELD_NUMBER: _ClassVar[int]
    CHAVE_PIX_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    nome: str
    destaque: bool
    dificuldade: GrauVia.GrauVia
    dificuldade_artificial: GrauArtificial.GrauArtificial
    dificuldade_artificial_em_livre: GrauVia.GrauVia
    exposicao: GrauExposicao.GrauExposicao
    tipo_parede: TipoParede.TipoParede
    extensao: int
    quantidade_protecoes_intermediarias: int
    quantidade_protecoes_parada: int
    protecoes_moveis: str
    tipo_ancoragem: str
    conquistadores: _containers.RepeatedScalarFieldContainer[str]
    data_abertura: str
    data_manutencao: str
    descricao: str
    url_video_beta: str
    chave_pix_manutencao: str
    def __init__(self, nome: _Optional[str] = ..., destaque: _Optional[bool] = ..., dificuldade: _Optional[_Union[GrauVia.GrauVia, str]] = ..., dificuldade_artificial: _Optional[_Union[GrauArtificial.GrauArtificial, str]] = ..., dificuldade_artificial_em_livre: _Optional[_Union[GrauVia.GrauVia, str]] = ..., exposicao: _Optional[_Union[GrauExposicao.GrauExposicao, str]] = ..., tipo_parede: _Optional[_Union[TipoParede.TipoParede, str]] = ..., extensao: _Optional[int] = ..., quantidade_protecoes_intermediarias: _Optional[int] = ..., quantidade_protecoes_parada: _Optional[int] = ..., protecoes_moveis: _Optional[str] = ..., tipo_ancoragem: _Optional[str] = ..., conquistadores: _Optional[_Iterable[str]] = ..., data_abertura: _Optional[str] = ..., data_manutencao: _Optional[str] = ..., descricao: _Optional[str] = ..., url_video_beta: _Optional[str] = ..., chave_pix_manutencao: _Optional[str] = ...) -> None: ...

class Boulder(_message.Message):
    __slots__ = ("nome", "destaque", "dificuldade", "tipo_parede", "conquistadores", "data_abertura", "descricao", "url_video_beta", "chave_pix_manutencao")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESTAQUE_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_FIELD_NUMBER: _ClassVar[int]
    TIPO_PAREDE_FIELD_NUMBER: _ClassVar[int]
    CONQUISTADORES_FIELD_NUMBER: _ClassVar[int]
    DATA_ABERTURA_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    URL_VIDEO_BETA_FIELD_NUMBER: _ClassVar[int]
    CHAVE_PIX_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    nome: str
    destaque: bool
    dificuldade: GrauBoulder.GrauBoulder
    tipo_parede: TipoParede.TipoParede
    conquistadores: _containers.RepeatedScalarFieldContainer[str]
    data_abertura: str
    descricao: str
    url_video_beta: str
    chave_pix_manutencao: str
    def __init__(self, nome: _Optional[str] = ..., destaque: _Optional[bool] = ..., dificuldade: _Optional[_Union[GrauBoulder.GrauBoulder, str]] = ..., tipo_parede: _Optional[_Union[TipoParede.TipoParede, str]] = ..., conquistadores: _Optional[_Iterable[str]] = ..., data_abertura: _Optional[str] = ..., descricao: _Optional[str] = ..., url_video_beta: _Optional[str] = ..., chave_pix_manutencao: _Optional[str] = ...) -> None: ...

class ViaMultiplasEnfiadas(_message.Message):
    __slots__ = ("nome", "destaque", "dificuldade_media", "dificuldade_maxima", "dificuldade_artificial", "dificuldade_artificial_em_livre", "exposicao", "duracao", "numero_enfiadas", "comprimento_total", "comprimento_maior_enfiada", "quantidade_costuras_intermediarias", "quantidade_equipamentos_parada", "tipo_via_multiplas_enfiadas", "equipamento_recomendado", "enfiadas", "descricao", "conquistadores", "data_abertura", "data_manutencao", "url_video_beta", "chave_pix_manutencao")
    class TipoViaMultiplasEnfiadas(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas]
        TODA_FIXA: _ClassVar[ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas]
        MISTA: _ClassVar[ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas]
        TODA_MOVEL: _ClassVar[ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas]
    INDEFINIDO: ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas
    TODA_FIXA: ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas
    MISTA: ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas
    TODA_MOVEL: ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESTAQUE_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_MEDIA_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_MAXIMA_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_ARTIFICIAL_FIELD_NUMBER: _ClassVar[int]
    DIFICULDADE_ARTIFICIAL_EM_LIVRE_FIELD_NUMBER: _ClassVar[int]
    EXPOSICAO_FIELD_NUMBER: _ClassVar[int]
    DURACAO_FIELD_NUMBER: _ClassVar[int]
    NUMERO_ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    COMPRIMENTO_TOTAL_FIELD_NUMBER: _ClassVar[int]
    COMPRIMENTO_MAIOR_ENFIADA_FIELD_NUMBER: _ClassVar[int]
    QUANTIDADE_COSTURAS_INTERMEDIARIAS_FIELD_NUMBER: _ClassVar[int]
    QUANTIDADE_EQUIPAMENTOS_PARADA_FIELD_NUMBER: _ClassVar[int]
    TIPO_VIA_MULTIPLAS_ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    EQUIPAMENTO_RECOMENDADO_FIELD_NUMBER: _ClassVar[int]
    ENFIADAS_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    CONQUISTADORES_FIELD_NUMBER: _ClassVar[int]
    DATA_ABERTURA_FIELD_NUMBER: _ClassVar[int]
    DATA_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    URL_VIDEO_BETA_FIELD_NUMBER: _ClassVar[int]
    CHAVE_PIX_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    nome: str
    destaque: bool
    dificuldade_media: GrauVia.GrauVia
    dificuldade_maxima: GrauVia.GrauVia
    dificuldade_artificial: GrauArtificial.GrauArtificial
    dificuldade_artificial_em_livre: GrauVia.GrauVia
    exposicao: GrauExposicao.GrauExposicao
    duracao: GrauDuracao.GrauDuracao
    numero_enfiadas: int
    comprimento_total: int
    comprimento_maior_enfiada: int
    quantidade_costuras_intermediarias: int
    quantidade_equipamentos_parada: int
    tipo_via_multiplas_enfiadas: ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas
    equipamento_recomendado: str
    enfiadas: _containers.RepeatedCompositeFieldContainer[Escalada]
    descricao: str
    conquistadores: _containers.RepeatedScalarFieldContainer[str]
    data_abertura: str
    data_manutencao: str
    url_video_beta: str
    chave_pix_manutencao: str
    def __init__(self, nome: _Optional[str] = ..., destaque: _Optional[bool] = ..., dificuldade_media: _Optional[_Union[GrauVia.GrauVia, str]] = ..., dificuldade_maxima: _Optional[_Union[GrauVia.GrauVia, str]] = ..., dificuldade_artificial: _Optional[_Union[GrauArtificial.GrauArtificial, str]] = ..., dificuldade_artificial_em_livre: _Optional[_Union[GrauVia.GrauVia, str]] = ..., exposicao: _Optional[_Union[GrauExposicao.GrauExposicao, str]] = ..., duracao: _Optional[_Union[GrauDuracao.GrauDuracao, str]] = ..., numero_enfiadas: _Optional[int] = ..., comprimento_total: _Optional[int] = ..., comprimento_maior_enfiada: _Optional[int] = ..., quantidade_costuras_intermediarias: _Optional[int] = ..., quantidade_equipamentos_parada: _Optional[int] = ..., tipo_via_multiplas_enfiadas: _Optional[_Union[ViaMultiplasEnfiadas.TipoViaMultiplasEnfiadas, str]] = ..., equipamento_recomendado: _Optional[str] = ..., enfiadas: _Optional[_Iterable[_Union[Escalada, _Mapping]]] = ..., descricao: _Optional[str] = ..., conquistadores: _Optional[_Iterable[str]] = ..., data_abertura: _Optional[str] = ..., data_manutencao: _Optional[str] = ..., url_video_beta: _Optional[str] = ..., chave_pix_manutencao: _Optional[str] = ...) -> None: ...

class Highline(_message.Message):
    __slots__ = ("nome", "destaque", "distancia", "altura", "exposicao", "conquistadores", "data_abertura", "data_manutencao", "descricao_acesso", "descricao_ancoragem", "descricao", "url_video_beta", "chave_pix_manutencao")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESTAQUE_FIELD_NUMBER: _ClassVar[int]
    DISTANCIA_FIELD_NUMBER: _ClassVar[int]
    ALTURA_FIELD_NUMBER: _ClassVar[int]
    EXPOSICAO_FIELD_NUMBER: _ClassVar[int]
    CONQUISTADORES_FIELD_NUMBER: _ClassVar[int]
    DATA_ABERTURA_FIELD_NUMBER: _ClassVar[int]
    DATA_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_ACESSO_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_ANCORAGEM_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    URL_VIDEO_BETA_FIELD_NUMBER: _ClassVar[int]
    CHAVE_PIX_MANUTENCAO_FIELD_NUMBER: _ClassVar[int]
    nome: str
    destaque: bool
    distancia: int
    altura: int
    exposicao: int
    conquistadores: _containers.RepeatedScalarFieldContainer[str]
    data_abertura: str
    data_manutencao: str
    descricao_acesso: str
    descricao_ancoragem: str
    descricao: str
    url_video_beta: str
    chave_pix_manutencao: str
    def __init__(self, nome: _Optional[str] = ..., destaque: _Optional[bool] = ..., distancia: _Optional[int] = ..., altura: _Optional[int] = ..., exposicao: _Optional[int] = ..., conquistadores: _Optional[_Iterable[str]] = ..., data_abertura: _Optional[str] = ..., data_manutencao: _Optional[str] = ..., descricao_acesso: _Optional[str] = ..., descricao_ancoragem: _Optional[str] = ..., descricao: _Optional[str] = ..., url_video_beta: _Optional[str] = ..., chave_pix_manutencao: _Optional[str] = ...) -> None: ...

class Patrocinador(_message.Message):
    __slots__ = ("nome", "mensagem", "url_logo", "url_link")
    NOME_FIELD_NUMBER: _ClassVar[int]
    MENSAGEM_FIELD_NUMBER: _ClassVar[int]
    URL_LOGO_FIELD_NUMBER: _ClassVar[int]
    URL_LINK_FIELD_NUMBER: _ClassVar[int]
    nome: str
    mensagem: str
    url_logo: str
    url_link: str
    def __init__(self, nome: _Optional[str] = ..., mensagem: _Optional[str] = ..., url_logo: _Optional[str] = ..., url_link: _Optional[str] = ...) -> None: ...

class Trilha(_message.Message):
    __slots__ = ("nome", "descricao", "tempo_aproximacao", "pontos")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    TEMPO_APROXIMACAO_FIELD_NUMBER: _ClassVar[int]
    PONTOS_FIELD_NUMBER: _ClassVar[int]
    nome: str
    descricao: str
    tempo_aproximacao: str
    pontos: _containers.RepeatedCompositeFieldContainer[PontoDeInteresse]
    def __init__(self, nome: _Optional[str] = ..., descricao: _Optional[str] = ..., tempo_aproximacao: _Optional[str] = ..., pontos: _Optional[_Iterable[_Union[PontoDeInteresse, _Mapping]]] = ...) -> None: ...

class PontoDeInteresse(_message.Message):
    __slots__ = ("nome", "descricao", "localizacao")
    NOME_FIELD_NUMBER: _ClassVar[int]
    DESCRICAO_FIELD_NUMBER: _ClassVar[int]
    LOCALIZACAO_FIELD_NUMBER: _ClassVar[int]
    nome: str
    descricao: str
    localizacao: Coordenada
    def __init__(self, nome: _Optional[str] = ..., descricao: _Optional[str] = ..., localizacao: _Optional[_Union[Coordenada, _Mapping]] = ...) -> None: ...

class Coordenada(_message.Message):
    __slots__ = ("latitude", "longitude")
    LATITUDE_FIELD_NUMBER: _ClassVar[int]
    LONGITUDE_FIELD_NUMBER: _ClassVar[int]
    latitude: int
    longitude: int
    def __init__(self, latitude: _Optional[int] = ..., longitude: _Optional[int] = ...) -> None: ...

class TipoParede(_message.Message):
    __slots__ = ()
    class TipoParede(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[TipoParede.TipoParede]
        POSITIVO: _ClassVar[TipoParede.TipoParede]
        VERTICAL: _ClassVar[TipoParede.TipoParede]
        NEGATIVO: _ClassVar[TipoParede.TipoParede]
    INDEFINIDO: TipoParede.TipoParede
    POSITIVO: TipoParede.TipoParede
    VERTICAL: TipoParede.TipoParede
    NEGATIVO: TipoParede.TipoParede
    def __init__(self) -> None: ...

class GrauVia(_message.Message):
    __slots__ = ()
    class GrauVia(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[GrauVia.GrauVia]
        PROJETO: _ClassVar[GrauVia.GrauVia]
        BR_1: _ClassVar[GrauVia.GrauVia]
        BR_1_BARRA_1SUP: _ClassVar[GrauVia.GrauVia]
        BR_1SUP: _ClassVar[GrauVia.GrauVia]
        FR_1: _ClassVar[GrauVia.GrauVia]
        US_5_0: _ClassVar[GrauVia.GrauVia]
        BR_1SUP_BARRA_2: _ClassVar[GrauVia.GrauVia]
        BR_2: _ClassVar[GrauVia.GrauVia]
        FR_2A: _ClassVar[GrauVia.GrauVia]
        US_5_2: _ClassVar[GrauVia.GrauVia]
        BR_2_BARRA_2SUP: _ClassVar[GrauVia.GrauVia]
        BR_2SUP: _ClassVar[GrauVia.GrauVia]
        FR_2C: _ClassVar[GrauVia.GrauVia]
        US_5_3: _ClassVar[GrauVia.GrauVia]
        BR_2SUP_BARRA_3: _ClassVar[GrauVia.GrauVia]
        BR_3: _ClassVar[GrauVia.GrauVia]
        FR_3B: _ClassVar[GrauVia.GrauVia]
        US_5_5: _ClassVar[GrauVia.GrauVia]
        BR_3_BARRA_3SUP: _ClassVar[GrauVia.GrauVia]
        BR_3SUP: _ClassVar[GrauVia.GrauVia]
        FR_4A: _ClassVar[GrauVia.GrauVia]
        US_5_6: _ClassVar[GrauVia.GrauVia]
        BR_3SUP_BARRA_4: _ClassVar[GrauVia.GrauVia]
        BR_4: _ClassVar[GrauVia.GrauVia]
        FR_4B_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_7: _ClassVar[GrauVia.GrauVia]
        BR_4_BARRA_4SUP: _ClassVar[GrauVia.GrauVia]
        BR_4SUP: _ClassVar[GrauVia.GrauVia]
        FR_5A_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_9: _ClassVar[GrauVia.GrauVia]
        BR_4SUP_BARRA_5: _ClassVar[GrauVia.GrauVia]
        BR_5: _ClassVar[GrauVia.GrauVia]
        FR_5C: _ClassVar[GrauVia.GrauVia]
        US_5_10A: _ClassVar[GrauVia.GrauVia]
        BR_5_BARRA_5SUP: _ClassVar[GrauVia.GrauVia]
        BR_5SUP: _ClassVar[GrauVia.GrauVia]
        FR_6A_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_10B: _ClassVar[GrauVia.GrauVia]
        BR_5SUP_BARRA_6: _ClassVar[GrauVia.GrauVia]
        BR_6: _ClassVar[GrauVia.GrauVia]
        FR_6B: _ClassVar[GrauVia.GrauVia]
        US_5_10C: _ClassVar[GrauVia.GrauVia]
        BR_6_BARRA_6SUP: _ClassVar[GrauVia.GrauVia]
        BR_6SUP: _ClassVar[GrauVia.GrauVia]
        FR_6B_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_10D: _ClassVar[GrauVia.GrauVia]
        BR_6SUP_BARRA_7A: _ClassVar[GrauVia.GrauVia]
        BR_7A: _ClassVar[GrauVia.GrauVia]
        FR_6C: _ClassVar[GrauVia.GrauVia]
        US_5_11A: _ClassVar[GrauVia.GrauVia]
        BR_7A_BARRA_7B: _ClassVar[GrauVia.GrauVia]
        BR_7B: _ClassVar[GrauVia.GrauVia]
        FR_6C_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_11c: _ClassVar[GrauVia.GrauVia]
        BR_7B_BARRA_7C: _ClassVar[GrauVia.GrauVia]
        BR_7C: _ClassVar[GrauVia.GrauVia]
        FR_7A: _ClassVar[GrauVia.GrauVia]
        US_5_11D: _ClassVar[GrauVia.GrauVia]
        BR_7C_BARRA_8A: _ClassVar[GrauVia.GrauVia]
        BR_8A: _ClassVar[GrauVia.GrauVia]
        FR_7A_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_12A: _ClassVar[GrauVia.GrauVia]
        BR_8A_BARRA_8B: _ClassVar[GrauVia.GrauVia]
        BR_8B: _ClassVar[GrauVia.GrauVia]
        FR_7B: _ClassVar[GrauVia.GrauVia]
        US_5_12B: _ClassVar[GrauVia.GrauVia]
        BR_8B_BARRA_8C: _ClassVar[GrauVia.GrauVia]
        BR_8C: _ClassVar[GrauVia.GrauVia]
        FR_7B_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_12C: _ClassVar[GrauVia.GrauVia]
        BR_8C_BARRA_9A: _ClassVar[GrauVia.GrauVia]
        BR_9A: _ClassVar[GrauVia.GrauVia]
        FR_7C: _ClassVar[GrauVia.GrauVia]
        US_5_12D: _ClassVar[GrauVia.GrauVia]
        BR_9A_BARRA_9B: _ClassVar[GrauVia.GrauVia]
        BR_9B: _ClassVar[GrauVia.GrauVia]
        FR_7C_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_13A: _ClassVar[GrauVia.GrauVia]
        BR_9B_BARRA_9C: _ClassVar[GrauVia.GrauVia]
        BR_9C: _ClassVar[GrauVia.GrauVia]
        FR_8A: _ClassVar[GrauVia.GrauVia]
        US_5_13B: _ClassVar[GrauVia.GrauVia]
        BR_9C_BARRA_10A: _ClassVar[GrauVia.GrauVia]
        BR_10A: _ClassVar[GrauVia.GrauVia]
        FR_8A_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_13C: _ClassVar[GrauVia.GrauVia]
        BR_10A_BARRA_10B: _ClassVar[GrauVia.GrauVia]
        BR_10B: _ClassVar[GrauVia.GrauVia]
        FR_8B: _ClassVar[GrauVia.GrauVia]
        US_5_13D: _ClassVar[GrauVia.GrauVia]
        BR_10B_BARRA_10C: _ClassVar[GrauVia.GrauVia]
        BR_10C: _ClassVar[GrauVia.GrauVia]
        FR_8B_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_14A: _ClassVar[GrauVia.GrauVia]
        BR_10C_BARRA_11A: _ClassVar[GrauVia.GrauVia]
        BR_11A: _ClassVar[GrauVia.GrauVia]
        FR_8C: _ClassVar[GrauVia.GrauVia]
        US_5_14B: _ClassVar[GrauVia.GrauVia]
        BR_11A_BARRA_11B: _ClassVar[GrauVia.GrauVia]
        BR_11B: _ClassVar[GrauVia.GrauVia]
        FR_8C_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_14C: _ClassVar[GrauVia.GrauVia]
        BR_11B_BARRA_11C: _ClassVar[GrauVia.GrauVia]
        BR_11C: _ClassVar[GrauVia.GrauVia]
        FR_9A: _ClassVar[GrauVia.GrauVia]
        US_5_14D: _ClassVar[GrauVia.GrauVia]
        BR_11C_BARRA_12A: _ClassVar[GrauVia.GrauVia]
        BR_12A: _ClassVar[GrauVia.GrauVia]
        FR_9A_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_15A: _ClassVar[GrauVia.GrauVia]
        BR_12A_BARRA_12B: _ClassVar[GrauVia.GrauVia]
        BR_12B: _ClassVar[GrauVia.GrauVia]
        FR_9B: _ClassVar[GrauVia.GrauVia]
        US_5_15B: _ClassVar[GrauVia.GrauVia]
        BR_12B_BARRA_12C: _ClassVar[GrauVia.GrauVia]
        BR_12C: _ClassVar[GrauVia.GrauVia]
        FR_9B_MAIS: _ClassVar[GrauVia.GrauVia]
        US_5_15C: _ClassVar[GrauVia.GrauVia]
        BR_12C_BARRA_13A: _ClassVar[GrauVia.GrauVia]
        BR_13A: _ClassVar[GrauVia.GrauVia]
        FR_9C: _ClassVar[GrauVia.GrauVia]
        US_5_15D: _ClassVar[GrauVia.GrauVia]
    INDEFINIDO: GrauVia.GrauVia
    PROJETO: GrauVia.GrauVia
    BR_1: GrauVia.GrauVia
    BR_1_BARRA_1SUP: GrauVia.GrauVia
    BR_1SUP: GrauVia.GrauVia
    FR_1: GrauVia.GrauVia
    US_5_0: GrauVia.GrauVia
    BR_1SUP_BARRA_2: GrauVia.GrauVia
    BR_2: GrauVia.GrauVia
    FR_2A: GrauVia.GrauVia
    US_5_2: GrauVia.GrauVia
    BR_2_BARRA_2SUP: GrauVia.GrauVia
    BR_2SUP: GrauVia.GrauVia
    FR_2C: GrauVia.GrauVia
    US_5_3: GrauVia.GrauVia
    BR_2SUP_BARRA_3: GrauVia.GrauVia
    BR_3: GrauVia.GrauVia
    FR_3B: GrauVia.GrauVia
    US_5_5: GrauVia.GrauVia
    BR_3_BARRA_3SUP: GrauVia.GrauVia
    BR_3SUP: GrauVia.GrauVia
    FR_4A: GrauVia.GrauVia
    US_5_6: GrauVia.GrauVia
    BR_3SUP_BARRA_4: GrauVia.GrauVia
    BR_4: GrauVia.GrauVia
    FR_4B_MAIS: GrauVia.GrauVia
    US_5_7: GrauVia.GrauVia
    BR_4_BARRA_4SUP: GrauVia.GrauVia
    BR_4SUP: GrauVia.GrauVia
    FR_5A_MAIS: GrauVia.GrauVia
    US_5_9: GrauVia.GrauVia
    BR_4SUP_BARRA_5: GrauVia.GrauVia
    BR_5: GrauVia.GrauVia
    FR_5C: GrauVia.GrauVia
    US_5_10A: GrauVia.GrauVia
    BR_5_BARRA_5SUP: GrauVia.GrauVia
    BR_5SUP: GrauVia.GrauVia
    FR_6A_MAIS: GrauVia.GrauVia
    US_5_10B: GrauVia.GrauVia
    BR_5SUP_BARRA_6: GrauVia.GrauVia
    BR_6: GrauVia.GrauVia
    FR_6B: GrauVia.GrauVia
    US_5_10C: GrauVia.GrauVia
    BR_6_BARRA_6SUP: GrauVia.GrauVia
    BR_6SUP: GrauVia.GrauVia
    FR_6B_MAIS: GrauVia.GrauVia
    US_5_10D: GrauVia.GrauVia
    BR_6SUP_BARRA_7A: GrauVia.GrauVia
    BR_7A: GrauVia.GrauVia
    FR_6C: GrauVia.GrauVia
    US_5_11A: GrauVia.GrauVia
    BR_7A_BARRA_7B: GrauVia.GrauVia
    BR_7B: GrauVia.GrauVia
    FR_6C_MAIS: GrauVia.GrauVia
    US_5_11c: GrauVia.GrauVia
    BR_7B_BARRA_7C: GrauVia.GrauVia
    BR_7C: GrauVia.GrauVia
    FR_7A: GrauVia.GrauVia
    US_5_11D: GrauVia.GrauVia
    BR_7C_BARRA_8A: GrauVia.GrauVia
    BR_8A: GrauVia.GrauVia
    FR_7A_MAIS: GrauVia.GrauVia
    US_5_12A: GrauVia.GrauVia
    BR_8A_BARRA_8B: GrauVia.GrauVia
    BR_8B: GrauVia.GrauVia
    FR_7B: GrauVia.GrauVia
    US_5_12B: GrauVia.GrauVia
    BR_8B_BARRA_8C: GrauVia.GrauVia
    BR_8C: GrauVia.GrauVia
    FR_7B_MAIS: GrauVia.GrauVia
    US_5_12C: GrauVia.GrauVia
    BR_8C_BARRA_9A: GrauVia.GrauVia
    BR_9A: GrauVia.GrauVia
    FR_7C: GrauVia.GrauVia
    US_5_12D: GrauVia.GrauVia
    BR_9A_BARRA_9B: GrauVia.GrauVia
    BR_9B: GrauVia.GrauVia
    FR_7C_MAIS: GrauVia.GrauVia
    US_5_13A: GrauVia.GrauVia
    BR_9B_BARRA_9C: GrauVia.GrauVia
    BR_9C: GrauVia.GrauVia
    FR_8A: GrauVia.GrauVia
    US_5_13B: GrauVia.GrauVia
    BR_9C_BARRA_10A: GrauVia.GrauVia
    BR_10A: GrauVia.GrauVia
    FR_8A_MAIS: GrauVia.GrauVia
    US_5_13C: GrauVia.GrauVia
    BR_10A_BARRA_10B: GrauVia.GrauVia
    BR_10B: GrauVia.GrauVia
    FR_8B: GrauVia.GrauVia
    US_5_13D: GrauVia.GrauVia
    BR_10B_BARRA_10C: GrauVia.GrauVia
    BR_10C: GrauVia.GrauVia
    FR_8B_MAIS: GrauVia.GrauVia
    US_5_14A: GrauVia.GrauVia
    BR_10C_BARRA_11A: GrauVia.GrauVia
    BR_11A: GrauVia.GrauVia
    FR_8C: GrauVia.GrauVia
    US_5_14B: GrauVia.GrauVia
    BR_11A_BARRA_11B: GrauVia.GrauVia
    BR_11B: GrauVia.GrauVia
    FR_8C_MAIS: GrauVia.GrauVia
    US_5_14C: GrauVia.GrauVia
    BR_11B_BARRA_11C: GrauVia.GrauVia
    BR_11C: GrauVia.GrauVia
    FR_9A: GrauVia.GrauVia
    US_5_14D: GrauVia.GrauVia
    BR_11C_BARRA_12A: GrauVia.GrauVia
    BR_12A: GrauVia.GrauVia
    FR_9A_MAIS: GrauVia.GrauVia
    US_5_15A: GrauVia.GrauVia
    BR_12A_BARRA_12B: GrauVia.GrauVia
    BR_12B: GrauVia.GrauVia
    FR_9B: GrauVia.GrauVia
    US_5_15B: GrauVia.GrauVia
    BR_12B_BARRA_12C: GrauVia.GrauVia
    BR_12C: GrauVia.GrauVia
    FR_9B_MAIS: GrauVia.GrauVia
    US_5_15C: GrauVia.GrauVia
    BR_12C_BARRA_13A: GrauVia.GrauVia
    BR_13A: GrauVia.GrauVia
    FR_9C: GrauVia.GrauVia
    US_5_15D: GrauVia.GrauVia
    def __init__(self) -> None: ...

class GrauBoulder(_message.Message):
    __slots__ = ()
    class GrauBoulder(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[GrauBoulder.GrauBoulder]
        PROJETO: _ClassVar[GrauBoulder.GrauBoulder]
        VB: _ClassVar[GrauBoulder.GrauBoulder]
        VB_BARRA_V0: _ClassVar[GrauBoulder.GrauBoulder]
        V0: _ClassVar[GrauBoulder.GrauBoulder]
        V0_BARRA_V1: _ClassVar[GrauBoulder.GrauBoulder]
        V1: _ClassVar[GrauBoulder.GrauBoulder]
        V1_BARRA_V2: _ClassVar[GrauBoulder.GrauBoulder]
        V2: _ClassVar[GrauBoulder.GrauBoulder]
        V2_BARRA_V3: _ClassVar[GrauBoulder.GrauBoulder]
        V3: _ClassVar[GrauBoulder.GrauBoulder]
        V3_BARRA_V4: _ClassVar[GrauBoulder.GrauBoulder]
        V4: _ClassVar[GrauBoulder.GrauBoulder]
        V4_BARRA_V5: _ClassVar[GrauBoulder.GrauBoulder]
        V5: _ClassVar[GrauBoulder.GrauBoulder]
        V5_BARRA_V6: _ClassVar[GrauBoulder.GrauBoulder]
        V6: _ClassVar[GrauBoulder.GrauBoulder]
        V6_BARRA_V7: _ClassVar[GrauBoulder.GrauBoulder]
        V7: _ClassVar[GrauBoulder.GrauBoulder]
        V7_BARRA_V8: _ClassVar[GrauBoulder.GrauBoulder]
        V8: _ClassVar[GrauBoulder.GrauBoulder]
        V8_BARRA_V9: _ClassVar[GrauBoulder.GrauBoulder]
        V9: _ClassVar[GrauBoulder.GrauBoulder]
        V9_BARRA_V10: _ClassVar[GrauBoulder.GrauBoulder]
        V10: _ClassVar[GrauBoulder.GrauBoulder]
        V10_BARRA_V11: _ClassVar[GrauBoulder.GrauBoulder]
        V11: _ClassVar[GrauBoulder.GrauBoulder]
        V11_BARRA_V12: _ClassVar[GrauBoulder.GrauBoulder]
        V12: _ClassVar[GrauBoulder.GrauBoulder]
        V12_BARRA_V13: _ClassVar[GrauBoulder.GrauBoulder]
        V13: _ClassVar[GrauBoulder.GrauBoulder]
        V13_BARRA_V14: _ClassVar[GrauBoulder.GrauBoulder]
        V14: _ClassVar[GrauBoulder.GrauBoulder]
        V14_BARRA_V15: _ClassVar[GrauBoulder.GrauBoulder]
        V15: _ClassVar[GrauBoulder.GrauBoulder]
        V15_BARRA_V16: _ClassVar[GrauBoulder.GrauBoulder]
        V16: _ClassVar[GrauBoulder.GrauBoulder]
        V16_BARRA_V17: _ClassVar[GrauBoulder.GrauBoulder]
        V17: _ClassVar[GrauBoulder.GrauBoulder]
    INDEFINIDO: GrauBoulder.GrauBoulder
    PROJETO: GrauBoulder.GrauBoulder
    VB: GrauBoulder.GrauBoulder
    VB_BARRA_V0: GrauBoulder.GrauBoulder
    V0: GrauBoulder.GrauBoulder
    V0_BARRA_V1: GrauBoulder.GrauBoulder
    V1: GrauBoulder.GrauBoulder
    V1_BARRA_V2: GrauBoulder.GrauBoulder
    V2: GrauBoulder.GrauBoulder
    V2_BARRA_V3: GrauBoulder.GrauBoulder
    V3: GrauBoulder.GrauBoulder
    V3_BARRA_V4: GrauBoulder.GrauBoulder
    V4: GrauBoulder.GrauBoulder
    V4_BARRA_V5: GrauBoulder.GrauBoulder
    V5: GrauBoulder.GrauBoulder
    V5_BARRA_V6: GrauBoulder.GrauBoulder
    V6: GrauBoulder.GrauBoulder
    V6_BARRA_V7: GrauBoulder.GrauBoulder
    V7: GrauBoulder.GrauBoulder
    V7_BARRA_V8: GrauBoulder.GrauBoulder
    V8: GrauBoulder.GrauBoulder
    V8_BARRA_V9: GrauBoulder.GrauBoulder
    V9: GrauBoulder.GrauBoulder
    V9_BARRA_V10: GrauBoulder.GrauBoulder
    V10: GrauBoulder.GrauBoulder
    V10_BARRA_V11: GrauBoulder.GrauBoulder
    V11: GrauBoulder.GrauBoulder
    V11_BARRA_V12: GrauBoulder.GrauBoulder
    V12: GrauBoulder.GrauBoulder
    V12_BARRA_V13: GrauBoulder.GrauBoulder
    V13: GrauBoulder.GrauBoulder
    V13_BARRA_V14: GrauBoulder.GrauBoulder
    V14: GrauBoulder.GrauBoulder
    V14_BARRA_V15: GrauBoulder.GrauBoulder
    V15: GrauBoulder.GrauBoulder
    V15_BARRA_V16: GrauBoulder.GrauBoulder
    V16: GrauBoulder.GrauBoulder
    V16_BARRA_V17: GrauBoulder.GrauBoulder
    V17: GrauBoulder.GrauBoulder
    def __init__(self) -> None: ...

class GrauArtificial(_message.Message):
    __slots__ = ()
    class GrauArtificial(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[GrauArtificial.GrauArtificial]
        A0: _ClassVar[GrauArtificial.GrauArtificial]
        A0_MAIS: _ClassVar[GrauArtificial.GrauArtificial]
        A1: _ClassVar[GrauArtificial.GrauArtificial]
        A1_MAIS: _ClassVar[GrauArtificial.GrauArtificial]
        A2: _ClassVar[GrauArtificial.GrauArtificial]
        A2_MAIS: _ClassVar[GrauArtificial.GrauArtificial]
        A3: _ClassVar[GrauArtificial.GrauArtificial]
        A3_MAIS: _ClassVar[GrauArtificial.GrauArtificial]
        A4: _ClassVar[GrauArtificial.GrauArtificial]
        A4_MAIS: _ClassVar[GrauArtificial.GrauArtificial]
        A5: _ClassVar[GrauArtificial.GrauArtificial]
        A5_MAIS: _ClassVar[GrauArtificial.GrauArtificial]
    INDEFINIDO: GrauArtificial.GrauArtificial
    A0: GrauArtificial.GrauArtificial
    A0_MAIS: GrauArtificial.GrauArtificial
    A1: GrauArtificial.GrauArtificial
    A1_MAIS: GrauArtificial.GrauArtificial
    A2: GrauArtificial.GrauArtificial
    A2_MAIS: GrauArtificial.GrauArtificial
    A3: GrauArtificial.GrauArtificial
    A3_MAIS: GrauArtificial.GrauArtificial
    A4: GrauArtificial.GrauArtificial
    A4_MAIS: GrauArtificial.GrauArtificial
    A5: GrauArtificial.GrauArtificial
    A5_MAIS: GrauArtificial.GrauArtificial
    def __init__(self) -> None: ...

class GrauDuracao(_message.Message):
    __slots__ = ()
    class GrauDuracao(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[GrauDuracao.GrauDuracao]
        D1: _ClassVar[GrauDuracao.GrauDuracao]
        D2: _ClassVar[GrauDuracao.GrauDuracao]
        D3: _ClassVar[GrauDuracao.GrauDuracao]
        D4: _ClassVar[GrauDuracao.GrauDuracao]
        D5: _ClassVar[GrauDuracao.GrauDuracao]
        D6: _ClassVar[GrauDuracao.GrauDuracao]
        D7: _ClassVar[GrauDuracao.GrauDuracao]
    INDEFINIDO: GrauDuracao.GrauDuracao
    D1: GrauDuracao.GrauDuracao
    D2: GrauDuracao.GrauDuracao
    D3: GrauDuracao.GrauDuracao
    D4: GrauDuracao.GrauDuracao
    D5: GrauDuracao.GrauDuracao
    D6: GrauDuracao.GrauDuracao
    D7: GrauDuracao.GrauDuracao
    def __init__(self) -> None: ...

class GrauExposicao(_message.Message):
    __slots__ = ()
    class GrauExposicao(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
        __slots__ = ()
        INDEFINIDO: _ClassVar[GrauExposicao.GrauExposicao]
        E1: _ClassVar[GrauExposicao.GrauExposicao]
        E2: _ClassVar[GrauExposicao.GrauExposicao]
        E3: _ClassVar[GrauExposicao.GrauExposicao]
        E4: _ClassVar[GrauExposicao.GrauExposicao]
        E5: _ClassVar[GrauExposicao.GrauExposicao]
    INDEFINIDO: GrauExposicao.GrauExposicao
    E1: GrauExposicao.GrauExposicao
    E2: GrauExposicao.GrauExposicao
    E3: GrauExposicao.GrauExposicao
    E4: GrauExposicao.GrauExposicao
    E5: GrauExposicao.GrauExposicao
    def __init__(self) -> None: ...
