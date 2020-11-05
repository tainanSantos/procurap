// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PropertyController on _PropertyControllerBase, Store {
  Computed<bool> _$valTipoAnuncioComputed;

  @override
  bool get valTipoAnuncio =>
      (_$valTipoAnuncioComputed ??= Computed<bool>(() => super.valTipoAnuncio,
              name: '_PropertyControllerBase.valTipoAnuncio'))
          .value;
  Computed<bool> _$valTipoImovelComputed;

  @override
  bool get valTipoImovel =>
      (_$valTipoImovelComputed ??= Computed<bool>(() => super.valTipoImovel,
              name: '_PropertyControllerBase.valTipoImovel'))
          .value;
  Computed<bool> _$valiTipoHospedagemComputed;

  @override
  bool get valiTipoHospedagem => (_$valiTipoHospedagemComputed ??=
          Computed<bool>(() => super.valiTipoHospedagem,
              name: '_PropertyControllerBase.valiTipoHospedagem'))
      .value;
  Computed<bool> _$valQtdComputed;

  @override
  bool get valQtd => (_$valQtdComputed ??= Computed<bool>(() => super.valQtd,
          name: '_PropertyControllerBase.valQtd'))
      .value;
  Computed<bool> _$valTelFixoComputed;

  @override
  bool get valTelFixo =>
      (_$valTelFixoComputed ??= Computed<bool>(() => super.valTelFixo,
              name: '_PropertyControllerBase.valTelFixo'))
          .value;
  Computed<bool> _$valTelCelularComputed;

  @override
  bool get valTelCelular =>
      (_$valTelCelularComputed ??= Computed<bool>(() => super.valTelCelular,
              name: '_PropertyControllerBase.valTelCelular'))
          .value;
  Computed<String> _$validatPublicPlaceComputed;

  @override
  String get validatPublicPlace => (_$validatPublicPlaceComputed ??=
          Computed<String>(() => super.validatPublicPlace,
              name: '_PropertyControllerBase.validatPublicPlace'))
      .value;
  Computed<String> _$validatNeighborhoodComputed;

  @override
  String get validatNeighborhood => (_$validatNeighborhoodComputed ??=
          Computed<String>(() => super.validatNeighborhood,
              name: '_PropertyControllerBase.validatNeighborhood'))
      .value;
  Computed<String> _$validatNumberComputed;

  @override
  String get validatNumber =>
      (_$validatNumberComputed ??= Computed<String>(() => super.validatNumber,
              name: '_PropertyControllerBase.validatNumber'))
          .value;
  Computed<String> _$validatComplementComputed;

  @override
  String get validatComplement => (_$validatComplementComputed ??=
          Computed<String>(() => super.validatComplement,
              name: '_PropertyControllerBase.validatComplement'))
      .value;
  Computed<String> _$validatCityComputed;

  @override
  String get validatCity =>
      (_$validatCityComputed ??= Computed<String>(() => super.validatCity,
              name: '_PropertyControllerBase.validatCity'))
          .value;
  Computed<String> _$validatStateComputed;

  @override
  String get validatState =>
      (_$validatStateComputed ??= Computed<String>(() => super.validatState,
              name: '_PropertyControllerBase.validatState'))
          .value;
  Computed<String> _$validatCepComputed;

  @override
  String get validatCep =>
      (_$validatCepComputed ??= Computed<String>(() => super.validatCep,
              name: '_PropertyControllerBase.validatCep'))
          .value;
  Computed<String> _$validMsgErroCepComputed;

  @override
  String get validMsgErroCep => (_$validMsgErroCepComputed ??= Computed<String>(
          () => super.validMsgErroCep,
          name: '_PropertyControllerBase.validMsgErroCep'))
      .value;

  final _$tipoAnunciosAtom = Atom(name: '_PropertyControllerBase.tipoAnuncios');

  @override
  ObservableFuture<ObservableList<TipoAnuncioModel>> get tipoAnuncios {
    _$tipoAnunciosAtom.reportRead();
    return super.tipoAnuncios;
  }

  @override
  set tipoAnuncios(ObservableFuture<ObservableList<TipoAnuncioModel>> value) {
    _$tipoAnunciosAtom.reportWrite(value, super.tipoAnuncios, () {
      super.tipoAnuncios = value;
    });
  }

  final _$tipoImoveisAtom = Atom(name: '_PropertyControllerBase.tipoImoveis');

  @override
  ObservableFuture<ObservableList<TipoImovelModel>> get tipoImoveis {
    _$tipoImoveisAtom.reportRead();
    return super.tipoImoveis;
  }

  @override
  set tipoImoveis(ObservableFuture<ObservableList<TipoImovelModel>> value) {
    _$tipoImoveisAtom.reportWrite(value, super.tipoImoveis, () {
      super.tipoImoveis = value;
    });
  }

  final _$tipoHospedagensAtom =
      Atom(name: '_PropertyControllerBase.tipoHospedagens');

  @override
  ObservableFuture<ObservableList<TipoHospedagemModel>> get tipoHospedagens {
    _$tipoHospedagensAtom.reportRead();
    return super.tipoHospedagens;
  }

  @override
  set tipoHospedagens(
      ObservableFuture<ObservableList<TipoHospedagemModel>> value) {
    _$tipoHospedagensAtom.reportWrite(value, super.tipoHospedagens, () {
      super.tipoHospedagens = value;
    });
  }

  final _$urlImagesListAtom =
      Atom(name: '_PropertyControllerBase.urlImagesList');

  @override
  ObservableList<String> get urlImagesList {
    _$urlImagesListAtom.reportRead();
    return super.urlImagesList;
  }

  @override
  set urlImagesList(ObservableList<String> value) {
    _$urlImagesListAtom.reportWrite(value, super.urlImagesList, () {
      super.urlImagesList = value;
    });
  }

  final _$tipoAnuncioAtom = Atom(name: '_PropertyControllerBase.tipoAnuncio');

  @override
  TipoAnuncioModel get tipoAnuncio {
    _$tipoAnuncioAtom.reportRead();
    return super.tipoAnuncio;
  }

  @override
  set tipoAnuncio(TipoAnuncioModel value) {
    _$tipoAnuncioAtom.reportWrite(value, super.tipoAnuncio, () {
      super.tipoAnuncio = value;
    });
  }

  final _$tipoImovelAtom = Atom(name: '_PropertyControllerBase.tipoImovel');

  @override
  TipoImovelModel get tipoImovel {
    _$tipoImovelAtom.reportRead();
    return super.tipoImovel;
  }

  @override
  set tipoImovel(TipoImovelModel value) {
    _$tipoImovelAtom.reportWrite(value, super.tipoImovel, () {
      super.tipoImovel = value;
    });
  }

  final _$tipoHospedagemAtom =
      Atom(name: '_PropertyControllerBase.tipoHospedagem');

  @override
  TipoHospedagemModel get tipoHospedagem {
    _$tipoHospedagemAtom.reportRead();
    return super.tipoHospedagem;
  }

  @override
  set tipoHospedagem(TipoHospedagemModel value) {
    _$tipoHospedagemAtom.reportWrite(value, super.tipoHospedagem, () {
      super.tipoHospedagem = value;
    });
  }

  final _$numBanheiroAtom = Atom(name: '_PropertyControllerBase.numBanheiro');

  @override
  int get numBanheiro {
    _$numBanheiroAtom.reportRead();
    return super.numBanheiro;
  }

  @override
  set numBanheiro(int value) {
    _$numBanheiroAtom.reportWrite(value, super.numBanheiro, () {
      super.numBanheiro = value;
    });
  }

  final _$numGaragenAtom = Atom(name: '_PropertyControllerBase.numGaragen');

  @override
  int get numGaragen {
    _$numGaragenAtom.reportRead();
    return super.numGaragen;
  }

  @override
  set numGaragen(int value) {
    _$numGaragenAtom.reportWrite(value, super.numGaragen, () {
      super.numGaragen = value;
    });
  }

  final _$numQuartosAtom = Atom(name: '_PropertyControllerBase.numQuartos');

  @override
  int get numQuartos {
    _$numQuartosAtom.reportRead();
    return super.numQuartos;
  }

  @override
  set numQuartos(int value) {
    _$numQuartosAtom.reportWrite(value, super.numQuartos, () {
      super.numQuartos = value;
    });
  }

  final _$numConzinhaAtom = Atom(name: '_PropertyControllerBase.numConzinha');

  @override
  int get numConzinha {
    _$numConzinhaAtom.reportRead();
    return super.numConzinha;
  }

  @override
  set numConzinha(int value) {
    _$numConzinhaAtom.reportWrite(value, super.numConzinha, () {
      super.numConzinha = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_PropertyControllerBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$aluguelAtom = Atom(name: '_PropertyControllerBase.aluguel');

  @override
  double get aluguel {
    _$aluguelAtom.reportRead();
    return super.aluguel;
  }

  @override
  set aluguel(double value) {
    _$aluguelAtom.reportWrite(value, super.aluguel, () {
      super.aluguel = value;
    });
  }

  final _$precoImovelAtom = Atom(name: '_PropertyControllerBase.precoImovel');

  @override
  double get precoImovel {
    _$precoImovelAtom.reportRead();
    return super.precoImovel;
  }

  @override
  set precoImovel(double value) {
    _$precoImovelAtom.reportWrite(value, super.precoImovel, () {
      super.precoImovel = value;
    });
  }

  final _$telFixoAtom = Atom(name: '_PropertyControllerBase.telFixo');

  @override
  String get telFixo {
    _$telFixoAtom.reportRead();
    return super.telFixo;
  }

  @override
  set telFixo(String value) {
    _$telFixoAtom.reportWrite(value, super.telFixo, () {
      super.telFixo = value;
    });
  }

  final _$telCelularAtom = Atom(name: '_PropertyControllerBase.telCelular');

  @override
  String get telCelular {
    _$telCelularAtom.reportRead();
    return super.telCelular;
  }

  @override
  set telCelular(String value) {
    _$telCelularAtom.reportWrite(value, super.telCelular, () {
      super.telCelular = value;
    });
  }

  final _$publicPlaceAtom = Atom(name: '_PropertyControllerBase.publicPlace');

  @override
  String get publicPlace {
    _$publicPlaceAtom.reportRead();
    return super.publicPlace;
  }

  @override
  set publicPlace(String value) {
    _$publicPlaceAtom.reportWrite(value, super.publicPlace, () {
      super.publicPlace = value;
    });
  }

  final _$neighborhoodAtom = Atom(name: '_PropertyControllerBase.neighborhood');

  @override
  String get neighborhood {
    _$neighborhoodAtom.reportRead();
    return super.neighborhood;
  }

  @override
  set neighborhood(String value) {
    _$neighborhoodAtom.reportWrite(value, super.neighborhood, () {
      super.neighborhood = value;
    });
  }

  final _$numberAtom = Atom(name: '_PropertyControllerBase.number');

  @override
  String get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$complementAtom = Atom(name: '_PropertyControllerBase.complement');

  @override
  String get complement {
    _$complementAtom.reportRead();
    return super.complement;
  }

  @override
  set complement(String value) {
    _$complementAtom.reportWrite(value, super.complement, () {
      super.complement = value;
    });
  }

  final _$cityAtom = Atom(name: '_PropertyControllerBase.city');

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$stateAtom = Atom(name: '_PropertyControllerBase.state');

  @override
  String get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$cepAtom = Atom(name: '_PropertyControllerBase.cep');

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$msgErroCepAtom = Atom(name: '_PropertyControllerBase.msgErroCep');

  @override
  String get msgErroCep {
    _$msgErroCepAtom.reportRead();
    return super.msgErroCep;
  }

  @override
  set msgErroCep(String value) {
    _$msgErroCepAtom.reportWrite(value, super.msgErroCep, () {
      super.msgErroCep = value;
    });
  }

  final _$uploadAtom = Atom(name: '_PropertyControllerBase.upload');

  @override
  bool get upload {
    _$uploadAtom.reportRead();
    return super.upload;
  }

  @override
  set upload(bool value) {
    _$uploadAtom.reportWrite(value, super.upload, () {
      super.upload = value;
    });
  }

  final _$enderecoAtom = Atom(name: '_PropertyControllerBase.endereco');

  @override
  EnderecoModel get endereco {
    _$enderecoAtom.reportRead();
    return super.endereco;
  }

  @override
  set endereco(EnderecoModel value) {
    _$enderecoAtom.reportWrite(value, super.endereco, () {
      super.endereco = value;
    });
  }

  final _$imovelModelAtom = Atom(name: '_PropertyControllerBase.imovelModel');

  @override
  ImovelModel get imovelModel {
    _$imovelModelAtom.reportRead();
    return super.imovelModel;
  }

  @override
  set imovelModel(ImovelModel value) {
    _$imovelModelAtom.reportWrite(value, super.imovelModel, () {
      super.imovelModel = value;
    });
  }

  final _$salvandoImovelAtom =
      Atom(name: '_PropertyControllerBase.salvandoImovel');

  @override
  bool get salvandoImovel {
    _$salvandoImovelAtom.reportRead();
    return super.salvandoImovel;
  }

  @override
  set salvandoImovel(bool value) {
    _$salvandoImovelAtom.reportWrite(value, super.salvandoImovel, () {
      super.salvandoImovel = value;
    });
  }

  final _$setCepAsyncAction = AsyncAction('_PropertyControllerBase.setCep');

  @override
  Future<dynamic> setCep(String value) {
    return _$setCepAsyncAction.run(() => super.setCep(value));
  }

  final _$getCepAsyncAction = AsyncAction('_PropertyControllerBase.getCep');

  @override
  Future<bool> getCep() {
    return _$getCepAsyncAction.run(() => super.getCep());
  }

  final _$_PropertyControllerBaseActionController =
      ActionController(name: '_PropertyControllerBase');

  @override
  dynamic setTipoImovelModel(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setTipoImovelModel');
    try {
      return super.setTipoImovelModel(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTipoAnuncioModel(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setTipoAnuncioModel');
    try {
      return super.setTipoAnuncioModel(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTipoHospedagemModel(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setTipoHospedagemModel');
    try {
      return super.setTipoHospedagemModel(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumBanheiro(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setNumBanheiro');
    try {
      return super.setNumBanheiro(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumGaragem(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setNumGaragem');
    try {
      return super.setNumGaragem(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumqQuarto(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setNumqQuarto');
    try {
      return super.setNumqQuarto(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumCozinha(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setNumCozinha');
    try {
      return super.setNumCozinha(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescricao(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAluguel(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setAluguel');
    try {
      return super.setAluguel(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPrecoImovel(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setPrecoImovel');
    try {
      return super.setPrecoImovel(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTelFixo(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setTelFixo');
    try {
      return super.setTelFixo(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTelCelular(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setTelCelular');
    try {
      return super.setTelCelular(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addUrlImage(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.addUrlImage');
    try {
      return super.addUrlImage(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPublicPlace(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setPublicPlace');
    try {
      return super.setPublicPlace(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNeighborhood(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setNeighborhood');
    try {
      return super.setNeighborhood(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumber(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setNumber');
    try {
      return super.setNumber(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setComplement(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setComplement');
    try {
      return super.setComplement(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCity(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setstate(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setstate');
    try {
      return super.setstate(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCep_(String value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setCep_');
    try {
      return super.setCep_(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setMsgErroCep(dynamic value) {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.setMsgErroCep');
    try {
      return super.setMsgErroCep(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tipoAnuncios: ${tipoAnuncios},
tipoImoveis: ${tipoImoveis},
tipoHospedagens: ${tipoHospedagens},
urlImagesList: ${urlImagesList},
tipoAnuncio: ${tipoAnuncio},
tipoImovel: ${tipoImovel},
tipoHospedagem: ${tipoHospedagem},
numBanheiro: ${numBanheiro},
numGaragen: ${numGaragen},
numQuartos: ${numQuartos},
numConzinha: ${numConzinha},
descricao: ${descricao},
aluguel: ${aluguel},
precoImovel: ${precoImovel},
telFixo: ${telFixo},
telCelular: ${telCelular},
publicPlace: ${publicPlace},
neighborhood: ${neighborhood},
number: ${number},
complement: ${complement},
city: ${city},
state: ${state},
cep: ${cep},
msgErroCep: ${msgErroCep},
upload: ${upload},
endereco: ${endereco},
imovelModel: ${imovelModel},
salvandoImovel: ${salvandoImovel},
valTipoAnuncio: ${valTipoAnuncio},
valTipoImovel: ${valTipoImovel},
valiTipoHospedagem: ${valiTipoHospedagem},
valQtd: ${valQtd},
valTelFixo: ${valTelFixo},
valTelCelular: ${valTelCelular},
validatPublicPlace: ${validatPublicPlace},
validatNeighborhood: ${validatNeighborhood},
validatNumber: ${validatNumber},
validatComplement: ${validatComplement},
validatCity: ${validatCity},
validatState: ${validatState},
validatCep: ${validatCep},
validMsgErroCep: ${validMsgErroCep}
    ''';
  }
}
