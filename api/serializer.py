from rest_framework import serializers


from .models import Endereco, Imovel, Imagem, Contato, TipoImovel, TipoAnuncio, Parcela, TipoHospedagem

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


class ContatoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Contato
        fields = (
            'id',
            'imovel',
            'tipo_contato',
            'valor',
        )

class TipoImovelSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoImovel
        fields = (
            'id',
            'nome',
        )

class TipoAnuncioSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoAnuncio
        fields = (
            'id',
            'nome',
        )



class ParcelaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Parcela
        fields = (
            'id',
            'imovel',
            'tipo_ospedagem',
            'valor',
            'date_vencimento',
            'status',
        )



class TipoHospedagemSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoHospedagem
        fields = (
            'id',
            'nome',
        )


