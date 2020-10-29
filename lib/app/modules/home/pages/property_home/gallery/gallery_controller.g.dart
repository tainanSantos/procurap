// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GalleryController on _GalleryControllerBase, Store {
  Computed<int> _$getIdImovelComputed;

  @override
  int get getIdImovel =>
      (_$getIdImovelComputed ??= Computed<int>(() => super.getIdImovel,
              name: '_GalleryControllerBase.getIdImovel'))
          .value;

  final _$imagensAtom = Atom(name: '_GalleryControllerBase.imagens');

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

  final _$_idImovelAtom = Atom(name: '_GalleryControllerBase._idImovel');

  @override
  int get _idImovel {
    _$_idImovelAtom.reportRead();
    return super._idImovel;
  }

  @override
  set _idImovel(int value) {
    _$_idImovelAtom.reportWrite(value, super._idImovel, () {
      super._idImovel = value;
    });
  }

  final _$urlsAtom = Atom(name: '_GalleryControllerBase.urls');

  @override
  ObservableList<String> get urls {
    _$urlsAtom.reportRead();
    return super.urls;
  }

  @override
  set urls(ObservableList<String> value) {
    _$urlsAtom.reportWrite(value, super.urls, () {
      super.urls = value;
    });
  }

  final _$_GalleryControllerBaseActionController =
      ActionController(name: '_GalleryControllerBase');

  @override
  dynamic setIsImovel(dynamic value) {
    final _$actionInfo = _$_GalleryControllerBaseActionController.startAction(
        name: '_GalleryControllerBase.setIsImovel');
    try {
      return super.setIsImovel(value);
    } finally {
      _$_GalleryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imagens: ${imagens},
urls: ${urls},
getIdImovel: ${getIdImovel}
    ''';
  }
}
