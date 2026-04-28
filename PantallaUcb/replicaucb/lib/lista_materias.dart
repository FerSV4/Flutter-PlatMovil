import 'package:flutter/material.dart';

class ListaMaterias extends StatefulWidget {
  const ListaMaterias({super.key});

  @override
  State<ListaMaterias> createState() => _ListaMateriasState();
}

class _ListaMateriasState extends State<ListaMaterias> {
  int? _expandedIndex;

  void _onTapIndex(int index) {
    setState(() {
      if (_expandedIndex == index) {
        _expandedIndex = null;
      } else {
        _expandedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'nombre': 'PLATAFORMAS MÓVILES',
        'nota': 92,
        'icono': Icons.smartphone,
        'color': const Color(0xFFC19A31),
        'sigla': 'SIS-420',
        'docente': 'Ing. Percy Tomicha',
        'aprobado': true,
        'detalles': {
          'Parcial 1': '90',
          'Parcial 2': '94',
          'Trabajos Prácticos': '91',
          'Examen Final': '93',
          'Asistencia': '95%'
        }
      },
      {
        'nombre': 'BASE DE DATOS II',
        'nota': 87,
        'icono': Icons.storage,
        'color': const Color(0xFF2D6A4F),
        'sigla': 'BD-302',
        'docente': 'Dra. María López',
        'aprobado': true,
        'detalles': {
          'Parcial 1': '85',
          'Parcial 2': '88',
          'Trabajos Prácticos': '90',
          'Examen Final': '86',
          'Asistencia': '92%'
        }
      },
      {
        'nombre': 'INTELIGENCIA ARTIFICIAL',
        'nota': 85,
        'icono': Icons.psychology,
        'color': const Color(0xFF042B59),
        'sigla': 'IA-201',
        'docente': 'MSc. Carla Rivera',
        'aprobado': true,
        'detalles': {
          'Parcial 1': '80',
          'Parcial 2': '88',
          'Trabajos Prácticos': '84',
          'Examen Final': '88',
          'Asistencia': '90%'
        }
      },
      {
        'nombre': 'INGENIERÍA DE SOFTWARE',
        'nota': 89,
        'icono': Icons.settings_suggest,
        'color': const Color(0xFF042B59),
        'sigla': 'IS-330',
        'docente': 'Ing. Luis García',
        'aprobado': true,
        'detalles': {
          'Parcial 1': '88',
          'Parcial 2': '90',
          'Trabajos Prácticos': '92',
          'Examen Final': '86',
          'Asistencia': '96%'
        }
      },
      {
        'nombre': 'TESIS DE GRADO I',
        'nota': 75,
        'icono': Icons.edit_document,
        'color': const Color(0xFF042B59),
        'sigla': 'TS-101',
        'docente': 'Dr. Ana Pérez',
        'aprobado': false,
        'detalles': {
          'Avance': '70%',
          'Reuniones': '4',
          'Calificación Parcial': '75',
          'Asistencia': '85%'
        }
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: List.generate(items.length, (i) {
          final it = items[i];
          return TarjetaMateria(
            nombre: it['nombre'] as String,
            nota: it['nota'] as int,
            icono: it['icono'] as IconData,
            colorIcono: it['color'] as Color,
            sigla: it['sigla'] as String,
            docente: it['docente'] as String,
            aprobado: it['aprobado'] as bool,
            detalles: Map<String, String>.from(it['detalles'] as Map),
            isExpanded: _expandedIndex == i,
            onTap: () => _onTapIndex(i),
          );
        }),
      ),
    );
  }
}

class TarjetaMateria extends StatelessWidget {
  final String nombre;
  final int nota;
  final IconData icono;
  final Color colorIcono;
  final String sigla;
  final String docente;
  final bool aprobado;
  final Map<String, String> detalles;
  final bool isExpanded;
  final VoidCallback onTap;

  const TarjetaMateria({
    super.key,
    required this.nombre,
    required this.nota,
    required this.icono,
    required this.colorIcono,
    required this.sigla,
    required this.docente,
    required this.aprobado,
    required this.detalles,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final progressColor = const Color(0xFFC19A31);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
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
                  color: progressColor,
                ),
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: ConstrainedBox(
                  constraints: isExpanded ? const BoxConstraints() : const BoxConstraints(maxHeight: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Row(
                          children: [
                            Expanded(
                              child: Text('Sigla: $sigla', style: TextStyle(color: Colors.grey[800])),
                            ),
                            Expanded(
                              child: Text('Docente: $docente', style: TextStyle(color: Colors.grey[800])),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Estado: ${aprobado ? 'Aprobado' : 'No aprobado'}',
                          style: TextStyle(
                            color: aprobado ? Colors.green : Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ...detalles.entries.map((e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(e.key, style: TextStyle(color: Colors.grey[700])),
                                  Text(e.value, style: const TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
