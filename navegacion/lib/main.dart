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
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaBienvenida(),
        '/catalogo': (context) => const PantallaCatalogo(),
        '/perfil': (context) => const PantallaPerfil(),
      },
    );
  }
}