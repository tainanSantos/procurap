// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterController = BindInject(
  (i) => RegisterController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<bool> _$validatIsRealtorComputed;

  @override
  bool get validatIsRealtor => (_$validatIsRealtorComputed ??= Computed<bool>(
          () => super.validatIsRealtor,
          name: '_RegisterControllerBase.validatIsRealtor'))
      .value;
  Computed<bool> _$validatIsOwnerComputed;

  @override
  bool get validatIsOwner =>
      (_$validatIsOwnerComputed ??= Computed<bool>(() => super.validatIsOwner,
              name: '_RegisterControllerBase.validatIsOwner'))
          .value;

  final _$isRealtorAtom = Atom(name: '_RegisterControllerBase.isRealtor');

  @override
  bool get isRealtor {
    _$isRealtorAtom.reportRead();
    return super.isRealtor;
  }

  @override
  set isRealtor(bool value) {
    _$isRealtorAtom.reportWrite(value, super.isRealtor, () {
      super.isRealtor = value;
    });
  }

  final _$isOwnerAtom = Atom(name: '_RegisterControllerBase.isOwner');

  @override
  bool get isOwner {
    _$isOwnerAtom.reportRead();
    return super.isOwner;
  }

  @override
  set isOwner(bool value) {
    _$isOwnerAtom.reportWrite(value, super.isOwner, () {
      super.isOwner = value;
    });
  }

  final _$nameAtom = Atom(name: '_RegisterControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegisterControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegisterControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordValidateAtom =
      Atom(name: '_RegisterControllerBase.passwordValidate');

  @override
  String get passwordValidate {
    _$passwordValidateAtom.reportRead();
    return super.passwordValidate;
  }

  @override
  set passwordValidate(String value) {
    _$passwordValidateAtom.reportWrite(value, super.passwordValidate, () {
      super.passwordValidate = value;
    });
  }

  final _$cpfAtom = Atom(name: '_RegisterControllerBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$crmAtom = Atom(name: '_RegisterControllerBase.crm');

  @override
  String get crm {
    _$crmAtom.reportRead();
    return super.crm;
  }

  @override
  set crm(String value) {
    _$crmAtom.reportWrite(value, super.crm, () {
      super.crm = value;
    });
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  dynamic setIsRealtor(dynamic value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setIsRealtor');
    try {
      return super.setIsRealtor(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsOwner(dynamic value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setIsOwner');
    try {
      return super.setIsOwner(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(dynamic value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isRealtor: ${isRealtor},
isOwner: ${isOwner},
name: ${name},
email: ${email},
password: ${password},
passwordValidate: ${passwordValidate},
cpf: ${cpf},
crm: ${crm},
validatIsRealtor: ${validatIsRealtor},
validatIsOwner: ${validatIsOwner}
    ''';
  }
}
