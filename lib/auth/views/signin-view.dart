import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/auth/controllers/signin-controller.dart';

class SigninView extends StatelessWidget {
  static const String route = '/signup';

  final _signinController = new SigninController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(20),
          child: Observer(builder: (_) {
            if (this._signinController.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            return Form(
                child: ListView(
              children: <Widget>[
                SizedBox(height: size.height / 5),
                this._textFormField("Seu login",this._signinController.changeUsername, this._signinController.validateUsername),
                SizedBox(height: size.height / 15),
                this._textFormField("Sua senha", null, () => null),
                SizedBox(height: size.height / 15),
                Container(
                  height: 60,
                  child: GoogleSignInButton(
                    onPressed: () => this._signinController.signinWithGoogle(),
                    splashColor: Colors.black,
                    darkMode: false,
                    text: "Entrar com o Google",
                    textStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.blue,
                        fontSize: 16),
                    borderRadius: 5,
                  ),
                )
              ],
            ));
          })),
    );
  }

  _textFormField(
      String labelText, Function onChanged, String Function() validate) {
    return TextFormField(
      autovalidate: true,
      autofocus: false,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: validate == null ? null : validate(),
      ),
    );
  }
}
