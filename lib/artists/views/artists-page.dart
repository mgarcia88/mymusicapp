import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/artists/controllers/artists-controller.dart';
import 'package:music_app/artists/views/artist-albuns-page.dart';
import 'package:music_app/core/commom/commom-styles.dart';
import 'package:music_app/core/infraestructure/firebase.dart';

class ArtistsPage extends StatefulWidget {
  @override
  _ArtistsPageState createState() => _ArtistsPageState();

  static const String route = '/artists';
}

class _ArtistsPageState extends State<ArtistsPage> {
  final _controller = ArtistsController();

  @override
  void initState() {
    super.initState();
    initFcm();

    this._controller.getArtists();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Página do artista"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Observer(builder: (_) {
            return Column(
              children: <Widget>[
                Expanded(child: Observer(builder: (_) {
                  if (this._controller.artists == null) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return RefreshIndicator(
                    child: ListView.builder(
                        itemCount: this._controller.artists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: CommomStyles.title(
                                color: 0xFF000051,
                                text: this._controller.artists[index].name,
                                size: 18,
                                weight: FontWeight.bold),
                            leading: Icon(Icons.star),
                            trailing: Container(
                              width: size.width / 4,
                              child: CommomStyles.roundedRaisedButton(
                                  text: "Albuns",
                                  onPressed: () =>
                                      this._controller.goToAlbunsPage(this._controller.artists[index].id),
                                  color: 0xFF000051),
                            ),
                          );
                        }),
                    onRefresh: () => this._controller.getArtists(),
                  );
                })),
              ],
            );
          })),
    );
  }
}
