// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PropertyController = BindInject(
  (i) => PropertyController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PropertyController on _PropertyControllerBase, Store {
  final _$valueAtom = Atom(name: '_PropertyControllerBase.value');

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

  final _$_PropertyControllerBaseActionController =
      ActionController(name: '_PropertyControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PropertyControllerBaseActionController.startAction(
        name: '_PropertyControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
