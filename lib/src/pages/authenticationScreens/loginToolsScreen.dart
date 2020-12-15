import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';

class LoginToolsPage extends StatefulWidget {
  @override
  _LoginToolsPageState createState() => _LoginToolsPageState();
}

class _LoginToolsPageState extends State<LoginToolsPage> {
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
                        Container(
                          height: 46.0,
                          width: 276.0,
                          child: FlatButton(
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AwaniText("تسجل الدخول عبر الايميل  ", 16,
                                      Colors.white, FontWeight.bold),
                                  Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 46.0,
                          width: 276.0,
                          child: FlatButton(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    AwaniText("تسجل الدخول عبر الهاتف ", 16,
                                        Colors.black, FontWeight.bold),
                                    Icon(Icons.phone_android)
                                  ]),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 46.0,
                          width: 276.0,
                          child: FlatButton(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AwaniText("تسجل الدخول عبر تويتر ", 16,
                                      Colors.black, FontWeight.bold),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image(
                                        image:
                                            AssetImage('assets/twitter.png')),
                                  )
                                ],
                              ),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                      ]),
                ),
              ),
            ]),
      ),
    );
  }
}
