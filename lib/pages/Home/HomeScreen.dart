import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido a esta nueva experiencia del deporte"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 8.0 / 3.0,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.login, size: 24), // Icono para Iniciar Sesión
                    SizedBox(height: 30, width: 10,),
                    Text('Iniciar Sesión'),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.app_registration, size: 24), // Icono para Registro
                    SizedBox(height: 30, width: 10,),
                    Text('Registro'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
