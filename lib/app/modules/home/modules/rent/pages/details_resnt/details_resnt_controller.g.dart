// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_resnt_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DetailsResntController = BindInject(
  (i) => DetailsResntController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsResntController on _DetailsResntControllerBase, Store {
  final _$valueAtom = Atom(name: '_DetailsResntControllerBase.value');

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

  final _$_DetailsResntControllerBaseActionController =
      ActionController(name: '_DetailsResntControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_DetailsResntControllerBaseActionController
        .startAction(name: '_DetailsResntControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_DetailsResntControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
