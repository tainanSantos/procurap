// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PropertyController = BindInject(
  (i) => PropertyController(i<ImovelRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PropertyController on _PropertyControllerBase, Store {
  final _$imovelModelsAtom = Atom(name: '_PropertyControllerBase.imovelModels');

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

  @override
  String toString() {
    return '''
imovelModels: ${imovelModels}
    ''';
  }
}
