import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  static const String isLogin="isloggedin";
  static const String emailkey="email";

  Future<void> saveuser({required String email}) async {
    final pref=await SharedPreferences.getInstance();
    pref.setString(emailkey, email);
    pref.setBool(isLogin, true);
  }

  Future<bool?> isLoggedIN() async {
    final pref=await SharedPreferences.getInstance();
    if(pref.containsKey(isLogin)){
      return await pref.getBool(isLogin);
    }
    return false;
  }

  Future<String?> getEmail() async {
    final pref=await SharedPreferences.getInstance();
    if(pref.containsKey(emailkey)){
      return pref.getString(emailkey);
    }
  }
  Future<void> logout() async {
    final pref=await SharedPreferences.getInstance();
    pref.clear();
  }
}