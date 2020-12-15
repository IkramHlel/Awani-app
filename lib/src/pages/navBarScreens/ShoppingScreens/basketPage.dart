import 'dart:developer';

import 'package:awani_app/src/pages/navBarScreens/ShoppingScreens/shippingPage.dart';
import 'package:awani_app/src/widgets/awaniText.dart';
import 'package:awani_app/src/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import '../../../widgets/counter.dart';
import '../../../widgets/itemProductList.dart';

class BasketPage extends StatefulWidget {
  @override
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  final TextEditingController _codeTextController = TextEditingController();

  Widget _buildcodeTextField() {
    return TextField(
        textAlign: TextAlign.right,
        //keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none),
          hintText: 'اضف  كود التخفيض',
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(177, 185, 192, 1),
            fontFamily: 'FFAlamaO',
          ),
        ),
        controller: _codeTextController,
        onChanged: (s) {});
  }

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

  Widget _itemBuild(String title, String desc, String image, int price) {
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
                        child: AwaniText('IKEA365+', 15,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AwaniText('Wgdqtyukjhggh', 14,
                        Color.fromRGBO(59, 79, 98, 1), null),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/remove.png'),
                        //_counterBuild()
                        Container(
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
                        )
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
                  Center(child: Image.asset('assets/ikea.png')),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(28)),
                    child: Container(
                        width: 70,
                        height: 25,
                        color: Color.fromRGBO(153, 0, 94, 1),
                        child: AwaniText(
                            '150 د.ك', 16, Colors.white, FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //List<Widget> _productList = [];

  List<Widget> productList = [
    Container(
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
                        child: AwaniText('IKEA 365+', 15,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AwaniText('قدر مع غطاء،ستينلس ستيل، 5ل', 14,
                        Color.fromRGBO(59, 79, 98, 1), null),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/remove.png'),
                        //_counterBuild()
                        Container(
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
                                  onTap: null,
                                ),
                              ),
                              Text('2', style: new TextStyle(fontSize: 14.0)),
                              Container(
                                color: Colors.white,
                                height: 20,
                                width: 20,
                                margin: EdgeInsets.only(right: 2),
                                child: InkWell(
                                  child: Image.asset('assets/Arrow.png'),
                                  onTap: () {},
                                  //shape: RoundedRectangleBorder(
                                  //  side: BorderSide(color: Colors.white),
                                  // borderRadius: BorderRadius.circular(2.0)),
                                ),
                              ),
                            ],
                          ),
                        )
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
                  Center(child: Image.asset('assets/ikea.png')),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(28)),
                    child: Container(
                        width: 70,
                        height: 25,
                        color: Color.fromRGBO(153, 0, 94, 1),
                        child: AwaniText(
                            '150 د.ك', 16, Colors.white, FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
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
                        child: AwaniText('IKEA 365+', 15,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AwaniText('قدر مع غطاء،ستينلس ستيل، 5ل', 14,
                        Color.fromRGBO(59, 79, 98, 1), null),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/remove.png'),
                        //_counterBuild()
                        Container(
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
                                  onTap: null,
                                ),
                              ),
                              Text('1', style: new TextStyle(fontSize: 14.0)),
                              Container(
                                color: Colors.white,
                                height: 20,
                                width: 20,
                                margin: EdgeInsets.only(right: 2),
                                child: InkWell(
                                  child: Image.asset('assets/Arrow.png'),
                                  onTap: () {},
                                  //shape: RoundedRectangleBorder(
                                  //  side: BorderSide(color: Colors.white),
                                  // borderRadius: BorderRadius.circular(2.0)),
                                ),
                              ),
                            ],
                          ),
                        )
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
                  Center(child: Image.asset('assets/plateau.png')),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(28)),
                    child: Container(
                        width: 70,
                        height: 25,
                        color: Color.fromRGBO(153, 0, 94, 1),
                        child: AwaniText(
                            '50 د.ك', 16, Colors.white, FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  Function _navigationShipping() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => ShippingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0, right: 22),
                child: Icon(
                  Icons.arrow_forward,
                  color: Color.fromRGBO(59, 79, 98, 1),
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 50, left: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleButton(
                          onTap: null,
                          childButton: Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(59, 79, 98, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          borderColor: Color.fromRGBO(59, 79, 98, 1),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color.fromRGBO(59, 79, 98, 1),
                            height: 8,
                            thickness: 3,
                            //indent: 0,
                            //endIndent: 0,
                          ),
                        ),
                        CircleButton(
                          onTap: null,
                          childButton: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(59, 79, 98, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          borderColor: Color.fromRGBO(59, 79, 98, 1),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color.fromRGBO(59, 79, 98, 1),
                            height: 8,
                            thickness: 3,
                            //indent: 8,
                            //endIndent: 0,
                          ),
                        ),
                        CircleButton(
                          onTap: null,
                          childButton: Center(
                            child: Image.asset('assets/tick.png'),
                          ),
                          borderColor: Colors.transparent,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AwaniText(
                              'الدفع', 16, Color.fromRGBO(59, 79, 98, 1), null),
                          AwaniText(
                              'الشحن', 16, Color.fromRGBO(59, 79, 98, 1), null),
                          AwaniText(
                              'السلة', 16, Color.fromRGBO(59, 79, 98, 1), null),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                color: Color.fromRGBO(239, 243, 250, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: productList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return productList[index];
                      },
                    ),
                    Divider(
                      color: Color.fromRGBO(59, 79, 98, 1),
                      height: 8,
                      thickness: 1,
                      indent: 24,
                      endIndent: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16, top: 16),
                      child: AwaniText('كود التخفيض', 16,
                          Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: _buildcodeTextField(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16, top: 16, left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: AwaniText('200 د.ك', 16,
                                Color.fromRGBO(59, 79, 98, 1), null),
                          ),
                          AwaniText('مجموع السلة', 16,
                              Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: RoundedButton(
                          46.0,
                          276.0,
                          Color.fromRGBO(153, 0, 94, 1),
                          'الشحن',
                          16,
                          Colors.white,
                          _navigationShipping),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final Widget childButton;
  final Color borderColor;

  const CircleButton({Key key, this.onTap, this.childButton, this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
          width: size,
          height: size,
          decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: 3, color: borderColor)),
          child: childButton),
    );
  }
}
