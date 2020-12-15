import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/user.dart';

class AuthService {
  User _authenticatedUser;

  Future<Map<String, dynamic>> authenticate(
      String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };
    http.Response response;
    response = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCf6L6onMamuRvGpPRNYm9LQzZrt8TBfDk',
      body: json.encode(authData),
      headers: {'Content-Type': 'application/json'},
    );

    final Map<String, dynamic> responseData = json.decode(response.body);
    bool hasError = true;
    String message = 'Something went wrong';
    if (responseData.containsKey('idToken')) {
      hasError = false;
      message = 'Authentication succeeded!';
      _authenticatedUser = User(id: responseData['localId'], email: email);
    } else if (responseData['error']['message'] == 'EMAIL_NOT_FOUND') {
      message = 'This email was not found';
    } else if (responseData['error']['message'] == 'INVALID_PASSWORD') {
      message = 'the password is invalid';
    } else if (responseData['error']['message'] == 'EMAIL-EXISTS') {
      message = 'This email already exists';
    }
    return {'success': !hasError, 'message': message};
  }

  Future<void> createAccount(String cityName, String userPhone) async {
    http.Response response;
    const url = 'https://awaniapp-141a0.firebaseio.com/users.json';
    response = await http.post(
      url,
      body: json.encode({'country': cityName, 'numPhone': userPhone}),
      headers: {'Content-Type': 'application/json'},
    );
    //final Map<String, dynamic> responseData = json.decode(response.body);
  }

  Future<void> createProfil(String userEmail, String userName, String userCity,
      String userPassword) async {
    http.Response response;
    const url = 'https://awaniapp-141a0.firebaseio.com/UserProfil.json';
    response = await http.post(
      url,
      body: json.encode({
        'email': userEmail,
        'name': userName,
        'city': userCity,
        'password': userPassword
      }),
      headers: {'Content-Type': 'application/json'},
    );
    //final Map<String, dynamic> responseData = json.decode(response.body);
  }
}
