import 'package:flutter/material.dart';
import 'pantalla_bienvenida.dart';
import 'pantalla_catalogo.dart';
import 'pantalla_perfil.dart';

void main() {
  runApp(const AppAdopcion());
}

class AppAdopcion extends StatelessWidget {
  const AppAdopcion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refugio Tilines',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: PantallaBienvenida.ruta,
      routes: {
        PantallaBienvenida.ruta: (context) => const PantallaBienvenida(),
        PantallaCatalogo.ruta: (context) => const PantallaCatalogo(),
        PantallaPerfil.ruta: (context) => const PantallaPerfil(),
      },
    );
  }
}