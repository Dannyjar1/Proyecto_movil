import 'package:flutter/material.dart';



class Cancha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punto de Encuentro'),
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
        child: Column(
          children: <Widget>[
            SizedBox(height: 80), // Padding for AppBar
            InformationCard(), // Custom widget for the information card
            Expanded(
              child: ListView(
                children: <Widget>[
                  OptionItem(title: 'Reservas'),
                  OptionItem(title: 'Chat'),
                  OptionItem(title: 'Contactos'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Image.network(
              'URL_OF_YOUR_IMAGE',
              height: 100, // Set your height
              width: double.infinity, // Set to match parent width
              fit: BoxFit.cover,
            ),
            Text(
              'Complejo Deportivo "Punto de Encuentro" Canchas Sintética',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            // Additional information here
          ],
        ),
      ),
    );
  }
}

class OptionItem extends StatelessWidget {
  final String title;

  OptionItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          // Handle onTap
        },
      ),
    );
  }
}
