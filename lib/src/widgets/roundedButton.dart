import 'package:flutter/material.dart';
import './awaniText.dart';

class RoundedButton extends StatelessWidget {
  double height;
  double width;
  Color buttonColor;
  String text;
  double size;
  Color textColor;
  Function function;

  RoundedButton(this.height, this.width, this.buttonColor, this.text, this.size,
      this.textColor, this.function);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(153, 0, 94, 1),
          Color.fromRGBO(236, 86, 36, 1)
        ])),
        child: FlatButton(
          //color: buttonColor,
          child: AwaniText(text, size, textColor, FontWeight.bold),
          onPressed: function,
          //shape: RoundedRectangleBorder(
          // side: BorderSide(//color: buttonColor
          //    ),
          //borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
