from rest_framework import serializers


from .models import Endereco, Imovel, Imagem, Contato

class EnderecoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Endereco
        fields = (
            'id',
            'logradouro',
            'bairro',
            'numero',
            'complemento',
            'cidade',
            'estado',
            'cep',
        )


class ImovelSerializer(serializers.ModelSerializer):
    class Meta:
        model = Imovel
        fields = (
            'id',
            'tipo_imovel',
            'tipo_anuncio',
            'descricao',
            'classificacao',
            'num_banheiros',
            'num_conzinhas',
            'num_vagas',
            'num_quartos',
            'preco_imovel',
        )

class ImagemSerializer(serializers.ModelSerializer):
    class Meta:
        model = Imagem
        fields = (
            'id',
            'imovel',
            'url',
        )