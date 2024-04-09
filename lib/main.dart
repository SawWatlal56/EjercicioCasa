import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/button2.dart';
import 'package:flutter_application_1/button3.dart';
import 'package:flutter_application_1/button4.dart';

void main() {
  runApp(const MyApp(
    home: Actividades(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required Actividades home}); //para qué es

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 4, 3, 61),
        brightness: Brightness.light,
      ),
      home: const Actividades(),
    );
  }
}

class Actividades extends StatelessWidget {
  const Actividades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: AppBar(
          title: const Text('Actividades'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(padding: EdgeInsets.all(20.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime[900],
                    // fixedSize: const Size(150, 150),
                  ),
                  child: const Text(
                    'Actividad en casa',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () {
                    //Ir a la segunda pantalla
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejercicios()));
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime[900],
                  ),
                  child: const Text(
                    'Gimnasio de pesas',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () {
                    //Ir a la segunda pantalla
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejercicios2()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(padding: EdgeInsets.all(20.0)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime[900],
                    // fixedSize: const Size(150, 150),
                  ),
                  child: const Text(
                    'Caminar, correr, trotar',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () {
                    //Ir a la segunda pantalla
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejercicios3()));
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime[900],
                  ),
                  child: const Text(
                    'Deporte',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () {
                    //Ir a la segunda pantalla
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejercicios4()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
