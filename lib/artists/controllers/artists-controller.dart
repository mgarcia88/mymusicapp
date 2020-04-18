import 'package:mobx/mobx.dart';
import 'package:music_app/albuns/model/albuns-model.dart';
import 'package:music_app/albuns/services/albuns-api-service.dart';
import 'package:music_app/artists/models/artist-mode.dart';
import 'package:music_app/core/services/locator-service.dart';
import 'package:music_app/core/services/navigator-service.dart';
import 'package:music_app/core/model/screen-arguments-model.dart';
part 'artists-controller.g.dart';

class ArtistsController = _ArtistsControllerBase with _$ArtistsController;

abstract class _ArtistsControllerBase with Store {
  final apiService = new AlbunsApiService();

  LocatorService locatorService = new LocatorService();
  NavigatorService _navigationService;

  _ArtistsControllerBase() {
    this._navigationService = locatorService.locator<NavigatorService>();
  }

  @observable
  List<Albuns> artistsAlbuns = new List<Albuns>();

  @observable
  List<Artists> artists = new List<Artists>();

  @action
  getArtistsAlbuns(String idArtist) async {
    var resultApi = await apiService.getArtistAlbunsByArtistId(idArtist);

    this.artistsAlbuns  = resultApi;
  }

  @action
  getArtists() async {
    var resultApi = await apiService.getArtistByArtistId();

    this.artists  = resultApi;
  }

  goToAlbunsPage(String artistId) async {
     ScreenArgumentsModel screenArgumentsModel = new ScreenArgumentsModel(artistId);
    return await this._navigationService.pushNamed("/artists-albuns", screenArgumentsModel);
  }
}
