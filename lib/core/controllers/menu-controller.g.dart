// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenuController on _MenuControllerBase, Store {
  final _$firebaseUserAtom = Atom(name: '_MenuControllerBase.firebaseUser');

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

  final _$getCurrentFirebaseUserAsyncAction =
      AsyncAction('getCurrentFirebaseUser');

  @override
  Future getCurrentFirebaseUser() {
    return _$getCurrentFirebaseUserAsyncAction
        .run(() => super.getCurrentFirebaseUser());
  }

  final _$_MenuControllerBaseActionController =
      ActionController(name: '_MenuControllerBase');

  @override
  void logout() {
    final _$actionInfo = _$_MenuControllerBaseActionController.startAction();
    try {
      return super.logout();
    } finally {
      _$_MenuControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'firebaseUser: ${firebaseUser.toString()}';
    return '{$string}';
  }
}
