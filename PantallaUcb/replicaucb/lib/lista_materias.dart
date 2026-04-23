import 'package:flutter/material.dart';

class ListaMaterias extends StatelessWidget {
  const ListaMaterias({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          TarjetaMateria(
            nombre: 'PLATAFORMAS MÓVILES',
            nota: 87,
            icono: Icons.smartphone,
            colorIcono: Color(0xFFC19A31),
          ),
          TarjetaMateria(
            nombre: 'INTELIGENCIA ARTIFICIAL',
            nota: 85,
            icono: Icons.psychology,
            colorIcono: Color(0xFF042B59),
          ),
          TarjetaMateria(
            nombre: 'INGENIERÍA DE SOFTWARE',
            nota: 89,
            icono: Icons.settings_suggest,
            colorIcono: Color(0xFF042B59),
          ),
          TarjetaMateria(
            nombre: 'REDES DE COMPUTADORAS',
            nota: 84,
            icono: Icons.lan,
            colorIcono: Color(0xFF042B59),
          ),
          TarjetaMateria(
            nombre: 'TESIS DE GRADO I',
            nota: 75,
            icono: Icons.edit_document,
            colorIcono: Color(0xFF042B59),
          ),
        ],
      ),
    );
  }
}

class TarjetaMateria extends StatelessWidget {
  final String nombre;
  final int nota;
  final IconData icono;
  final Color colorIcono;

  const TarjetaMateria({
    super.key,
    required this.nombre,
    required this.nota,
    required this.icono,
    required this.colorIcono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorIcono,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icono, color: Colors.white, size: 30),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    nombre,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  '$nota / 100',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: nota / 100,
                minHeight: 8,
                backgroundColor: Colors.grey.shade200,
                color: const Color(0xFFC19A31),
              ),
            ),
          ],
        ),
      ),
    );
  }
}