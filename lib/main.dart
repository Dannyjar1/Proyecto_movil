import 'package:flutter/material.dart';
import 'package:proyecto_movil/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Puedes personalizar el tema de tu aplicación aquí
      ),
      initialRoute: Routes.register,
      routes: Routes.routes,
    );
  }
}
