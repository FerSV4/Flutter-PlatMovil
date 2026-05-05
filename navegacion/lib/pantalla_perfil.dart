import 'package:flutter/material.dart';
import 'mascota.dart';

class PantallaPerfil extends StatelessWidget {
  static const String ruta = '/perfil';

  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    final mascota = ModalRoute.of(context)!.settings.arguments as Mascota;

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil: ${mascota.nombre}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.portrait, size: 120, color: Colors.grey),
            const SizedBox(height: 20),
            Text(
              'Nombre: ${mascota.nombre}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              'Especie: ${mascota.tipo}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Edad: ${mascota.edad}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Pelaje/Color: ${mascota.color}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context, mascota.nombre);
              },
              icon: const Icon(Icons.home),
              label: const Text('Volver al catálogo'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}