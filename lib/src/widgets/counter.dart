import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  int n;
  double heightCounter;
  double widthCounter;
  double sizeIcon;
  String icon;
  CounterWidget(this.n, this.widthCounter, this.heightCounter, this.sizeIcon,this.icon);
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  void add() {
    setState(() {
      widget.n++;
    });
  }

  void minus() {
    setState(() {
      if (widget.n != 0) widget.n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _n = widget.n;
    return Container(
      width: widget.widthCounter,
      height: widget.heightCounter,
      color: Color.fromRGBO(224, 233, 245, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: widget.sizeIcon,
            width: widget.sizeIcon,
            margin: EdgeInsets.only(left: 2),
            child: FlatButton(
                color: Colors.white,
                child: Image.asset('assets/arrowMoyCopie.png'),
                onPressed: minus,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(2.0))),
          ),
          Text('$_n', style: new TextStyle(fontSize: 18.0)),
          Container(
            height: widget.sizeIcon,
            width: widget.sizeIcon,
            margin: EdgeInsets.only(right: 2),
            child: FlatButton(
                color: Colors.white,
                child: Image.asset(widget.icon),
                onPressed: add,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(2.0))),
          ),
        ],
      ),
    );
  }
}
