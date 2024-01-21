// import 'package:flutter/material.dart';

// class canchasform extends StatelessWidget {
//   final List<String> canchas = [
//     'Gol de oro',
//     'Calva y Calva',
//     'Punto de Encuentro',
//     'Don Rafa',
//     'Champions',
//     'Cortita y al Pié',
//     'Balón de Fuego',
//     'Cancha de Ingenieros',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Canchas'),
//         backgroundColor: Colors.transparent,
//         elevation: 0, // Elimina la sombra debajo del AppBar
//       ),
//       extendBodyBehindAppBar: true, // El body se extiende detrás del AppBar
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('path/to/your/background_image.jpg'), // Reemplaza con tu imagen de fondo
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: ListView.builder(
//           itemCount: canchas.length,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//               child: ListTile(
//                 title: Text(canchas[index]),
//                 onTap: () {
//                   // Acción al tocar cada cancha
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';

class CanchasScreen extends StatelessWidget {
  final List<String> canchas = [
    'Gol de oro',
    'Calva y Calva',
    'Punto de Encuentro',
    'Don Rafa',
    'Champions',
    'Cortita y al Pié',
    'Balón de Fuego',
    'Cancha de Ingenieros',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canchas'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/foto-gratis/estadio-futbol-noche-generativo-ai_260559-480.jpg?w=360&t=st=1705541815~exp=1705542415~hmac=07c4110ca8043a7e413495ceabf973ae77b58df339bfec4c172d56de67e4191f'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: canchas.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  canchas[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Handle the tap event for each cancha
                },
              ),
            );
          },
        ),
      ),
    );
  }
}