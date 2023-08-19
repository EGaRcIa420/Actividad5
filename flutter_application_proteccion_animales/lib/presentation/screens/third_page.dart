import 'package:flutter/material.dart';
import 'package:flutter_application_proteccion_animales/widgets/menuApp.dart';
import 'package:flutter_application_proteccion_animales/widgets/menuDrawer.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppbar(),
      drawer: MenuDrawer(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), 
              Image.asset(
                'assets/img/2d.jpg',
                width: 800, 
                height: 240, 
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20),
              Text(
                'Animales',
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'Preahvihear',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Especie',
                    style: TextStyle(
                      color: Color.fromARGB(255, 43, 42, 42),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Borel',
                    ),
                  ),
                  Text(
                    'Distancia',
                    style: TextStyle(
                      color: Color.fromARGB(255, 64, 65, 73),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Borel',
                    ),
                  ),
                ],
              ),
              _buildAnimalRow('assets/img/monkey.png', 'Monito', '1.5km'),
              _buildAnimalRow('assets/img/zarigueya.png', 'Zarigueya', '2.5km'),
              _buildAnimalRow('assets/img/topo.png', 'Topo', '4.5km'),
              _buildAnimalRow('assets/img/fox.png', 'Zorro', '0.5km'),
              _buildAnimalRow('assets/img/mapacheR.png', 'Mapache', '2km'),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, size: 30),
                label: Text(
                  'Anterior',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimalRow(String imageAsset, String species, String distance) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imageAsset,
          width: 80, 
          height: 80, 
          fit: BoxFit.contain,
        ),
        Text(
          species,
          style: TextStyle(
            color: Color.fromARGB(255, 43, 42, 42),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Borel',
          ),
        ),
        Text(
          distance,
          style: TextStyle(
            color: Color.fromARGB(255, 64, 65, 73),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Borel',
          ),
        ),
      ],
    );
  }
}
