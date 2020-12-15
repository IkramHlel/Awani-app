import 'dart:developer';

import 'package:awani_app/src/widgets/awaniText.dart';
import 'package:awani_app/src/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import '../../../widgets/counter.dart';
import '../../../widgets/itemProductList.dart';

class PayingPage extends StatefulWidget {
  @override
  _PayingPageState createState() => _PayingPageState();
}

class _PayingPageState extends State<PayingPage> {
  final TextEditingController _codeTextController = TextEditingController();

  Widget _buildTextField(String hintText) {
    return TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(177, 185, 192, 1),
            fontFamily: 'FFAlamaO',
          ),
        ),
        //controller: _codeTextController,
        onChanged: (s) {});
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
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                                  child: Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(59, 79, 98, 1),
                    size: 30,
                  ),
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
                            child: Image.asset('assets/tick.png'),
                          ),
                          borderColor: Colors.transparent,
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
                            child: Image.asset('assets/tick.png'),
                          ),
                          borderColor: Colors.transparent,
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
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: AwaniText('طرق الدفع', 18,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: AwaniText('اسم صاحب البطاقة', 18,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: _buildTextField(''),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: AwaniText('رقم البطاقة', 18,
                            Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: _buildTextField(''),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 180,
                              child: AwaniText(
                                  'الرمز',
                                  18,
                                  Color.fromRGBO(59, 79, 98, 1),
                                  FontWeight.bold),
                            ),
                            Container(
                              width: 180,
                              child: AwaniText(
                                  'انتهاء الصلاحية',
                                  18,
                                  Color.fromRGBO(59, 79, 98, 1),
                                  FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                width: 180, child: _buildTextField('...')),
                            Container(
                                width: 180, child: _buildTextField('20-01')),
                          ],
                        ),
                      ),
                      Padding(
                      padding: EdgeInsets.only(top: 16, right: 16, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: AwaniText('حفظ طريقة الدفع', 16,
                                Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                          ),
                          Image.asset('assets/switchsmalloff.png'),
                        ],
                      ),
                    ),
                    Center(
                      child: RoundedButton(
                          46.0,
                          276.0,
                          Color.fromRGBO(153, 0, 94, 1),
                          'التالي',
                          16,
                          Colors.white,
                          null),
                    ),
                    ],
                  )),
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
