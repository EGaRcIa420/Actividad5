import 'package:flutter/material.dart';
import 'package:flutter_application_proteccion_animales/presentation/screens/third_page.dart';
import 'package:flutter_application_proteccion_animales/widgets/menuApp.dart';
import 'package:flutter_application_proteccion_animales/widgets/menuDrawer.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  final List<Map<String, dynamic>> animalesPeligro = [
    {
      'nombre': 'Tigre',
      'habitat': 'Selva tropical',
      'peligro': 'Crítico',
      'imagen': 'assets/img/tigre.jpg',
      'info': 'El tigre de bengala es el felino más grande del mundo y se encuentra en peligro debido a la caza ilegal y la pérdida de hábitat.',
    },
    {
      'nombre': 'Panda',
      'habitat': 'Bosque de bambú',
      'peligro': 'Vulnerable',
      'imagen': 'assets/img/panda.jpg',
      'info': 'El panda gigante se enfrenta a la pérdida de su hábitat natural y la fragmentación de poblaciones, lo que lo hace vulnerable a la extinción.',
    },
    {
      'nombre': 'Leopardo de las nieves',
      'habitat': 'Montañas',
      'peligro': 'En peligro',
      'imagen': 'assets/img/leopardo.jpg',
      'info': 'El leopardo de las nieves sufre la caza ilegal y la disminución de su presa debido a la caza de los animales que comen.',
    },
    {
      'nombre': 'Gorila de montaña',
      'habitat': 'Selva y montañas',
      'peligro': 'En peligro',
      'imagen': 'assets/img/gorila.jpg',
      'info': 'La pérdida de hábitat y la caza furtiva son amenazas para el gorila de montaña, que es uno de los primates más grandes y en peligro de extinción.',
    },
    {
      'nombre': 'Cóndor de California',
      'habitat': 'Montañas y acantilados',
      'peligro': 'En peligro crítico',
      'imagen': 'assets/img/condor.jpg',
      'info': 'La principal amenaza para el cóndor de California es la intoxicación por plomo, que se produce cuando consumen animales cazados con municiones de plomo.',
    },
    {
      'nombre': 'Rinoceronte negro',
      'habitat': 'Sabanas y bosques',
      'peligro': 'En peligro crítico',
      'imagen': 'assets/img/rinoceronte.jpg',
      'info': 'La caza furtiva de sus cuernos, altamente valorados en el mercado negro, ha llevado al rinoceronte negro al borde de la extinción.',
    },
    {
      'nombre': 'Vaquita marina',
      'habitat': 'Golfo de California',
      'peligro': 'En peligro crítico',
      'imagen': 'assets/img/vaquita.jpg',
      'info': 'La vaquita marina se encuentra en peligro crítico debido a la pesca ilegal de una especie de pez llamada totoaba, que también está en peligro.',
    },
    {
      'nombre': 'Canguro arborícola de Goodfellow',
      'habitat': 'Bosques tropicales',
      'peligro': 'En peligro',
      'imagen': 'assets/img/canguro.jpg',
      'info': 'La pérdida de hábitat debido a la deforestación y la caza son amenazas para el canguro arborícola de Goodfellow.',
    },
    {
      'nombre': 'Oso polar',
      'habitat': 'Regiones árticas',
      'peligro': 'Vulnerable',
      'imagen': 'assets/img/oso_polar.jpg',
      'info': 'El calentamiento global y el derretimiento del hielo marino afectan gravemente el hábitat y la capacidad de caza del oso polar.',
    },
    {
      'nombre': 'Cóndor andino',
      'habitat': 'Montañas y desiertos',
      'peligro': 'Casi amenazado',
      'imagen': 'assets/img/condor_andino.jpg',
      'info': 'Aunque su situación es menos crítica que la de otros cóndores, el cóndor andino todavía enfrenta amenazas como la caza y la pérdida de hábitat.',
    },
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppbar(),
      drawer: MenuDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/img/peli.jpg',
                  width: 700,
                  height: 125,
                ),
                const Text(
                  'Animales en peligro',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Preahvihear',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'A continuacion se mostrara una lista con unos cuantos animales que se encuentran en peligro de extinción, su nombre, su habitad y su nivel de peligro.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Preahvihear',
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: animalesPeligro.length,
                itemBuilder: (BuildContext context, int index) {
                  final animal = animalesPeligro[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimalDetallado(animal: animal),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        animal['imagen'],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(animal['nombre'] ?? ''),
                      subtitle: Text(
                        'Hábitat: ${animal['habitat'] ?? ''} - Nivel de riesgo: ${animal['peligro'] ?? ''}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThirdPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_forward, size: 30),
                    label: Text(
                      'Siguiente',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimalDetallado extends StatelessWidget {
  final Map<String, dynamic> animal;

  const AnimalDetallado({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          animal['nombre'] ?? '',
          style: TextStyle(
            color: Color.fromARGB(222, 0, 0, 0),
            fontSize: 26,
            fontFamily: 'Preahvihear',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              animal['imagen'],
              width: 1200,
              height: 400,
            ),
            SizedBox(height: 20),
            Text('Nombre: ${animal['nombre']}'),
            Text('Hábitat: ${animal['habitat']}'),
            Text('Nivel de riesgo: ${animal['peligro']}'),
            SizedBox(height: 10),
            Text('Información:'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                animal['info'] ?? '',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}