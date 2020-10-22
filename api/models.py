from django.db import models


# Create your models here.


# class TipoUsuarioApp(models.Model):
#     tipo = models.CharField(max_length=100)
#     documento = models.CharField(max_length=50)
#
#     def __str__(self):
#         return self.tipo
#
#
# class UsuarioApp(AbstractUser):
#     tipo = models.ForeignKey(TipoUsuarioApp, on_delete=models.CASCADE)
#

class Endereco(models.Model):
    logradouro = models.CharField(max_length=255)
    bairro = models.CharField(max_length=255)
    numero = models.CharField(max_length=4)
    complemento = models.CharField(max_length=255)
    cidade = models.CharField(max_length=255)
    estado = models.CharField(max_length=2)
    cep = models.CharField(max_length=9)

    class Meta:
        verbose_name = 'Endereco'
        verbose_name_plural = 'Enderecos'
        ordering = ['id']

    def __str__(self):
        return self.logradouro


class TipoImovel(models.Model):
    nome = models.CharField(max_length=255)

    def __str__(self):
        return self.nome


class TipoAnuncio(models.Model):
    nome = models.CharField(max_length=100)

    def __str__(self):
        return self.nome


class Imovel(models.Model):
    endereco = models.ForeignKey(Endereco, on_delete=models.CASCADE, blank=False)
    tipo_imovel = models.ForeignKey(TipoImovel, on_delete=models.CASCADE, blank=False)
    tipo_anuncio = models.ForeignKey(TipoAnuncio, on_delete=models.CASCADE, blank=False)
    descricao = models.CharField(max_length=255, blank=True)
    classificacao = models.CharField(max_length=255, blank=True)
    num_banheiros = models.IntegerField(default='0')
    num_conzinhas = models.IntegerField(default='0')
    num_vagas = models.IntegerField(default='0')
    num_quartos = models.IntegerField(default='0')
    preco_imovel = models.DecimalField(max_digits=9, decimal_places=2, blank=True, default='0')

    class Meta:
        verbose_name = 'Imovel'
        verbose_name_plural = 'Imoveis'
        ordering = ['id']

class TipoHospedagem(models.Model):
    nome = models.CharField(max_length=50)

    def __str__(self):
        return self.nome




#  devesse mensalmente gerar uma entidade dessas
class Parcela(models.Model):
    imovel = models.ForeignKey(Imovel, related_name='Imoveis', on_delete=models.CASCADE, blank=False)
    tipo_ospedagem = models.ForeignKey(TipoHospedagem, on_delete=models.CASCADE)
    valor = models.DecimalField(max_digits=9, decimal_places=2)
    date_vencimento = models.DateTimeField(auto_now=True)
    status = models.BooleanField(default=False)


class TipoContato(models.Model):
    nome = models.CharField(max_length=255, default='Email')

    def __str__(self):
        return self.nome


class Contato(models.Model):
    imovel = models.ForeignKey(Imovel, on_delete=models.CASCADE)
    tipo_contato = models.ForeignKey(TipoContato, related_name='tipos_contatos', on_delete=models.CASCADE)
    valor = models.CharField(max_length=255)


class Imagem(models.Model):
    imovel = models.ForeignKey(Imovel, on_delete=models.CASCADE)
    url = models.ImageField(upload_to='imagens/imoveis', blank=True, null=True)





