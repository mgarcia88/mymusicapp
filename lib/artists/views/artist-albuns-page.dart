import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/artists/controllers/artists-controller.dart';
import 'package:music_app/core/model/screen-arguments-model.dart';
import 'package:music_app/core/services/locator-service.dart';
import 'package:music_app/core/services/navigator-service.dart';

class ArtistAlbunsPage extends StatefulWidget {
  @override
  _ArtistAlbunsPageState createState() => _ArtistAlbunsPageState();

  static const String route = '/artists-albuns';

  NavigatorService _navigationService;

  LocatorService locatorService = new LocatorService();

  final ScreenArgumentsModel _arguments;

  ArtistAlbunsPage(this._arguments){
    this._navigationService = locatorService.locator<NavigatorService>();
  }
}

class _ArtistAlbunsPageState extends State<ArtistAlbunsPage> {
  final _controller = ArtistsController();

  @override
  void initState() {
    super.initState();

    _controller.getArtistsAlbuns(this.widget._arguments.param);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Albuns do Artista"),
          centerTitle: true,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: <Widget>[
              Expanded(child: Observer(builder: (_) {
                if (_controller.artistsAlbuns.length == 0) {
                  return Center(
                      child: Container(
                          child: CircularProgressIndicator(),
                          width: 50,
                          height: 50));
                }

                return ListView.builder(
                    itemCount: _controller.artistsAlbuns.length,
                    itemBuilder: (BuildContext context, int index) {
                      var album = _controller.artistsAlbuns[index];
                      return ListTile(
                          leading: Icon(Icons.star), title: Text(album.name));
                    });
              })),
            ],
          ),
        ));
  }
}
