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
    ImagemSerializer

router = SimpleRouter()
router.register('enderecos', EnderecoViewSet)
router.register('imoveis', ImovelViewSet)
router.register('imagens', ImagemViewSet)


urlpatterns = [
    path('enderecos/', EnderecosAPIView.as_view(), name='enderecos'),
    path('enderecos/<int:pk>/', EdnderecoAPIView.as_view(), name='endereco'),

    path('imoveis/', ImoveissAPIView.as_view(), name='imoveis'),
    path('imoveis/<int:pk>/', ImovelAPIView.as_view(), name='imovel'),

    path('imagens/', ImagenssAPIView.as_view(), name='imagens'),
    path('imagens/<int:pk>/', ImagemAPIView.as_view(), name='imagens'),



]