// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $UserController = BindInject(
  (i) => UserController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on _UserControllerBase, Store {
  Computed<bool> _$getTokenComputed;

  @override
  bool get getToken =>
      (_$getTokenComputed ??= Computed<bool>(() => super.getToken,
              name: '_UserControllerBase.getToken'))
          .value;

  final _$tokenAtom = Atom(name: '_UserControllerBase.token');

  @override
  bool get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(bool value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  final _$_UserControllerBaseActionController =
      ActionController(name: '_UserControllerBase');

  @override
  dynamic setToken(dynamic value) {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction(
        name: '_UserControllerBase.setToken');
    try {
      return super.setToken(value);
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
token: ${token},
getToken: ${getToken}
    ''';
  }
}
