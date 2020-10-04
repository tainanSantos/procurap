// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_property_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NewPropertyController = BindInject(
  (i) => NewPropertyController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewPropertyController on _NewPropertyControllerBase, Store {
  Computed<String> _$validatPublicPlaceComputed;

  @override
  String get validatPublicPlace => (_$validatPublicPlaceComputed ??=
          Computed<String>(() => super.validatPublicPlace,
              name: '_NewPropertyControllerBase.validatPublicPlace'))
      .value;
  Computed<String> _$validatNeighborhoodComputed;

  @override
  String get validatNeighborhood => (_$validatNeighborhoodComputed ??=
          Computed<String>(() => super.validatNeighborhood,
              name: '_NewPropertyControllerBase.validatNeighborhood'))
      .value;
  Computed<String> _$validatNumberComputed;

  @override
  String get validatNumber =>
      (_$validatNumberComputed ??= Computed<String>(() => super.validatNumber,
              name: '_NewPropertyControllerBase.validatNumber'))
          .value;
  Computed<String> _$validatComplementComputed;

  @override
  String get validatComplement => (_$validatComplementComputed ??=
          Computed<String>(() => super.validatComplement,
              name: '_NewPropertyControllerBase.validatComplement'))
      .value;
  Computed<String> _$validatCityComputed;

  @override
  String get validatCity =>
      (_$validatCityComputed ??= Computed<String>(() => super.validatCity,
              name: '_NewPropertyControllerBase.validatCity'))
          .value;
  Computed<String> _$validatStateComputed;

  @override
  String get validatState =>
      (_$validatStateComputed ??= Computed<String>(() => super.validatState,
              name: '_NewPropertyControllerBase.validatState'))
          .value;
  Computed<String> _$validatCepComputed;

  @override
  String get validatCep =>
      (_$validatCepComputed ??= Computed<String>(() => super.validatCep,
              name: '_NewPropertyControllerBase.validatCep'))
          .value;

  final _$msgCepAtom = Atom(name: '_NewPropertyControllerBase.msgCep');

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

  final _$publicPlaceAtom =
      Atom(name: '_NewPropertyControllerBase.publicPlace');

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

  final _$neighborhoodAtom =
      Atom(name: '_NewPropertyControllerBase.neighborhood');

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

  final _$numberAtom = Atom(name: '_NewPropertyControllerBase.number');

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

  final _$complementAtom = Atom(name: '_NewPropertyControllerBase.complement');

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

  final _$cityAtom = Atom(name: '_NewPropertyControllerBase.city');

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

  final _$stateAtom = Atom(name: '_NewPropertyControllerBase.state');

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

  final _$cepAtom = Atom(name: '_NewPropertyControllerBase.cep');

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

  final _$uploadAtom = Atom(name: '_NewPropertyControllerBase.upload');

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

  final _$getCepAsyncAction = AsyncAction('_NewPropertyControllerBase.getCep');

  @override
  Future<bool> getCep() {
    return _$getCepAsyncAction.run(() => super.getCep());
  }

  final _$_NewPropertyControllerBaseActionController =
      ActionController(name: '_NewPropertyControllerBase');

  @override
  dynamic setPublicPlace(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setPublicPlace');
    try {
      return super.setPublicPlace(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNeighborhood(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setNeighborhood');
    try {
      return super.setNeighborhood(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumber(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setNumber');
    try {
      return super.setNumber(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setComplement(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setComplement');
    try {
      return super.setComplement(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCity(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setstate(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setstate');
    try {
      return super.setstate(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCep(String value) {
    final _$actionInfo = _$_NewPropertyControllerBaseActionController
        .startAction(name: '_NewPropertyControllerBase.setCep');
    try {
      return super.setCep(value);
    } finally {
      _$_NewPropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
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
