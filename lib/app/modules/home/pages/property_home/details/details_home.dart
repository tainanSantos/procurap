import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/pages/property_home/details/details.dart';
import 'package:procurap/app/modules/home/pages/property_home/property_home_controller.dart';

class DetailsHome extends StatefulWidget {
  @override
  _DetailsHomeState createState() => _DetailsHomeState();
}

class _DetailsHomeState extends State<DetailsHome> {
  String _imgUrl;
  String _tipoImovel;
  String _aluguel;
  String _precoImovel;
  int _quartos;
  int _cozinhas;
  int _garagem;
  int _banheiros;
  String _cep;
  String _estado;
  String _logradouro;
  String _bairro;
  String _complemento;
  String _numero;
  String _cidade;
  String _telCelular;
  String _telFixo;
  var propertyHomeC;

  @override
  void initState() {
    super.initState();
    this.propertyHomeC = Modular.get<PropertyHomeController>();
    int id = propertyHomeC.imovelModel.id;
    var imovel = propertyHomeC.imovelModel;
    var endereco = propertyHomeC.enderecoModel;
    this._imgUrl = propertyHomeC.getImgsImovel(id)[0];
    this._tipoImovel = propertyHomeC.getTipoImovel(id);
    List<String> conts = propertyHomeC.getContatos(id);

    this._aluguel = imovel.precoAluguel;
    this._precoImovel = imovel.precoImovel;
    this._quartos = imovel.numQuartos;
    this._cozinhas = imovel.numConzinhas;
    this._garagem = imovel.numVagas;
    this._banheiros = imovel.numBanheiros;
    this._cep = endereco.cep;
    this._estado = endereco.estado;
    this._logradouro = endereco.logradouro;
    this._bairro = endereco.bairro;
    this._complemento = endereco.complemento;
    this._numero = endereco.numero;
    this._cidade = endereco.cidade;
    this._telFixo = conts[0];
    this._telCelular = conts[1];
  }

  @override
  Widget build(BuildContext context) {
    return Details(
      imgUrl: _imgUrl,
      tipoImovel: _tipoImovel,
      aluguel: _aluguel,
      precoImovel: _precoImovel,
      quartos: _quartos,
      cozinhas: _cozinhas,
      garagem: _garagem,
      banheiros: _banheiros,
      cep: _cep,
      estado: _estado,
      logradouro: _logradouro,
      bairro: _bairro,
      complemento: _complemento,
      numero: _numero,
      cidade: _cidade,
      telCelular: _telCelular,
      telFixo: _telFixo,
    );
  }
}
