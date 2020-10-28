// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<bool> _$getIsLoginComputed;

  @override
  bool get getIsLogin =>
      (_$getIsLoginComputed ??= Computed<bool>(() => super.getIsLogin,
              name: '_LoginControllerBase.getIsLogin'))
          .value;
  Computed<bool> _$getVisiblePassComputed;

  @override
  bool get getVisiblePass =>
      (_$getVisiblePassComputed ??= Computed<bool>(() => super.getVisiblePass,
              name: '_LoginControllerBase.getVisiblePass'))
          .value;

  final _$visiblePassAtom = Atom(name: '_LoginControllerBase.visiblePass');

  @override
  bool get visiblePass {
    _$visiblePassAtom.reportRead();
    return super.visiblePass;
  }

  @override
  set visiblePass(bool value) {
    _$visiblePassAtom.reportWrite(value, super.visiblePass, () {
      super.visiblePass = value;
    });
  }

  final _$respApiAtom = Atom(name: '_LoginControllerBase.respApi');

  @override
  bool get respApi {
    _$respApiAtom.reportRead();
    return super.respApi;
  }

  @override
  set respApi(bool value) {
    _$respApiAtom.reportWrite(value, super.respApi, () {
      super.respApi = value;
    });
  }

  final _$isLoginAtom = Atom(name: '_LoginControllerBase.isLogin');

  @override
  bool get isLogin {
    _$isLoginAtom.reportRead();
    return super.isLogin;
  }

  @override
  set isLogin(bool value) {
    _$isLoginAtom.reportWrite(value, super.isLogin, () {
      super.isLogin = value;
    });
  }

  final _$usuarioAtom = Atom(name: '_LoginControllerBase.usuario');

  @override
  String get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(String value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  final _$senhaAtom = Atom(name: '_LoginControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic setUsuario(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setUsuario');
    try {
      return super.setUsuario(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenha(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsLogin(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setIsLogin');
    try {
      return super.setIsLogin(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVisiblePass() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setVisiblePass');
    try {
      return super.setVisiblePass();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
visiblePass: ${visiblePass},
respApi: ${respApi},
isLogin: ${isLogin},
usuario: ${usuario},
senha: ${senha},
getIsLogin: ${getIsLogin},
getVisiblePass: ${getVisiblePass}
    ''';
  }
}
