import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class AuthService {

  Future<String> getAuthToken() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final authToken = sp.getString('auth_token') ?? "";
    return authToken;
  }

  Future<bool> isAuthRequired() async {
    return false;
  }

  Future<bool> login({@required String username, @required String password}) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('auth_token', 'test');
    return true;
  }

  Future<bool> logout() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('auth_token');
    return true;
  }

}
