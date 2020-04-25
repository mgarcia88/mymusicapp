import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/artists/controllers/new-artists-controller.dart';
import 'package:music_app/core/commom/commom-styles.dart';

class NewArtistPage extends StatefulWidget {
  @override
  _NewArtistPageState createState() => _NewArtistPageState();

  static const String route = '/new-artists';
}

class _NewArtistPageState extends State<NewArtistPage> {
  final _controller = NewArtistsController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de artistas")),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Observer(
              builder: (_) {
                return _textFormField(
                    "Código", _controller.changeCode, _controller.validateCode);
              },
            ),
            SizedBox(height: 30),
            Observer(builder: (_) {
              return Container(
                  height: 65,
                  child: CommomStyles.roundedRaisedButton(
                      text: "Cadastrar",
                      onPressed: this._controller.codeIsValid ? () => this._controller.addNewArtist() : null,
                      color: 0xFF002f6c));
            })
          ],
        ),
      ),
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
        suffixIcon: _controller.codeIsValid
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: _controller.codeIsValid
                  ? Colors.green
                  : !_controller.codeIsValid ? Colors.red : Colors.blue,
              width: 2.0),
        ),
      ),
    );
  }
}
