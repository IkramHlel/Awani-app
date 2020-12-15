import 'dart:async';

import '../services/authService.dart';

class AuthBloc {
  AuthService authService = AuthService();
  Map<String, dynamic> userLoginResult;

  Future<Map<String, dynamic>> authenticate(Map<String, String> user) async {
    userLoginResult =
        await authService.authenticate(user['email'], user['password']);
    return userLoginResult;
  }

  Future<void> createAccount(String cityName, String userPhone) async {
    await authService.createAccount(cityName, userPhone);
  }

  Future<void> createProfil(String userEmail, String userName, String userCity,
      String userPassword) async {
    await authService.createProfil(userEmail, userName, userCity, userPassword);
  }

  logout() {
    userLoginResult = null;
  }

  void dispose() {
    // _userName.close();
    //_password.close();
  }
}
