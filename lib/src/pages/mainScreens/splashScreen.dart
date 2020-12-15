import 'package:flutter/material.dart';
import 'dart:async';
import './firstMainScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {    
    super.initState();

    _checkFroSession().then((status) {
      if (status) {
        _navigationFirstMain();
      } else {
        null;
      }
    });
  }

  Future<bool> _checkFroSession() async {
    await Future.delayed(Duration(seconds: 4), () {});
    return true;
  }

  void _navigationFirstMain() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => FirstMainPage()));
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
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 259, right: 101.1, left: 132),
              child: Container(
                height: 223.3,
                width: 141.9,
                child: Image.asset('assets/logo.png'),
              ),
            ),
            //Expanded(flex:4, child: Image.asset('assets/loading.png')),
            Positioned(
              bottom: 170,
              right: 185,
              child: Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromRGBO(153, 0, 94, 1)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
