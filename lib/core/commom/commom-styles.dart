import 'package:flutter/material.dart';

class CommomStyles {
  static RaisedButton roundedRaisedButton(
      {@required String text,
      @required Function onPressed,
      @required int color,
      int borderColor,
      IconData prefixIcon,
      IconData sufixIcon,
      String key,
      int textColor}) {
    return RaisedButton(
      key: Key(key),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: prefixIcon != null ? Icon(prefixIcon,  color: textColor != null ? Color(textColor) : Colors.white) : Text(""),
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontFamily: "Montserrat", color: textColor != null ? Color(textColor) : Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          Container(child: sufixIcon != null ? Icon(sufixIcon, color: textColor != null ? Color(textColor) : Colors.white,) : Text(""))
        ],
      ),
      color: Color(color),
      textColor: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(35.0),
          side: BorderSide(
              color: borderColor != null
                  ? Color(borderColor)
                  : Colors.transparent)),
      onPressed: onPressed,
    );
  }

  static Text title(
      {@required String text, @required double size, @required int color, @required FontWeight weight, TextAlign align}) {
    return Text(
      text,
      textAlign: align != null ? align : TextAlign.left,
      style: TextStyle(
        fontFamily: "Montserrat",
        fontSize: size,
        color: Color(color),
        fontWeight: weight
      ),
    );
  }
}
