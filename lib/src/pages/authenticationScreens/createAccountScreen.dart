import 'package:awani_app/src/pages/authenticationScreens/verifScreen.dart';
import 'package:awani_app/src/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import '../../blocs/authBloc.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController _userPhoneController = TextEditingController();
  int _valueCity = 1;
  String _cityName;
  int _valueNum = 1;

  List<String> _cityList = ['', 'قطر', 'الكويت'];
  List<String> _usersPhoneList = ['', '+965', '+974'];
  final AuthBloc authBloc = AuthBloc();

  Widget _builUserPhoneTextField() {
    return TextField(
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      controller: _userPhoneController,
      decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          hintText: '456098234875',
          hintStyle:
              TextStyle(fontSize: 19, color: Color.fromRGBO(177, 185, 192, 1))),
    );
  }

  Widget _dropDownCountry() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
          ),
          isExpanded: true,
          value: _valueCity,
          items: [
            DropdownMenuItem(
              child: Row(
                children: [
                  Expanded(
                    child: AwaniText(
                        'الكويت', 17, Color.fromRGBO(177, 185, 192, 1), null),
                  ),
                  Text(
                    '| ',
                    style: TextStyle(
                        color: Color.fromRGBO(177, 185, 192, 0.5),
                        fontSize: 30),
                  ),
                  Image(image: AssetImage('assets/kuwait.png')),
                ],
              ),
              value: 1,
            ),
            DropdownMenuItem(
              child: Row(
                children: [
                  Expanded(
                    child: AwaniText(
                        'قطر', 17, Color.fromRGBO(177, 185, 192, 1), null),
                  ),
                  Text(
                    '| ',
                    style: TextStyle(
                        color: Color.fromRGBO(177, 185, 192, 0.5),
                        fontSize: 35),
                  ),
                  Image(image: AssetImage('assets/qatar-flag.png')),
                ],
              ),
              value: 2,
            ),
          ],
          onChanged: (value) {
            setState(() {
              _valueCity = value;
            });
          }),
    );
  }

  void _submitForm() async {
    String _userPhone =
        _usersPhoneList[_valueNum] + ' ' + _userPhoneController.text;

    //if (_userPhoneController != null ) {
      //await authBloc.createAccount(_cityList[_valueCity], _userPhone);
      print('succed');
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => VerifPage()));
   // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
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
                AwaniText('انشاء حساب', 25, Color.fromRGBO(59, 79, 98, 1),
                    FontWeight.bold),
                SizedBox(
                  height: 18,
                ),
                AwaniText('أدخل رقم هاتفك المحمول ، وسوف نرسل لك كود للتحقق',
                    16, Color.fromRGBO(59, 79, 98, 1), null),
                AwaniText('لاحقًا', 16, Color.fromRGBO(59, 79, 98, 1), null),
                SizedBox(
                  height: 18.8,
                ),
                AwaniText('اختر بلدك', 15, Color.fromRGBO(59, 79, 98, 1),
                    FontWeight.bold),
                SizedBox(
                  height: 14,
                ),
                Container(height: 51, width: 323, child: _dropDownCountry()),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: AwaniText('أدخل رقم هاتفك', 15,
                      Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  height: 51,
                  width: 323,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                filled: true,
                                //fillColor: Color.fromRGBO(247, 249, 252, 1),
                                border: InputBorder.none,
                              ),
                              value: _valueNum,
                              items: [
                                DropdownMenuItem(
                                  child: AwaniText('| +965', 20,
                                      Color.fromRGBO(177, 185, 192, 1), null),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: AwaniText('| +974', 20,
                                      Color.fromRGBO(177, 185, 192, 1), null),
                                  value: 2,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _valueNum = value;
                                });
                              }),
                        ),
                      ),
                      Expanded(flex: 2, child: _builUserPhoneTextField())
                    ],
                  ),
                ),
                //Widget 8
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 29),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RoundedButton(46.0, 276.0, Colors.black, 'التالي', 16,
                            Colors.white, _submitForm),
                        Container(
                          padding: EdgeInsets.only(top: 15.0),
                          child: AwaniText('بالنقر فوق ابدأ ، فإنك توافق على',
                              15, Color.fromRGBO(96, 101, 121, 1), null),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            'السياسة الخصوصية وشروطها',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'FFAlamaO',
                              fontSize: 15,
                              color: Color.fromRGBO(96, 101, 121, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
