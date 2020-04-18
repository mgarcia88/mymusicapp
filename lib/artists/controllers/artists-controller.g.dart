// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ArtistsController on _ArtistsControllerBase, Store {
  final _$artistsAlbunsAtom =
      Atom(name: '_ArtistsControllerBase.artistsAlbuns');

  @override
  List<Albuns> get artistsAlbuns {
    _$artistsAlbunsAtom.context.enforceReadPolicy(_$artistsAlbunsAtom);
    _$artistsAlbunsAtom.reportObserved();
    return super.artistsAlbuns;
  }

  @override
  set artistsAlbuns(List<Albuns> value) {
    _$artistsAlbunsAtom.context.conditionallyRunInAction(() {
      super.artistsAlbuns = value;
      _$artistsAlbunsAtom.reportChanged();
    }, _$artistsAlbunsAtom, name: '${_$artistsAlbunsAtom.name}_set');
  }

  final _$artistsAtom = Atom(name: '_ArtistsControllerBase.artists');

  @override
  List<Artists> get artists {
    _$artistsAtom.context.enforceReadPolicy(_$artistsAtom);
    _$artistsAtom.reportObserved();
    return super.artists;
  }

  @override
  set artists(List<Artists> value) {
    _$artistsAtom.context.conditionallyRunInAction(() {
      super.artists = value;
      _$artistsAtom.reportChanged();
    }, _$artistsAtom, name: '${_$artistsAtom.name}_set');
  }

  final _$getArtistsAlbunsAsyncAction = AsyncAction('getArtistsAlbuns');

  @override
  Future getArtistsAlbuns(String idArtist) {
    return _$getArtistsAlbunsAsyncAction
        .run(() => super.getArtistsAlbuns(idArtist));
  }

  final _$getArtistsAsyncAction = AsyncAction('getArtists');

  @override
  Future getArtists() {
    return _$getArtistsAsyncAction.run(() => super.getArtists());
  }

  @override
  String toString() {
    final string =
        'artistsAlbuns: ${artistsAlbuns.toString()},artists: ${artists.toString()}';
    return '{$string}';
  }
}
