import 'package:awani_app/src/pages/authenticationScreens/profilAccountScreen.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import '../../widgets/roundedButton.dart';

class VerifPage extends StatefulWidget {
  @override
  _VerifPageState createState() => _VerifPageState();
}

class _VerifPageState extends State<VerifPage> {
  Container _buildTextField() {
    return Container(
        width: 40.0,
        height: 40.0,
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
          ),
        ));
  }

  Function _navigationProfilAccount() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => ProfilAccountPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, right: 32, left: 333.3),
            child: Image(
              image: AssetImage('assets/Arrow_simple_rightt.png'),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: AwaniText(
                'التحقق', 25, Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
          ),

          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.only(right: 40.0),
            child: AwaniText('أدخل الرمز المكون من 4 أرقام المرسل اليك', 16,
                Color.fromRGBO(59, 79, 98, 1), null),
          ),
          SizedBox(
            height: 18.8,
          ),
          Container(
            padding: EdgeInsets.only(left: 117, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTextField(),
                _buildTextField(),
                _buildTextField(),
                _buildTextField()
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: AwaniText('إعادة ارسال الرمز في 00:30', 15,
                Color.fromRGBO(96, 101, 121, 1), FontWeight.bold),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 74, right: 66),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RoundedButton(46.0, 276.0, Colors.black, 'التالي', 16,
                      Colors.white, _navigationProfilAccount),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
