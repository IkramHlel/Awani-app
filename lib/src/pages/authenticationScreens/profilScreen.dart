import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import '../../widgets/customDialog.dart';
import '../../blocs/authBloc.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _cityTextController = TextEditingController();

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
        onChanged: (s) {});
  }

  Widget _buildNameTextField() {
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
        controller: _nameTextController,
        onChanged: (s) {});
  }

  Widget _buildCityTextField() {
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
        controller: _cityTextController,
        onChanged: (s) {});
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
        onChanged: (s) {});
  }

  final AuthBloc authBloc = AuthBloc();

  void _submitForm() async {
    await authBloc.createProfil(
        _emailTextController.text,
        _nameTextController.text,
        _cityTextController.text,
        _passwordTextController.text);
    print('succed');
    showDialog(
      context: context,
      builder: (BuildContext context) => CustomDialog('تمت عملية التسجيل بنجاح',
          'لقد سجلت بنجاح في التطبيق يمنك البدء في العمل فيه'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 30.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(top: 50.0, right: 32, left: 333.3),
                child: Image(
                  image: AssetImage('assets/Arrow_simple_rightt.png'),
                ),
              ),
              _buildSizedBox(18),
              Padding(
                padding: EdgeInsets.only(right: 15.0, left: 37),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/RoundRectangle.png')),
                      AwaniText('الملف الشخصي', 25,
                          Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: AwaniText(
                    'اضف معلوماتك', 16, Color.fromRGBO(59, 79, 98, 1), null),
              ),
              _buildSizedBox(19),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: AwaniText('أدخل بريدك الإلكتروني', 15,
                    Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
              ),
              _buildSizedBox(19),
              Container(
                height: 51,
                width: 334,
                child: _buildEmailTextField(),
              ),
              _buildSizedBox(19),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: AwaniText("أدخل اسمك ولقبك", 15,
                    Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
              ),
              _buildSizedBox(19),
              Container(
                height: 51,
                width: 334,
                child: _buildNameTextField(),
              ),
              _buildSizedBox(19),
              AwaniText('المدينة', 15, Color.fromRGBO(59, 79, 98, 1),
                  FontWeight.bold),
              _buildSizedBox(19),
              Container(
                height: 51,
                width: 334,
                child: _buildCityTextField(),
              ),
              _buildSizedBox(19),
              AwaniText(' كلمة المرور', 15, Color.fromRGBO(59, 79, 98, 1),
                  FontWeight.bold),
              _buildSizedBox(19),
              Container(
                height: 51,
                width: 334,
                child: _buildPasswordTextField(),
              ),
              //Widget 8
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 62, right: 46),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 46.0,
                        width: 276.0,
                        child: FlatButton(
                            color: Colors.black,
                            child: AwaniText('ابدأ الاستخدام', 16, Colors.white,
                                FontWeight.bold),
                            onPressed: _submitForm,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                      /*RoundedButton(46.0, 276.0, Colors.black, 'ابدأ الاستخدام',
                          16, Colors.white, onPressedButton),*/
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
