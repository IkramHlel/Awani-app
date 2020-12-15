import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  Widget _buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  List<Widget> productList = [
    Column(children: [
      Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                3,
                (index) => Container(
                      height: 170,
                      width: 130,
                      child: Container(
                          child: Column(children: [
                        Container(
                          child: Image.asset('assets/bowl.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: AwaniText('أواني الطهي', 16,
                              Color.fromRGBO(59, 79, 98, 1), null),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: AwaniText('50 منتجا', 14,
                              Color.fromRGBO(59, 79, 98, 1), null),
                        ),
                      ])),
                    )),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Divider(
          color: Color.fromRGBO(59, 79, 98, 1),
          height: 8,
          thickness: 1,
          indent: 8,
          endIndent: 0,
        ),
      ),
    ]),
    Column(children: [
      Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                3,
                (index) => Container(
                      height: 170,
                      width: 130,
                      child: Container(
                          child: Column(children: [
                        Container(
                          child: Image.asset('assets/bowl.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: AwaniText('أواني الطهي', 16,
                              Color.fromRGBO(59, 79, 98, 1), null),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: AwaniText('50 منتجا', 14,
                              Color.fromRGBO(59, 79, 98, 1), null),
                        ),
                      ])),
                    )),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Divider(
          color: Color.fromRGBO(59, 79, 98, 1),
          height: 8,
          thickness: 1,
          indent: 8,
          endIndent: 0,
        ),
      ),
    ]),
    Column(children: [
      Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                3,
                (index) => Container(
                      height: 170,
                      width: 130,
                      child: Container(
                          child: Column(children: [
                        Container(
                          child: Image.asset('assets/bowl.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: AwaniText('أواني الطهي', 16,
                              Color.fromRGBO(59, 79, 98, 1), null),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: AwaniText('50 منتجا', 14,
                              Color.fromRGBO(59, 79, 98, 1), null),
                        ),
                      ])),
                    )),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Divider(
          color: Color.fromRGBO(59, 79, 98, 1),
          height: 8,
          thickness: 1,
          indent: 8,
          endIndent: 0,
        ),
      ),
    ]),
    Column(children: [
      Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 170.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                3,
                (index) => Container(
                      height: 170,
                      width: 130,
                      child: Container(
                        child: Column(children: [
                          Container(
                            child: Image.asset('assets/bowl.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: AwaniText('أواني الطهي', 16,
                                Color.fromRGBO(59, 79, 98, 1), null),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: AwaniText('50 منتجا', 14,
                                Color.fromRGBO(59, 79, 98, 1), null),
                          ),
                        ]),
                      ),
                    )),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Divider(
          color: Color.fromRGBO(59, 79, 98, 1),
          height: 8,
          thickness: 1,
          indent: 8,
          endIndent: 0,
        ),
      ),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Container(
            height: size.height,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 159),
                  child: AwaniText('الاصناف', 20, Color.fromRGBO(59, 79, 98, 1),
                      FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0, right: 22),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(59, 79, 98, 1),
                    size: 30,
                  ),
                ),
              ]),
              _buildSizedBox(20),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: productList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(child: productList[index]);
                  },
                ),
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
