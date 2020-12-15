import 'package:flutter/material.dart';
import './awaniText.dart';
class ItemProductList extends StatefulWidget {
  String title;
  String desc;
  String image;
  int price;
  ItemProductList(String title, String desc, String image, int price);
  @override
  _ItemProductListState createState() => _ItemProductListState();
}

class _ItemProductListState extends State<ItemProductList> {
   int _n = 2;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  Widget _counterBuild() {
    return Container(
      width: 60,
      height: 25,
      color: Color.fromRGBO(224, 233, 245, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 20,
            width: 20,
            margin: EdgeInsets.only(left: 2),
            child: InkWell(
              child: Image.asset('assets/ArrowCopie.png'),
              onTap: minus,
              //shape: RoundedRectangleBorder(
              // side: BorderSide(color: Colors.white),
              // borderRadius: BorderRadius.circular(2.0))
            ),
          ),
          Text('$_n', style: new TextStyle(fontSize: 14.0)),
          Container(
            color: Colors.white,
            height: 20,
            width: 20,
            margin: EdgeInsets.only(right: 2),
            child: InkWell(
              child: Image.asset('assets/Arrow.png'),
              onTap: add,
              //shape: RoundedRectangleBorder(
              //  side: BorderSide(color: Colors.white),
              // borderRadius: BorderRadius.circular(2.0)),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Container(
              height: 110,
              width: 245,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 16),
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: AwaniText(widget.title, 15,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AwaniText(
                        widget.desc, 14, Color.fromRGBO(59, 79, 98, 1), null),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/remove.png'),
                        _counterBuild()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(4)),
            child: Container(
              height: 130,
              width: 130,
              color: Color.fromRGBO(224, 233, 245, 1),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Center(child: Image.asset(widget.image)),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(28)),
                    child: Container(
                        width: 70,
                        height: 25,
                        color: Color.fromRGBO(153, 0, 94, 1),
                        child: AwaniText(
                            '${widget.price} د.ك', 16, Colors.white, FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
