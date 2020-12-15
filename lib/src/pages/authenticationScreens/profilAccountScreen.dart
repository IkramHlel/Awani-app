import 'package:awani_app/src/models/user.dart';
import 'package:flutter/material.dart';
import '../../widgets/roundedButton.dart';
import '../../widgets/awaniText.dart';
import '../../blocs/authBloc.dart';
import './profilScreen.dart';

enum LoginStatus { notSignIn, signIn }

class ProfilAccountPage extends StatefulWidget {
  @override
  _ProfilAccountPageState createState() => _ProfilAccountPageState();
}

class _ProfilAccountPageState extends State<ProfilAccountPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username, _password;
  final AuthBloc authBloc = AuthBloc();

  var value;

  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  Widget _buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
        textAlign: TextAlign.right,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none),
          //hintText: 'user@gmail.com',
          hintStyle:
              TextStyle(fontSize: 19, color: Color.fromRGBO(177, 185, 192, 1)),
        ),
        controller: _emailTextController,
        onChanged: (val) {
          _username = val;
          // _formData['email'] = _emailTextController.text;
        });
  }

  Widget _buildPasswordTextField() {
    return TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.remove_red_eye),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none),
          //validator: (val) => val.length < 6 ? 'Password too short.' : null,
          //hintText: '.....',
          hintStyle:
              TextStyle(fontSize: 50, color: Color.fromRGBO(177, 185, 192, 1)),
        ),
        obscureText: true,
        controller: _passwordTextController,
        onChanged: (val) {
          _password = val;
          //_formData['password'] = _passwordTextController.text;
        });
  }

  Widget _buildPasswordConfirmTextField() {
    return TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.remove_red_eye),
          filled: true,
          //border: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none),
          //hintText: '.....',
          hintStyle:
              TextStyle(fontSize: 50, color: Color.fromRGBO(177, 185, 192, 1)),
        ),
        obscureText: true,
        validator: (String value) {
          if (_passwordTextController.text != value) {
            return 'Passwords do not match.';
          }
        },
        onChanged: (s) {});
  }

  Function _navigationProfilScreen() {
    /* Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => ProfilPage()));*/
  }

  void _submitForm() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    Map<String, dynamic> successInformations;
    successInformations = await authBloc.authenticate({
      'email': _emailTextController.text,
      'password': _passwordTextController.text
    });
    //if (successInformations['success']) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => ProfilPage()));
   // }
     /*else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('An error occured!'),
              content: Text(successInformations['message']),
              actions: <Widget>[
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }*/
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.70;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              //width: targetWidth,
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //Widget 1
                    Container(
                      padding:
                          EdgeInsets.only(top: 50.0, right: 32, left: 333.3),
                      child: Image(
                        image: AssetImage('assets/Arrow_simple_rightt.png'),
                      ),
                    ),
                    _buildSizedBox(18),
                    //Widget 2
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: AwaniText('انشاء حساب', 25,
                          Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    ),
                    _buildSizedBox(18),
                    // Widget 3
                    AwaniText('انشاء حساب باستخدام  البريد الاكتروني  ', 16,
                        Color.fromRGBO(59, 79, 98, 1), null),
                    _buildSizedBox(25),
                    //Widget 4
                    AwaniText('البريد الاكتروني', 15,
                        Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    _buildSizedBox(16),
                    //Widget 5
                    Container(
                      height: 51,
                      width: 334,
                      child: _buildEmailTextField(),
                    ),
                    _buildSizedBox(16),
                    AwaniText('أدخل كلمة المرور', 15,
                        Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    _buildSizedBox(16),
                    Container(
                      height: 51,
                      width: 334,
                      child: _buildPasswordTextField(),
                    ),
                    _buildSizedBox(16),
                    AwaniText('تاكيد كلمة المرور', 15,
                        Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    _buildSizedBox(16),
                    Container(
                      height: 51,
                      width: 334,
                      child: _buildPasswordConfirmTextField(),
                    ),
                    //Widget 8
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 29),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RoundedButton(46.0, 276.0, Colors.black,
                                'انشاء حساب', 16, Colors.white, _submitForm),
                            Container(
                              padding: EdgeInsets.only(top: 15.0),
                              child: AwaniText(
                                  'بالنقر فوق ابدأ ، فإنك توافق على',
                                  15,
                                  Color.fromRGBO(96, 101, 121, 1),
                                  null),
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
        ),
      ),
    );
  }
}
