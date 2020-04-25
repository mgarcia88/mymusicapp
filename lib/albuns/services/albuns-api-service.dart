import 'dart:convert';
import 'package:music_app/albuns/model/albuns-model.dart';
import 'package:music_app/artists/models/artist-mode.dart';
import 'package:music_app/core/infraestructure/api-client.dart';
import 'package:music_app/core/services/firestore-service.dart';

class AlbunsApiService {
  ApiClient _posApiClient;

  FirestoreService _firestoreService;

  AlbunsApiService() {
    _posApiClient = new ApiClient();
    _firestoreService = new FirestoreService();
  }

  Future<List<Albuns>> getArtistAlbunsByArtistId(String idArtist) async {
    final data = "$idArtist/albums";

    var response = await _posApiClient.get("artists/", data);

    final jsonContent = json.decode(response.content);

    if (response.statusCode != 200) {
      return Future.error("Erro ao recuperar o artistas");
    }

    List<Albuns> albuns = List<Albuns>();

    if (jsonContent["items"] == null || jsonContent["items"] != "") {
      for (var item in jsonContent["items"]) {
        albuns.add(Albuns.fromJson(item));
      }
    }

    return albuns;
  }

  Future<List<Artists>> getArtistByArtistId() async {
    final data = await this._firestoreService.getCollectionByName("artistas");

    var response = await _posApiClient.get("artists?ids=", data);

    final jsonContent = json.decode(response.content);

    if (response.statusCode != 200) {
      return Future.error("Erro ao recuperar o artistas");
    }

    List<Artists> artist = List<Artists>();

    for (Map item in jsonContent["artists"]) {
      if (item != null) {
        artist.add(Artists.fromJson(item));
      }
    }

    return artist;
  }
}
