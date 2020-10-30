// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FilterController = BindInject(
  (i) => FilterController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilterController on _FilterControllerBase, Store {
  Computed<String> _$getUfComputed;

  @override
  String get getUf => (_$getUfComputed ??= Computed<String>(() => super.getUf,
          name: '_FilterControllerBase.getUf'))
      .value;
  Computed<String> _$getCidadeComputed;

  @override
  String get getCidade =>
      (_$getCidadeComputed ??= Computed<String>(() => super.getCidade,
              name: '_FilterControllerBase.getCidade'))
          .value;
  Computed<String> _$getBairroComputed;

  @override
  String get getBairro =>
      (_$getBairroComputed ??= Computed<String>(() => super.getBairro,
              name: '_FilterControllerBase.getBairro'))
          .value;
  Computed<String> _$getCategoriaComputed;

  @override
  String get getCategoria =>
      (_$getCategoriaComputed ??= Computed<String>(() => super.getCategoria,
              name: '_FilterControllerBase.getCategoria'))
          .value;

  final _$imovelModelsAtom = Atom(name: '_FilterControllerBase.imovelModels');

  @override
  ObservableList<ImovelModel> get imovelModels {
    _$imovelModelsAtom.reportRead();
    return super.imovelModels;
  }

  @override
  set imovelModels(ObservableList<ImovelModel> value) {
    _$imovelModelsAtom.reportWrite(value, super.imovelModels, () {
      super.imovelModels = value;
    });
  }

  final _$tipoAnunciosAtom = Atom(name: '_FilterControllerBase.tipoAnuncios');

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

  final _$tipoImoveisAtom = Atom(name: '_FilterControllerBase.tipoImoveis');

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
      Atom(name: '_FilterControllerBase.tipoHospedagens');

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

  final _$imagensAtom = Atom(name: '_FilterControllerBase.imagens');

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

  final _$enderecosAtom = Atom(name: '_FilterControllerBase.enderecos');

  @override
  ObservableList<EnderecoModel> get enderecos {
    _$enderecosAtom.reportRead();
    return super.enderecos;
  }

  @override
  set enderecos(ObservableList<EnderecoModel> value) {
    _$enderecosAtom.reportWrite(value, super.enderecos, () {
      super.enderecos = value;
    });
  }

  final _$contatosAtom = Atom(name: '_FilterControllerBase.contatos');

  @override
  ObservableFuture<ObservableList<ContatoModel>> get contatos {
    _$contatosAtom.reportRead();
    return super.contatos;
  }

  @override
  set contatos(ObservableFuture<ObservableList<ContatoModel>> value) {
    _$contatosAtom.reportWrite(value, super.contatos, () {
      super.contatos = value;
    });
  }

  final _$valueAtom = Atom(name: '_FilterControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$ufAtom = Atom(name: '_FilterControllerBase.uf');

  @override
  String get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  final _$cidadeAtom = Atom(name: '_FilterControllerBase.cidade');

  @override
  String get cidade {
    _$cidadeAtom.reportRead();
    return super.cidade;
  }

  @override
  set cidade(String value) {
    _$cidadeAtom.reportWrite(value, super.cidade, () {
      super.cidade = value;
    });
  }

  final _$bairroAtom = Atom(name: '_FilterControllerBase.bairro');

  @override
  String get bairro {
    _$bairroAtom.reportRead();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.reportWrite(value, super.bairro, () {
      super.bairro = value;
    });
  }

  final _$categoriaAtom = Atom(name: '_FilterControllerBase.categoria');

  @override
  String get categoria {
    _$categoriaAtom.reportRead();
    return super.categoria;
  }

  @override
  set categoria(String value) {
    _$categoriaAtom.reportWrite(value, super.categoria, () {
      super.categoria = value;
    });
  }

  final _$_FilterControllerBaseActionController =
      ActionController(name: '_FilterControllerBase');

  @override
  dynamic setUf(dynamic value) {
    final _$actionInfo = _$_FilterControllerBaseActionController.startAction(
        name: '_FilterControllerBase.setUf');
    try {
      return super.setUf(value);
    } finally {
      _$_FilterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCidade(dynamic value) {
    final _$actionInfo = _$_FilterControllerBaseActionController.startAction(
        name: '_FilterControllerBase.setCidade');
    try {
      return super.setCidade(value);
    } finally {
      _$_FilterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setBairro(dynamic value) {
    final _$actionInfo = _$_FilterControllerBaseActionController.startAction(
        name: '_FilterControllerBase.setBairro');
    try {
      return super.setBairro(value);
    } finally {
      _$_FilterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCategoria(dynamic value) {
    final _$actionInfo = _$_FilterControllerBaseActionController.startAction(
        name: '_FilterControllerBase.setCategoria');
    try {
      return super.setCategoria(value);
    } finally {
      _$_FilterControllerBaseActionController.endAction(_$actionInfo);
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
contatos: ${contatos},
value: ${value},
uf: ${uf},
cidade: ${cidade},
bairro: ${bairro},
categoria: ${categoria},
getUf: ${getUf},
getCidade: ${getCidade},
getBairro: ${getBairro},
getCategoria: ${getCategoria}
    ''';
  }
}
