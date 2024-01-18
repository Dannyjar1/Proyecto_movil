import 'package:flutter/material.dart';
import 'package:proyecto_movil/pages/Home/homeform.dart';
import 'package:proyecto_movil/pages/Login/loginform.dart';
import 'package:proyecto_movil/pages/Register/registerform.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => homeform(),
    login: (context) => loginform(),
    register: (context) => registerform(),
  };
}
