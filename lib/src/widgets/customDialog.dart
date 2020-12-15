import 'package:awani_app/src/pages/navBarScreens/bottomNavBar.dart';
import 'package:flutter/material.dart';
import './awaniText.dart';

class CustomDialog extends StatelessWidget {
  String title;
  String description;
  CustomDialog(this.title, this.description);

  builtSizedBox(double height) {
    return SizedBox(
      height: height,
    );
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
    return Container(
        height: 445,
        width: 343,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 64.3),
                  child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              BottomNavBarPage(0))),
                      child: Image.asset("assets/tick.png"))),
            ),
            SizedBox(
              height: 84.6,
            ),
            AwaniText(
                title, 23, Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.only(right: 44, left: 30),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'FFAlamaO',
                  fontSize: 17,
                  color: Color.fromRGBO(177, 185, 192, 1),
                ),
              ),
            ),
          ],
        ));
  }
}
