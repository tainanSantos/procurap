class ImovelModel {
  int id;
  int tipoImovel;
  int tipoAnuncio;
  String descricao;
  String classificacao;
  int numBanheiros;
  int numConzinhas;
  int numVagas;
  int numQuartos;
  String precoImovel;
  String precoAluguel;

  ImovelModel(
      {this.id,
      this.tipoImovel,
      this.tipoAnuncio,
      this.descricao,
      this.classificacao,
      this.numBanheiros,
      this.numConzinhas,
      this.numVagas,
      this.numQuartos,
      this.precoImovel,
      this.precoAluguel});

  ImovelModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipoImovel = json['tipo_imovel'];
    tipoAnuncio = json['tipo_anuncio'];
    descricao = json['descricao'];
    classificacao = json['classificacao'];
    numBanheiros = json['num_banheiros'];
    numConzinhas = json['num_conzinhas'];
    numVagas = json['num_vagas'];
    numQuartos = json['num_quartos'];
    precoImovel = json['preco_imovel'];
    precoAluguel = json['preco_aluguel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tipo_imovel'] = this.tipoImovel;
    data['tipo_anuncio'] = this.tipoAnuncio;
    data['descricao'] = this.descricao;
    data['classificacao'] = this.classificacao;
    data['num_banheiros'] = this.numBanheiros;
    data['num_conzinhas'] = this.numConzinhas;
    data['num_vagas'] = this.numVagas;
    data['num_quartos'] = this.numQuartos;
    data['preco_imovel'] = this.precoImovel;
    data['preco_aluguel'] = this.precoAluguel;
    return data;
  }
}
