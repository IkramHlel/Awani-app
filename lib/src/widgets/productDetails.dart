import 'package:awani_app/src/pages/navBarScreens/ShoppingScreens/basketPage.dart';
import 'package:awani_app/src/pages/navBarScreens/bottomNavBar.dart';
import 'package:awani_app/src/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'productDescription.dart';

class ProductDetails extends StatefulWidget {
  String image;
  String title;
  String description;
  String desc;
  int price;
  int quantity;

  ProductDetails(
      this.title, this.image, this.desc, this.description, this.price);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  builtSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Function _navigationBasket() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => BottomNavBarPage(2)));
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 50),
      //width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Center(
                  child: Container(
                    child: Image.asset(
                      widget.image,
                    ),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Image.asset('assets/favoriteMoy.png'),
                )
              ],
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(3),
                    child: Image.asset('assets/ikea1.png')),
                Container(
                    margin: EdgeInsets.all(3),
                    child: Image.asset('assets/ikea2.png')),
                Container(
                    margin: EdgeInsets.all(3),
                    child: Image.asset('assets/ikea3.png')),
                Container(
                    margin: EdgeInsets.all(3),
                    child: Image.asset('assets/ikea4.png')),
              ],
            ),
          ),
          ProductDescription(
              widget.title,
              'قدر مع غطاء، ستينلس ستيل 5 ل',
              'متعة الطعام تستمر مع أواني الطبخ +IKEA 365 ستينلس ستيل حيث توزع الحرارة بانتظام على جميع السطح',
              150),
          SizedBox(height: 20),
          RoundedButton(46, 276, Color.fromRGBO(153, 0, 94, 1),
              'اضف الى سلة التسوق', 16, Colors.white, _navigationBasket),
        ],
      ),
    );
  }
}
