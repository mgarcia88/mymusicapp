import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/artists/controllers/new-artists-controller.dart';

class NewArtistPage extends StatefulWidget {
  @override
  _NewArtistPageState createState() => _NewArtistPageState();
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
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                return _textFormField(
                    "Nome", _controller.changeName, _controller.validateName);
              },
            ),
            SizedBox(height:30),
            Observer(
              builder: (_) {
                return _textFormField(
                    "Código", _controller.changeCode, _controller.validateCode);
              },
            )
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
        suffixIcon: _controller.nameIsValid ? Icon(Icons.check_circle, color: Colors.green,) : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: _controller.nameIsValid
                  ? Colors.green
                  : !_controller.nameIsValid ? Colors.red : Colors.blue,
              width: 2.0),
        ),
      ),
    );
  }
}
