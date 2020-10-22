from django.contrib import admin
from .models import Endereco, Imovel, TipoImovel, TipoAnuncio, Parcela, TipoContato, Contato, Imagem, TipoHospedagem

# Register your models here.

@admin.register(Endereco)
class EnderecoAdmin(admin.ModelAdmin):
    list_display = ('logradouro', 'bairro', 'numero', 'complemento', 'cidade', 'estado', 'cep',)


@admin.register(Imovel)
class ImovelAdmin(admin.ModelAdmin):
    list_display = ('descricao', 'classificacao', 'num_banheiros', 'num_conzinhas', 'num_vagas', 'num_quartos', 'preco_imovel',)


@admin.register(TipoImovel)
class TipoImovelAdmin(admin.ModelAdmin):
    list_display = ('nome',)


@admin.register(TipoAnuncio)
class TipoAnuncioAdmin(admin.ModelAdmin):
     list_display = ('nome',)


@admin.register(Parcela)
class ParcelaAdmin(admin.ModelAdmin):
    list_display = ('valor', 'date_vencimento', 'status',)


@admin.register(TipoContato)
class TipoContatoAdmin(admin.ModelAdmin):
    list_display = ('nome',)


@admin.register(Contato)
class ContatoAdmin(admin.ModelAdmin):
    list_display = ('valor',)


@admin.register(Imagem)
class ImagemAdmin(admin.ModelAdmin):
    list_display = ('url',)




@admin.register(TipoHospedagem)
class TipoHospedagemAdmin(admin.ModelAdmin):
    list_display = ('nome', )

# @admin.register(TipoUsuarioApp)
# class TipoUsuarioAppAdmin(admin.ModelAdmin):
#     list_display = ('tipo', 'documento', )
#
# @admin.register(UsuarioApp)
# class UsuarioAppAdmin(admin.ModelAdmin):
#     list_display = ('tipo',)


