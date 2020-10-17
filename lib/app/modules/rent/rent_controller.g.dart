// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RentController = BindInject(
  (i) => RentController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RentController on _RentControllerBase, Store {
  final _$valueAtom = Atom(name: '_RentControllerBase.value');

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

  final _$_RentControllerBaseActionController =
      ActionController(name: '_RentControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_RentControllerBaseActionController.startAction(
        name: '_RentControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_RentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
