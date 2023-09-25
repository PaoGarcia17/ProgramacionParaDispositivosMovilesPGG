//import 'package:aplicacion_reporte1/src/models/persona.dart';
import 'package:aplicacion_reporte1/src/models/producto.dart';
import 'package:flutter/material.dart';

class ContactosScreen extends StatelessWidget{
  ContactosScreen({super.key});

  /*final List<Persona> contactos = [
    Persona(foto: '', nombre: 'Paola'),
    Persona(foto: '', nombre: 'Alonso'),
    Persona(foto: '', nombre: 'Alberto')
  ];*/

  /*@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Contactos')),
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/media/COE6NPLUcAA9HLY.png'),
            ),
            title: Text(contactos[index].nombre),
            subtitle: const Text('Apellidos'),
            tileColor: const Color.fromARGB(255, 241, 211, 237),
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }*/

  final List<Producto> productos = [
    Producto(nombrep: 'Leche', stock: 6, dirFoto: 'https://img.freepik.com/vector-gratis/dibujos-envases-leche_23-2147498136.jpg?q=10&h=200'),
    Producto(nombrep: 'Huevo', stock: 0, dirFoto: 'https://i.pinimg.com/222x/0c/bc/2b/0cbc2bd0b9568889aa0eae341b32fff6.jpg'),
    Producto(nombrep: 'Arroz', stock: 20, dirFoto: 'https://cdn5.colorir.com/desenhos/color/201145/54014cc6ef4954e5adb16fac5810ac7a.png')
  ];

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos - GOMEZ GARCIA PAOLA')),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
          int valor = productos[index].stock;
          Color color;
          if(valor == 0){
            color = Colors.grey;
          } else{
            color = const Color.fromARGB(255, 237, 158, 185);
          }

          return ListTile(
            leading: CircleAvatar (
              backgroundImage: NetworkImage(productos[index].dirFoto),
            ),
            title: Text('Producto: ${productos[index].nombrep}'),
            subtitle: Text('Cantidad: ${productos[index].stock.toString()}'),
            tileColor: color,
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  } 
}