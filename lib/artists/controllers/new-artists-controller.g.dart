// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new-artists-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewArtistsController on _NewArtistsController, Store {
  final _$nameAtom = Atom(name: '_NewArtistsController.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$nameIsValidAtom = Atom(name: '_NewArtistsController.nameIsValid');

  @override
  bool get nameIsValid {
    _$nameIsValidAtom.context.enforceReadPolicy(_$nameIsValidAtom);
    _$nameIsValidAtom.reportObserved();
    return super.nameIsValid;
  }

  @override
  set nameIsValid(bool value) {
    _$nameIsValidAtom.context.conditionallyRunInAction(() {
      super.nameIsValid = value;
      _$nameIsValidAtom.reportChanged();
    }, _$nameIsValidAtom, name: '${_$nameIsValidAtom.name}_set');
  }

  final _$codeAtom = Atom(name: '_NewArtistsController.code');

  @override
  String get code {
    _$codeAtom.context.enforceReadPolicy(_$codeAtom);
    _$codeAtom.reportObserved();
    return super.code;
  }

  @override
  set code(String value) {
    _$codeAtom.context.conditionallyRunInAction(() {
      super.code = value;
      _$codeAtom.reportChanged();
    }, _$codeAtom, name: '${_$codeAtom.name}_set');
  }

  final _$codeIsValidAtom = Atom(name: '_NewArtistsController.codeIsValid');

  @override
  bool get codeIsValid {
    _$codeIsValidAtom.context.enforceReadPolicy(_$codeIsValidAtom);
    _$codeIsValidAtom.reportObserved();
    return super.codeIsValid;
  }

  @override
  set codeIsValid(bool value) {
    _$codeIsValidAtom.context.conditionallyRunInAction(() {
      super.codeIsValid = value;
      _$codeIsValidAtom.reportChanged();
    }, _$codeIsValidAtom, name: '${_$codeIsValidAtom.name}_set');
  }

  final _$_NewArtistsControllerActionController =
      ActionController(name: '_NewArtistsController');

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_NewArtistsControllerActionController.startAction();
    try {
      return super.changeName(value);
    } finally {
      _$_NewArtistsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCode(String value) {
    final _$actionInfo = _$_NewArtistsControllerActionController.startAction();
    try {
      return super.changeCode(value);
    } finally {
      _$_NewArtistsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},nameIsValid: ${nameIsValid.toString()},code: ${code.toString()},codeIsValid: ${codeIsValid.toString()}';
    return '{$string}';
  }
}
