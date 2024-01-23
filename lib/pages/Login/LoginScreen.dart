// import 'package:flutter/material.dart';

// class loginform extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<loginform> {
//   TextEditingController _usernameController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Inicio de Sesión'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 'https://img.freepik.com/foto-gratis/estadio-futbol-noche-generativo-ai_260559-480.jpg?w=360&t=st=1705541815~exp=1705542415~hmac=07c4110ca8043a7e413495ceabf973ae77b58df339bfec4c172d56de67e4191f'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: _usernameController,
//                 decoration: InputDecoration(
//                   labelText: 'Usuario',
//                   filled: true,
//                   fillColor: Colors.white.withOpacity(0.7),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Contraseña',
//                   filled: true,
//                   fillColor: Colors.white.withOpacity(0.7),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // Agrega tu lógica de autenticación aquí
//                   String username = _usernameController.text;
//                   String password = _passwordController.text;

//                   // Verificación básica (¡No lo uses en producción!)
//                   if (username == 'usuario' && password == 'contrasena') {
//                     print('Inicio de sesión exitoso');
//                   } else {
//                     print('Error de inicio de sesión');
//                   }
//                 },
//                 child: Text('Iniciar Sesión'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/foto-gratis/estadio-futbol-noche-generativo-ai_260559-480.jpg?w=360&t=st=1705541815~exp=1705542415~hmac=07c4110ca8043a7e413495ceabf973ae77b58df339bfec4c172d56de67e4191f'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: Colors.white.withOpacity(0.7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white.withOpacity(0.7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              icon: Icon(Icons.email),
              label: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Handle login logic
              },
            ),
            SizedBox(height: 20),
            TextButton(
              child: Text('¿No tienes cuenta? Regístrate aquí'),
              onPressed: () {
                // Navegar a la pantalla de registro
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // IconButton(
                //   icon: Image.asset('assets/facebook_logo.png'), // Reemplaza con la URL del logo de Facebook
                //   onPressed: () {
                //     // Handle Facebook login logic
                //   },
                // ),
                // SizedBox(width: 20),
                // IconButton(
                //   icon: Image.asset('assets/google_logo.png'), // Reemplaza con la URL del logo de Google
                //   onPressed: () {
                //     // Handle Google login logic
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
