import 'package:flutter/material.dart';
import 'package:proyecto_movil/pages/Home/homeform.dart';
import 'package:proyecto_movil/pages/Login/loginform.dart';
import 'package:proyecto_movil/pages/Register/registerform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: registerform(),
    );
  }
}