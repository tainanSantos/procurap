class ContatoModel {
  int id;
  int imovel;
  int tipoContato;
  String valor;

  ContatoModel({this.id, this.imovel, this.tipoContato, this.valor});

  ContatoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imovel = json['imovel'];
    tipoContato = json['tipo_contato'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imovel'] = this.imovel;
    data['tipo_contato'] = this.tipoContato;
    data['valor'] = this.valor;
    return data;
  }
}