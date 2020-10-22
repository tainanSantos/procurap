class TipoHospedagemModel {
  int id;
  String nome;

  TipoHospedagemModel({this.id, this.nome});

  TipoHospedagemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    return data;
  }
}