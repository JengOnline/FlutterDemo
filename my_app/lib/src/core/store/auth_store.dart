// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:shared_preferences/shared_preferences.dart';

class AuthStore {
  final String isLogin = "isLogin";

  Future<void> setIsLogin() async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(isLogin, "token1");
  }

  Future<String?> getIsLogin() async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(isLogin);
  }
}
