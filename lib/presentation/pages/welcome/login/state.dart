import 'package:flutter/material.dart';

class LoginState {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginState init() {
    return LoginState();
  }

  LoginState clone() {
    return LoginState();
  }
}
