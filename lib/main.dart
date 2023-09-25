//import 'package:flutter/foundation.dart';
import 'package:aplicacion_reporte1/Practica2309/ejemploFuture.dart';
//import 'package:aplicacion_reporte1/src/screen/contactos_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){ //SE VISUALIZA EL CONTENIDO
    return MaterialApp(
      home: const EjemploFuture(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer ejercicio'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;
  Color foco = Colors.amber;
  String mensaje = "Hola mundo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio - GOMEZ GARCIA PAOLA')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Valor de contador', style: TextStyle(fontSize: 35, color: Colors.blue),),
            Text(cont.toString(), style: const TextStyle(fontSize: 50, color: Colors.red),),
            Icon(
              Icons.lightbulb,
              color: foco,
              size: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cont++;
            if (foco== Colors.amber){
              foco= Colors.black;
            }
           else{
              foco = Colors.amber;
            }
            if(cont >= 5){
              foco = Colors.red;
            }
          });
          
        },
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}
