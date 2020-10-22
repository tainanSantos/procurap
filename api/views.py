from rest_framework import generics

from rest_framework import viewsets
from rest_framework import mixins

from .models import Endereco, Imovel, Imagem
from .serializer import EnderecoSerializer, ImovelSerializer, ImagemSerializer


class EnderecosAPIView(generics.ListCreateAPIView):
    queryset = Endereco.objects.all()
    serializer_class = EnderecoSerializer


class EdnderecoAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Endereco.objects.all()
    serializer_class = EnderecoSerializer


# aqui é que tu vai colocar as permições de acesso
# cada classe tem suas permições de acesso
class EnderecoViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = Endereco.objects.all()
    serializer_class = EnderecoSerializer




class ImoveissAPIView(generics.ListCreateAPIView):
    queryset = Imovel.objects.all()
    serializer_class = ImovelSerializer


class ImovelAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Imovel.objects.all()
    serializer_class = ImovelSerializer


# aqui é que tu vai colocar as permições de acesso
# cada classe tem suas permições de acesso
class ImovelViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = Imovel.objects.all()
    serializer_class = ImovelSerializer



class ImagenssAPIView(generics.ListCreateAPIView):
    queryset = Imagem.objects.all()
    serializer_class = ImagemSerializer


class ImagemAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Imagem.objects.all()
    serializer_class = ImagemSerializer


# aqui é que tu vai colocar as permições de acesso
# cada classe tem suas permições de acesso
class ImagemViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = Imagem.objects.all()
    serializer_class = ImagemSerializer



