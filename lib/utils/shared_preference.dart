import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../model/User.dart';


saveUser(String u) async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'user';
  prefs.setString(key, u);
}

Future<Users> getUser() async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getString('user');
  if (value == null) {
    return null;
  } else {
    return Users.fromJson(json.decode(value));
  }
}


deleteUser() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.clear();
  return null;
}