import 'package:awani_app/src/pages/sizeConfig.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import './secondMainScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class FirstMainPage extends StatefulWidget {
  @override
  _FirstMainPageState createState() => _FirstMainPageState();
}

class _FirstMainPageState extends State<FirstMainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future sett()async {
      http.Response response;
    const url = 'https://awaniapp-141a0.firebaseio.com/Products.json';
    response = await http.post(
      url,
      body: json.encode({
        'image': 'assets/plat.png',
        'type': 'أواني الطعام',
        'quantity': '350'
      }),
      headers: {'Content-Type': 'application/json'},
    );
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);
    }
  }
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
        body: SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.67,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/Tableware2.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 3.1 * SizeConfig.heightMultiplier,
          ),
          Container(
            padding: EdgeInsets.only(
                right: 8.5 * SizeConfig.imageSizeMultiplier,
                left: 69.5 * SizeConfig.imageSizeMultiplier),
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SecondMainPage())),
                          child: Image.asset(
                'assets/suiv.png',
              ),
            ),
          ),
          SizedBox(
            height: 3.1 * SizeConfig.heightMultiplier,
          ),
          Container(
            padding: EdgeInsets.only(
                right: 6.3 * SizeConfig.imageSizeMultiplier,
                left: 5.6 * SizeConfig.imageSizeMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: AwaniText(
                      'متخصصون في بيع الاواني المنزلية',
                      2.75 * SizeConfig.textMultiplier,
                      Color.fromRGBO(59, 79, 98, 1),
                      null),
                ),
                SizedBox(
                  height: 2.5 * SizeConfig.heightMultiplier,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: AwaniText(
                      'والاكسسوارات',
                      2.75 * SizeConfig.textMultiplier,
                      Color.fromRGBO(59, 79, 98, 1),
                      null),
                ),
                SizedBox(
                  height: 2.5 * SizeConfig.heightMultiplier,
                ),
                Image.asset(
                  'assets/points1.png',
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
