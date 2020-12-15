import 'package:awani_app/src/pages/authenticationScreens/createAccountScreen.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import '../../widgets/roundedButton.dart';
import './loginToolsScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Function _navigationTools() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => LoginToolsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/back.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 73, right: 103.1, left: 130),
              child: Container(
                height: 223.3,
                width: 141.9,
                child: Image.asset('assets/logo.png'),
              ),
            ),
            ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)))),
              child: Container(
                height: 377.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedButton(46.0, 276.0, Colors.black, 'سجل الدخول', 16,
                        Colors.white, _navigationTools),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                        width: 225.0,
                        height: 22,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        CreateAccountPage()));
                              },
                              child: AwaniText(
                                  'انشاء حساب جديد',
                                  14,
                                  Color.fromRGBO(153, 0, 94, 1),
                                  FontWeight.bold),
                            ),
                            AwaniText('ليس لديك لحساب؟', 14, Colors.black,
                                FontWeight.bold),
                          ],
                        )),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 46.0,
                      width: 276.0,
                      child: FlatButton(
                          child: AwaniText("الدخول كزائر ", 16, Colors.black,
                              FontWeight.bold),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15.0))),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
