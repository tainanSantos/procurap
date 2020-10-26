// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PropertyHomeController on _PropertyHomeControllerBase, Store {
  final _$imovelModelsAtom =
      Atom(name: '_PropertyHomeControllerBase.imovelModels');

  @override
  ObservableFuture<ObservableList<ImovelModel>> get imovelModels {
    _$imovelModelsAtom.reportRead();
    return super.imovelModels;
  }

  @override
  set imovelModels(ObservableFuture<ObservableList<ImovelModel>> value) {
    _$imovelModelsAtom.reportWrite(value, super.imovelModels, () {
      super.imovelModels = value;
    });
  }

  final _$tipoAnunciosAtom =
      Atom(name: '_PropertyHomeControllerBase.tipoAnuncios');

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

  final _$tipoImoveisAtom =
      Atom(name: '_PropertyHomeControllerBase.tipoImoveis');

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
      Atom(name: '_PropertyHomeControllerBase.tipoHospedagens');

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

  final _$imagensAtom = Atom(name: '_PropertyHomeControllerBase.imagens');

  @override
  ObservableFuture<ObservableList<ImagemModel>> get imagens {
    _$imagensAtom.reportRead();
    return super.imagens;
  }

  @override
  set imagens(ObservableFuture<ObservableList<ImagemModel>> value) {
    _$imagensAtom.reportWrite(value, super.imagens, () {
      super.imagens = value;
    });
  }

  final _$enderecosAtom = Atom(name: '_PropertyHomeControllerBase.enderecos');

  @override
  ObservableFuture<ObservableList<EnderecoModel>> get enderecos {
    _$enderecosAtom.reportRead();
    return super.enderecos;
  }

  @override
  set enderecos(ObservableFuture<ObservableList<EnderecoModel>> value) {
    _$enderecosAtom.reportWrite(value, super.enderecos, () {
      super.enderecos = value;
    });
  }

  final _$imovelModelAtom =
      Atom(name: '_PropertyHomeControllerBase.imovelModel');

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

  final _$enderecoModelAtom =
      Atom(name: '_PropertyHomeControllerBase.enderecoModel');

  @override
  EnderecoModel get enderecoModel {
    _$enderecoModelAtom.reportRead();
    return super.enderecoModel;
  }

  @override
  set enderecoModel(EnderecoModel value) {
    _$enderecoModelAtom.reportWrite(value, super.enderecoModel, () {
      super.enderecoModel = value;
    });
  }

  final _$_PropertyHomeControllerBaseActionController =
      ActionController(name: '_PropertyHomeControllerBase');

  @override
  dynamic setImovelModel(ImovelModel value) {
    final _$actionInfo = _$_PropertyHomeControllerBaseActionController
        .startAction(name: '_PropertyHomeControllerBase.setImovelModel');
    try {
      return super.setImovelModel(value);
    } finally {
      _$_PropertyHomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEnderecoModel(EnderecoModel value) {
    final _$actionInfo = _$_PropertyHomeControllerBaseActionController
        .startAction(name: '_PropertyHomeControllerBase.setEnderecoModel');
    try {
      return super.setEnderecoModel(value);
    } finally {
      _$_PropertyHomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> getImgsImovel(int id) {
    final _$actionInfo = _$_PropertyHomeControllerBaseActionController
        .startAction(name: '_PropertyHomeControllerBase.getImgsImovel');
    try {
      return super.getImgsImovel(id);
    } finally {
      _$_PropertyHomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getTipoImovel(int id) {
    final _$actionInfo = _$_PropertyHomeControllerBaseActionController
        .startAction(name: '_PropertyHomeControllerBase.getTipoImovel');
    try {
      return super.getTipoImovel(id);
    } finally {
      _$_PropertyHomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  EnderecoModel getEndereco(int id) {
    final _$actionInfo = _$_PropertyHomeControllerBaseActionController
        .startAction(name: '_PropertyHomeControllerBase.getEndereco');
    try {
      return super.getEndereco(id);
    } finally {
      _$_PropertyHomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imovelModels: ${imovelModels},
tipoAnuncios: ${tipoAnuncios},
tipoImoveis: ${tipoImoveis},
tipoHospedagens: ${tipoHospedagens},
imagens: ${imagens},
enderecos: ${enderecos},
imovelModel: ${imovelModel},
enderecoModel: ${enderecoModel}
    ''';
  }
}
