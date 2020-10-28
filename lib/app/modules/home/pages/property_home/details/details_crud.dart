import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/modules/home/pages/property_home/details/details.dart';

class DetailsCrud extends StatefulWidget {
  @override
  _DetailsCrudState createState() => _DetailsCrudState();
}

class _DetailsCrudState extends State<DetailsCrud> {
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
  var propertyNew;

  @override
  void initState() {
    super.initState();
    this.propertyNew = Modular.get<PropertyController>();
    this._imgUrl = propertyNew.urlImagesList[0];
    this._tipoImovel = propertyNew.tipoImovel.nome;

    this._aluguel = "${this.propertyNew.aluguel}";
    this._precoImovel = "${this.propertyNew.precoImovel}";
    this._quartos = this.propertyNew.numQuartos;
    this._cozinhas = this.propertyNew.numConzinha;
    this._garagem = this.propertyNew.numGaragen;
    this._banheiros = this.propertyNew.numBanheiro;
    this._cep = this.propertyNew.cep;
    this._estado = this.propertyNew.state;
    this._logradouro = this.propertyNew.publicPlace;
    this._bairro = this.propertyNew.neighborhood;
    this._complemento = this.propertyNew.complement;
    this._numero = this.propertyNew.number;
    this._cidade = this.propertyNew.city;
    this._telFixo = this.propertyNew.telFixo;
    this._telCelular = this.propertyNew.telCelular;
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
      function: ()  {
        
      },
    );
  }
}
