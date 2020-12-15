import 'package:flutter/material.dart';
import 'roundedButton.dart';
import 'awaniText.dart';
import 'counter.dart';

class ProductDescription extends StatefulWidget {
  String title;
  String desc;
  String description;
  int price;
  ProductDescription(this.title, this.desc, this.description, this.price);
  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  int _n = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Color.fromRGBO(239, 243, 250, 1),
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(40, 90, Color.fromRGBO(153, 0, 94, 1), '150 د.ك',
                    14, Colors.white, null),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AwaniText(widget.title, 16, Color.fromRGBO(59, 79, 98, 1),
                        FontWeight.bold),
                    AwaniText(widget.desc, 14, Color.fromRGBO(59, 79, 98, 1),
                        FontWeight.bold)
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 16, left: 16, top: 10),
              child: AwaniText(
                  widget.description, 12, Color.fromRGBO(59, 79, 98, 1), null)),
          Padding(
            padding: EdgeInsets.only(right: 16, left: 16, top: 12),
            child: AwaniText(
                'الكمية', 16, Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16, left: 16, top: 12),
            child: CounterWidget(_n, 140, 50, 45, 'assets/arrowMoy.png'),
          ),
        ],
      ),
    );
  }
}
