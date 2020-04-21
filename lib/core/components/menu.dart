import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/core/commom/commom-styles.dart';
import 'package:music_app/core/controllers/menu-controller.dart';

class Menu extends StatelessWidget {
  FirebaseUser firebaseUser;
  MenuController _menuController;

  Menu() {
    this._menuController = new MenuController();
    this._menuController.getCurrentFirebaseUser();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => Future.value(false),
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFFFFFFFF),
        ),
        child: SizedBox(
          child: Drawer(
            child: ListView(
              children: <Widget>[
                Observer(builder: (_) {
                  return UserAccountsDrawerHeader(
                    accountName:
                        Text(this._menuController.firebaseUser.displayName),
                    accountEmail: Text(this._menuController.firebaseUser.email),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            this._menuController.firebaseUser.photoUrl)),
                  );
                }),
                ListTile(
                  leading: Icon(Icons.add_box),
                  title: CommomStyles.title(
                      text: "Cadastro de artistas", size: 16, color: 0xFF000000, weight: FontWeight.bold),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person),
                  title: CommomStyles.title(
                      text: "Artistas", size: 16, color: 0xFF000000, weight: FontWeight.bold),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.gesture),
                  title: CommomStyles.title(
                      text: "Sair", size: 16, color: 0xFF000000, weight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
