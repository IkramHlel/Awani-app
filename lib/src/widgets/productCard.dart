import 'package:flutter/material.dart';
import './awaniText.dart';

class ProductCard extends StatelessWidget {
  String image;
  String title;
  String mark;
  double price;
  int star;
  ProductCard(this.image, this.title, this.mark, this.price, this.star);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Center(
                child: Container(
                  width: 94,
                  height: 74,
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
              InkWell(
                child: Image.asset('assets/favorite.png'),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: AwaniText(title, 12, Color.fromRGBO(59, 79, 98, 1), null),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: AwaniText(
                  mark, 15, Color.fromRGBO(59, 79, 98, 1), FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: AwaniText('$price د.ك', 15,
                    Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 15, color: Colors.yellow),
                  Icon(Icons.star, size: 15, color: Colors.yellow),
                  Icon(Icons.star, size: 15, color: Colors.yellow),
                  Icon(Icons.star, size: 15, color: Colors.yellow),
                  Icon(Icons.star,
                      size: 15, color: Color.fromRGBO(239, 243, 250, 1)),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
