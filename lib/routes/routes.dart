import 'package:flutter/material.dart';
import 'package:proyecto_movil/pages/Categorias/CategoriasScreen.dart';
import 'package:proyecto_movil/pages/Login/LoginScreen.dart';
import 'package:proyecto_movil/pages/Signup/SignupScreen.dart';
import 'package:proyecto_movil/pages/Home/HomeScreen.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    login: (context) => LoginScreen(),
    register: (context) => SignupScreen(),
  };
}
