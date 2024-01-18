import 'package:flutter/material.dart';
import 'package:proyecto_movil/routes/routes.dart';

class registerform extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<registerform> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _idCardController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/foto-gratis/estadio-futbol-noche-generativo-ai_260559-480.jpg?w=360&t=st=1705541815~exp=1705542415~hmac=07c4110ca8043a7e413495ceabf973ae77b58df339bfec4c172d56de67e4191f'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Apellido',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _idCardController,
                decoration: InputDecoration(
                  labelText: 'Cédula',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Agrega tu lógica de registro aquí
                  String firstName = _firstNameController.text;
                  String lastName = _lastNameController.text;
                  String email = _emailController.text;
                  String idCard = _idCardController.text;
                  String password = _passwordController.text;

                  // Ejemplo: imprimir los datos del usuario registrado
                  print('Nombre: $firstName');
                  print('Apellido: $lastName');
                  print('Correo: $email');
                  print('Cédula: $idCard');
                  print('Contraseña: $password');
                },
                child: Text('Registrarse'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navegar a la pantalla de inicio de sesión al hacer clic en el botón
                  Navigator.pushNamed(context, Routes.login);
                },
                child: Text('¿Ya tienes cuenta? Ingresa aquí'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}