import 'package:flutter/material.dart';

class AwaniText extends StatelessWidget {
  BuildContext context;
  String text;
  double size;
  Color color;
  FontWeight fontWeight;

  AwaniText(this.text, this.size, this.color, this.fontWeight);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontFamily: 'FFAlamaO',
          fontSize: size,
          color: color,
        ),
      ),
    );
  }
}
