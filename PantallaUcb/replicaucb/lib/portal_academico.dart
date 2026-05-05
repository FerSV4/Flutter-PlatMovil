import 'package:flutter/material.dart';
import 'lista_materias.dart';

class PortalAcademico extends StatelessWidget {
  const PortalAcademico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 240,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF042B59),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'UCB - Portal Académico',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo-UCB.png', height: 90,),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nombre del Estudiante:',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'DANIEL ROLAND P. C.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Carrera: Ingeniería de Software',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '7° Semestre | Registro: 10456',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Expanded(
                  child: SingleChildScrollView(
                    child: ListaMaterias(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
