//import 'dart:html';

import 'package:awani_app/src/blocs/productBloc.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import '../../widgets/roundedButton.dart';
import '../../widgets/productCard.dart';
import '../../models/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductBloc productBloc = new ProductBloc();
  List<Product> productsResult;
  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future fetch() async {
    productsResult = await productBloc.fetchProduct();
    print(productsResult);
    print(productsResult.length);
  }

  Widget _publicityBuild() {
    return Stack(alignment: Alignment.bottomLeft, children: [
      Container(
        child: Image.asset(
          'assets/forn.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedButton(46.0, 150, Color.fromRGBO(153, 0, 94, 1), 'اشتري الان',
              20, Colors.white, null),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AwaniText('-25%', 40, Colors.white, FontWeight.bold),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: AwaniText(
                      'طبق فرن <<Pyrex>>', 20, Colors.white, FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child:
                          AwaniText('23 يونيو 2020', 16, Colors.white, null)),
                  Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.access_time,
                        color: Colors.white,
                      )),
                ],
              ),
              Row(
                children: [
                  Text(
                    '.',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Text(
                    '.',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Text(
                    '.',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Text(
                    '.',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ],
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(right: 8, top: 56),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4, left: 23),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.notifications, size: 40),
                      Text(
                        ''' هنا,  
تصنع تفاصيل مطبخك''',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FFAlamaO',
                          fontSize: 20,
                          color: Color.fromRGBO(59, 79, 98, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/flesh.png',
                          color: Color.fromRGBO(59, 79, 98, 1),
                        ),
                        Container(
                          width: 311,
                          height: 39,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  filled: true,
                                  border: InputBorder.none,
                                  hintText: 'بحث ',
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(59, 79, 98, 1))),
                            ),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AwaniText(
                          'عرض الكل', 18, Color.fromRGBO(59, 79, 98, 1), null),
                      AwaniText('الأقسام', 20, Color.fromRGBO(59, 79, 98, 1),
                          FontWeight.bold),
                    ],
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 150.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(4, (index){
                        print(productsResult[index].image);
                        Container(
                          width: 120,
                          child: Container(
                              child: Column(children: [
                            Container(
                              //child: Image.asset('assets/bowl.png'),
                              child: Image.asset(productsResult[index].image),
                            ),
                            /*AwaniText('أواني الطهي', 16,
                                      Color.fromRGBO(59, 79, 98, 1), null),*/
                            AwaniText(productsResult[index].type, 16,
                                Color.fromRGBO(59, 79, 98, 1), null),
                            AwaniText('${productsResult[index].quantity} منتجا',
                                14, Color.fromRGBO(59, 79, 98, 1), null),
                          ])),
                        );
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: AwaniText('اعلانات', 20, Color.fromRGBO(59, 79, 98, 1),
                      FontWeight.bold),
                ),
                _publicityBuild(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AwaniText(
                          'عرض الكل', 18, Color.fromRGBO(59, 79, 98, 1), null),
                      AwaniText('منتجات مختارة', 20,
                          Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    color: Color.fromRGBO(239, 243, 250, 1),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      primary: false,
                      padding: const EdgeInsets.all(15),
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: <Widget>[
                        ProductCard('assets/grilla.png', 'مقلاة عميقة مع غطاء',
                            'GRILLA', 15, 4),
                        ProductCard('assets/amsinox.png', 'مصفاة معكرونة، 5 ل',
                            'AMS INOX', 30, 4),
                        ProductCard('assets/ikea.png',
                            'قدر مع غطاء، ستينلس ستيل 5 ل', 'IKEA 365+', 30, 4),
                        ProductCard('assets/kavalkad.png',
                            'قدر بمقبض، طقم من 3. أسود', 'KAVALKAD', 150, 4),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
