import 'package:flutter/material.dart';
import 'package:music_app/artists/views/artist-albuns-page.dart';
import 'package:music_app/artists/views/artists-page.dart';
import 'package:music_app/auth/views/signin-view.dart';
import 'package:music_app/core/services/navigator-service.dart';

import 'core/services/locator-service.dart';

void main() {
  LocatorService locatorService = new LocatorService();
  locatorService.setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  LocatorService locatorService = new LocatorService();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de música',
      debugShowCheckedModeBanner: false,
      routes: this._createRoutes(),
      navigatorKey: locatorService.locator<NavigatorService>().navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SigninView.route,
    );
  }

   _createRoutes() {
    var routes = {
      ArtistsPage.route: (context) => ArtistsPage(),
      ArtistAlbunsPage.route: (context) => ArtistAlbunsPage(ModalRoute.of(context).settings.arguments),
      SigninView.route: (context) => SigninView()
    };

    return routes;
  }
}