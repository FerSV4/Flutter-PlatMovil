import 'package:flutter/material.dart';
import 'pantalla_catalogo.dart';

class PantallaBienvenida extends StatelessWidget {
  static const String ruta = '/';

  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.pets, size: 100, color: Colors.orange),
            const SizedBox(height: 20),
            const Text(
              'Refugio Tilines',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, PantallaCatalogo.ruta);
              },
              child: const Text('Ver Mascotas'),
            ),
          ],
        ),
      ),
    );
  }
}