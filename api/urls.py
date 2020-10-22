from django.urls import path

from rest_framework.routers import SimpleRouter

from .views import EnderecoViewSet, \
    EnderecosAPIView, \
    EdnderecoAPIView, \
    ImoveissAPIView, \
    ImovelAPIView, \
    ImovelViewSet, \
    ImagemViewSet, \
    ImagemAPIView, \
    ImagenssAPIView, \
    ContatoAPIView, \
    ContatosAPIView, \
    ContatoViewSet, \
    TipoImovelAPIView, \
    TiposImoveisAPIView, \
    TipoImovelViewSet, \
    TipoAnuncioAPIView, \
    TipoAnunciosAPIView, \
    TipoAnuncioViewSet, \
    ParcelaAPIView, \
    ParcelasAPIView, \
    ParcelaViewSet,\
    TipoHospedagemAPIView, \
    TipoHospedagemsAPIView,  \
    TipoHospedagemViewSet


router = SimpleRouter()
router.register('enderecos', EnderecoViewSet)
router.register('imoveis', ImovelViewSet)
router.register('imagens', ImagemViewSet)
router.register('contatos', ContatoViewSet)
router.register('tipo_imoveis', TipoImovelViewSet)
router.register('tipo_anuncios', TipoAnuncioViewSet)
router.register('parcelas', ParcelaViewSet)
router.register('tipo_hospedagens', TipoHospedagemViewSet)


urlpatterns = [
    path('enderecos/', EnderecosAPIView.as_view(), name='enderecos'),
    path('enderecos/<int:pk>/', EdnderecoAPIView.as_view(), name='endereco'),

    path('imoveis/', ImoveissAPIView.as_view(), name='imoveis'),
    path('imoveis/<int:pk>/', ImovelAPIView.as_view(), name='imovel'),

    path('imagens/', ImagenssAPIView.as_view(), name='imagens'),
    path('imagens/<int:pk>/', ImagemAPIView.as_view(), name='imagens'),

    path('contatos/', ContatosAPIView.as_view(), name='contatos'),
    path('contatos/<int:pk>/', ContatoAPIView.as_view(), name='contatos'),

    path('tipo_imoveis/', TiposImoveisAPIView.as_view(), name='tipo_imoveis'),
    # Deixa aqui só por segurança, mas não vou usar para fazer dasatro pelo app
    # path('tipo_imoveis/<int:pk>/', TipoImovelAPIView.as_view(), name='tipo_imoveis'),

    path('tipo_anuncios/', TipoAnunciosAPIView.as_view(), name='tipo_anuncios'),
    # path('tipo_anuncios/<int:pk>/', TipoAnuncioAPIView.as_view(), name='tipo_anuncios'),

    path('parcelas/', ParcelasAPIView.as_view(), name='parcelas'),
    path('parcelas/<int:pk>/', ParcelaAPIView.as_view(), name='parcelas'),

    path('tipo_hospedagens/', TipoHospedagemsAPIView.as_view(), name='tipo_hospedagens'),
    path('tipo_hospedagens/<int:pk>/', TipoHospedagemAPIView.as_view(), name='tipo_hospedagens'),

]