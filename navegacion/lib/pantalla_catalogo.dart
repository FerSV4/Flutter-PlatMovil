import 'package:flutter/material.dart';
import 'pantalla_perfil.dart';
import 'mascota.dart';

class PantallaCatalogo extends StatelessWidget {
  static const String ruta = '/catalogo';

  final List<Mascota> listaMascotas = const [
    Mascota(nombre: 'Ñiky', tipo: 'Perro', edad: '2 años', color: 'Caramelo'),
    Mascota(nombre: 'Yan', tipo: 'Gato', edad: '1 mes', color: 'Negro'),
    Mascota(nombre: 'Pol', tipo: 'Perro beniano', edad: '3 años', color: 'Verde'),
    Mascota(nombre: 'TropiFrut', tipo: 'Tatu', edad: '6 meses', color: 'Cafe y negro'),
  ];

  const PantallaCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
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
                backgroundColor: Colors.orangeAccent,
              ),
              title: Text(mascota.nombre),
              subtitle: Text(mascota.tipo),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () async {
                final resultado = await Navigator.pushNamed(
                  context,
                  PantallaPerfil.ruta,
                  arguments: mascota,
                );

                if (!context.mounted) return;

                if (resultado != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Anterior Pantalla: $resultado')),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}