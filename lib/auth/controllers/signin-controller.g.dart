// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninController on _SigninControllerBase, Store {
  final _$usernameAtom = Atom(name: '_SigninControllerBase.username');

  @override
  String get username {
    _$usernameAtom.context.enforceReadPolicy(_$usernameAtom);
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.conditionallyRunInAction(() {
      super.username = value;
      _$usernameAtom.reportChanged();
    }, _$usernameAtom, name: '${_$usernameAtom.name}_set');
  }

  final _$usernameIsValidAtom =
      Atom(name: '_SigninControllerBase.usernameIsValid');

  @override
  bool get usernameIsValid {
    _$usernameIsValidAtom.context.enforceReadPolicy(_$usernameIsValidAtom);
    _$usernameIsValidAtom.reportObserved();
    return super.usernameIsValid;
  }

  @override
  set usernameIsValid(bool value) {
    _$usernameIsValidAtom.context.conditionallyRunInAction(() {
      super.usernameIsValid = value;
      _$usernameIsValidAtom.reportChanged();
    }, _$usernameIsValidAtom, name: '${_$usernameIsValidAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_SigninControllerBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$passwordIsValidAtom =
      Atom(name: '_SigninControllerBase.passwordIsValid');

  @override
  bool get passwordIsValid {
    _$passwordIsValidAtom.context.enforceReadPolicy(_$passwordIsValidAtom);
    _$passwordIsValidAtom.reportObserved();
    return super.passwordIsValid;
  }

  @override
  set passwordIsValid(bool value) {
    _$passwordIsValidAtom.context.conditionallyRunInAction(() {
      super.passwordIsValid = value;
      _$passwordIsValidAtom.reportChanged();
    }, _$passwordIsValidAtom, name: '${_$passwordIsValidAtom.name}_set');
  }

  final _$firebaseUserAtom = Atom(name: '_SigninControllerBase.firebaseUser');

  @override
  FirebaseUser get firebaseUser {
    _$firebaseUserAtom.context.enforceReadPolicy(_$firebaseUserAtom);
    _$firebaseUserAtom.reportObserved();
    return super.firebaseUser;
  }

  @override
  set firebaseUser(FirebaseUser value) {
    _$firebaseUserAtom.context.conditionallyRunInAction(() {
      super.firebaseUser = value;
      _$firebaseUserAtom.reportChanged();
    }, _$firebaseUserAtom, name: '${_$firebaseUserAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_SigninControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$signinWithGoogleAsyncAction = AsyncAction('signinWithGoogle');

  @override
  Future<dynamic> signinWithGoogle() {
    return _$signinWithGoogleAsyncAction.run(() => super.signinWithGoogle());
  }

  final _$_SigninControllerBaseActionController =
      ActionController(name: '_SigninControllerBase');

  @override
  dynamic changeUsername(String value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.changeUsername(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.changePassword(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'username: ${username.toString()},usernameIsValid: ${usernameIsValid.toString()},password: ${password.toString()},passwordIsValid: ${passwordIsValid.toString()},firebaseUser: ${firebaseUser.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
