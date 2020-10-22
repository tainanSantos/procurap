class EnderecoModel {
  int id;
  String logradouro;
  String bairro;
  String numero;
  String complemento;
  String cidade;
  String estado;
  String cep;

  EnderecoModel(
      {this.id,
      this.logradouro,
      this.bairro,
      this.numero,
      this.complemento,
      this.cidade,
      this.estado,
      this.cep});

  EnderecoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logradouro = json['logradouro'];
    bairro = json['bairro'];
    numero = json['numero'];
    complemento = json['complemento'];
    cidade = json['cidade'];
    estado = json['estado'];
    cep = json['cep'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['logradouro'] = this.logradouro;
    data['bairro'] = this.bairro;
    data['numero'] = this.numero;
    data['complemento'] = this.complemento;
    data['cidade'] = this.cidade;
    data['estado'] = this.estado;
    data['cep'] = this.cep;
    return data;
  }
}