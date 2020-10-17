// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PropertyController = BindInject(
  (i) => PropertyController(i<AddressRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PropertyController on _PropertyControllerBase, Store {
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

  final _$msgCepAtom = Atom(name: '_PropertyControllerBase.msgCep');

  @override
  String get msgCep {
    _$msgCepAtom.reportRead();
    return super.msgCep;
  }

  @override
  set msgCep(String value) {
    _$msgCepAtom.reportWrite(value, super.msgCep, () {
      super.msgCep = value;
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
  String toString() {
    return '''
urlImagesList: ${urlImagesList},
msgCep: ${msgCep},
publicPlace: ${publicPlace},
neighborhood: ${neighborhood},
number: ${number},
complement: ${complement},
city: ${city},
state: ${state},
cep: ${cep},
upload: ${upload},
validatPublicPlace: ${validatPublicPlace},
validatNeighborhood: ${validatNeighborhood},
validatNumber: ${validatNumber},
validatComplement: ${validatComplement},
validatCity: ${validatCity},
validatState: ${validatState},
validatCep: ${validatCep}
    ''';
  }
}
