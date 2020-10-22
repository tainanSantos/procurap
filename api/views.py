from rest_framework import generics

from rest_framework import viewsets
from rest_framework import mixins

from .models import Endereco, Imovel, Imagem, Contato, TipoImovel, TipoAnuncio, Parcela, TipoHospedagem
from .serializer import EnderecoSerializer, ImovelSerializer, ImagemSerializer, ContatoSerializer, TipoImovelSerializer, TipoAnuncioSerializer, ParcelaSerializer, TipoHospedagemSerializer


class EnderecosAPIView(generics.ListCreateAPIView):
    queryset = Endereco.objects.all()
    serializer_class = EnderecoSerializer


class EdnderecoAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Endereco.objects.all()
    serializer_class = EnderecoSerializer

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





class ContatosAPIView(generics.ListCreateAPIView):
    queryset = Contato.objects.all()
    serializer_class = ContatoSerializer


class ContatoAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Contato.objects.all()
    serializer_class = ContatoSerializer

class ContatoViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = Contato.objects.all()
    serializer_class = ContatoSerializer




class TiposImoveisAPIView(generics.ListCreateAPIView):
    queryset = TipoImovel.objects.all()
    serializer_class = TipoImovelSerializer


class TipoImovelAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TipoImovel.objects.all()
    serializer_class = TipoImovelSerializer

class TipoImovelViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = TipoImovel.objects.all()
    serializer_class = TipoImovelSerializer







class TiposImoveisAPIView(generics.ListCreateAPIView):
    queryset = TipoImovel.objects.all()
    serializer_class = TipoImovelSerializer


class TipoImovelAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TipoImovel.objects.all()
    serializer_class = TipoImovelSerializer

class TipoImovelViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = TipoImovel.objects.all()
    serializer_class = TipoImovelSerializer







class TipoAnunciosAPIView(generics.ListCreateAPIView):
    queryset = TipoAnuncio.objects.all()
    serializer_class = TipoAnuncioSerializer


class TipoAnuncioAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TipoAnuncio.objects.all()
    serializer_class = TipoAnuncioSerializer

class TipoAnuncioViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = TipoAnuncio.objects.all()
    serializer_class = TipoAnuncioSerializer







class ParcelasAPIView(generics.ListCreateAPIView):
    queryset = Parcela.objects.all()
    serializer_class = ParcelaSerializer


class ParcelaAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Parcela.objects.all()
    serializer_class = ParcelaSerializer

class ParcelaViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = Parcela.objects.all()
    serializer_class = ParcelaSerializer



class TipoHospedagemsAPIView(generics.ListCreateAPIView):
    queryset = TipoHospedagem.objects.all()
    serializer_class = TipoHospedagemSerializer


class TipoHospedagemAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TipoHospedagem.objects.all()
    serializer_class = TipoHospedagemSerializer

class TipoHospedagemViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    mixins.RetrieveModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    viewsets.GenericViewSet,
):
    queryset = TipoHospedagem.objects.all()
    serializer_class = TipoHospedagemSerializer



