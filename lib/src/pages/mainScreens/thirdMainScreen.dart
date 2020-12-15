import 'package:awani_app/src/pages/authenticationScreens/loginScreen.dart';
import 'package:awani_app/src/pages/sizeConfig.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';

class ThirdMainPage extends StatefulWidget {
  @override
  _ThirdMainPageState createState() => _ThirdMainPageState();
}

class _ThirdMainPageState extends State<ThirdMainPage> {
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
              'assets/SoupBowl.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 3.1 * SizeConfig.heightMultiplier,
          ),
          Container(
            //padding: EdgeInsets.only(right: 35, left:285),
            padding: EdgeInsets.only(
                right: 8.5 * SizeConfig.imageSizeMultiplier,
                left: 69.5 * SizeConfig.imageSizeMultiplier),
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage())),
                          child: Image.asset(
                'assets/suiv.png',
              ),
            ),
          ),
          SizedBox(
            height: 3.1 * SizeConfig.heightMultiplier,
          ),
          Container(
            //padding: EdgeInsets.only(right: 26, left: 23),
            padding: EdgeInsets.only(
                right: 6.3 * SizeConfig.imageSizeMultiplier,
                left: 5.6 * SizeConfig.imageSizeMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: AwaniText(
                      'ويضفون الجمال على اطباقك',
                      2.75 * SizeConfig.textMultiplier,
                      Color.fromRGBO(59, 79, 98, 1),
                      null),
                ),
                SizedBox(
                  height: 5 * SizeConfig.heightMultiplier,
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
