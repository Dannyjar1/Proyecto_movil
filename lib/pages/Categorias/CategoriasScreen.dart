// import 'package:flutter/material.dart';

// class homeform extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Categorías'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 'https://img.freepik.com/foto-gratis/estadio-futbol-noche-generativo-ai_260559-480.jpg?w=360&t=st=1705541815~exp=1705542415~hmac=07c4110ca8043a7e413495ceabf973ae77b58df339bfec4c172d56de67e4191f'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Canchas Disponibles:',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   buildCategoryCard('Fútbol'),
//                   buildCategoryCard('Baloncesto'),
//                   buildCategoryCard('Ecuavóley'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryCard(String categoryName) {
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: ListTile(
//         title: Text(
//           categoryName,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         onTap: () {
//           // Aquí puedes agregar la lógica para la categoría seleccionada
//           print('Seleccionaste la categoría: $categoryName');
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';



class CategoriasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
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
        child: GridView.count(
          padding: EdgeInsets.only(top: 100),
          crossAxisCount: 1,
          childAspectRatio: 4,
          children: <Widget>[
            CategoryCard(
              title: 'Cancha de futbol',
              imageUrl: 'assets/soccer_field.png', // Replace with your actual asset path
            ),
            CategoryCard(
              title: 'Cancha de basket',
              imageUrl: 'assets/basketball_court.png', // Replace with your actual asset path
            ),
            CategoryCard(
              title: 'Cancha de ecuavoly',
              imageUrl: 'assets/volleyball_court.png', // Replace with your actual asset path
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageUrl, height: 100),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
