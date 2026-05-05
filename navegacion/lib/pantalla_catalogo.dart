import 'package:flutter/material.dart';

class PantallaCatalogo extends StatelessWidget {
  const PantallaCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
    final listaMascotas = [
      {'nombre': 'Ñiky', 'tipo': 'Perro', 'edad': '2 años', 'color': 'Caramelo'},
      {'nombre': 'Yan', 'tipo': 'Gato', 'edad': '1 mes', 'color': 'Negro'},
      {'nombre': 'Pol', 'tipo': 'Perro beniano', 'edad': '3 años', 'color': 'Verde'},
      {'nombre': 'TropiFrut', 'tipo': 'Tatu', 'edad': '6 meses', 'color': 'Cafe y negro'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mascotas firmes:'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: listaMascotas.length,
        itemBuilder: (context, index) {
          final mascota = listaMascotas[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orangeAccent
              ),
              title: Text(mascota['nombre']!),
              subtitle: Text(mascota['tipo']!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/perfil',
                  arguments: mascota,
                );
              },
            ),
          );
        },
      ),
    );
  }
}