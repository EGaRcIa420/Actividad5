import 'package:flutter/material.dart';
import 'package:flutter_application_proteccion_animales/presentation/screens/second_page.dart';
import 'package:flutter_application_proteccion_animales/widgets/menuApp.dart';
import 'package:flutter_application_proteccion_animales/widgets/menuDrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppbar(),
      drawer: MenuDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset('assets/img/mapache.jpg', width: 1400, height: 250,),
                  const Text(
                    'Protección Animales', 
                    style: TextStyle(
                      fontSize: 25, 
                      fontFamily: 'Preahvihear',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Explora la protección animal con nuestra aplicación, centrada en el bienestar y conservación de especies en peligro. Ofrecemos información vital, recursos para la acción y reportes de abuso. Eleva la conciencia y toma medidas concretas para la seguridad de animales y sus hábitats.',
                      style: TextStyle(
                        fontSize: 16, 
                        fontFamily: 'Preahvihear',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SecondPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_forward, size: 30),
                label: const Text(
                  'Siguiente',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
