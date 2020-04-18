import 'dart:convert';
import 'package:music_app/albuns/model/albuns-model.dart';
import 'package:music_app/artists/models/artist-mode.dart';
import 'package:music_app/core/infraestructure/api-client.dart';

class AlbunsApiService {
  ApiClient _posApiClient;

  AlbunsApiService() {
    _posApiClient = new ApiClient();
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
    final data = "2mGlvfts36oW5O7KKPzfLk,1w5Kfo2jwwIPruYS2UWh56";
    //1w5Kfo2jwwIPruYS2UWh56,

    var response = await _posApiClient.get("artists?ids=", data);

    final jsonContent = json.decode(response.content);

    if (response.statusCode != 200) {
      return Future.error("Erro ao recuperar o artistas");
    }

    List<Artists> artist = List<Artists>();
    print(jsonContent["artists"]);

    for (Map item in jsonContent["artists"]) {
      artist.add(Artists.fromJson(item));
    }

    return artist;
  }
}
