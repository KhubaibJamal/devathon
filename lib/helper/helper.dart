import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  // set user email
  static Future setUserEmail(String email) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('email', email);
  }

  // set user password
  static Future setUserPassword(String password) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('password', password);
  }

  // get user email
  static Future<String?> getUserEmail() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('email');
  }

  // get user email
  static Future<String?> getUserPassword() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('password');
  }

  // remove current user
  static Future removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.clear();
  }
}
