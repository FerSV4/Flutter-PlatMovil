import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children:[
              Expanded(
                child: Column(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 18, 41, 88),
                      child: Text("UCB - Portal Academico"),
                    ), // titulo
                    Container(
                      color: Color.fromARGB(255, 18, 41, 88),
                      
                      child: Row(
                        children: [
                          Icon(Icons.account_circle, size: 80, color: Colors.white), // TODO: importar logo de la U
                          Column(
                            children: [
                              Text("Nombre del Estudiante", style: TextStyle(color: Colors.white),),
                              Text("ALEJANDRO TORRES C.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              Text('Carrera: Ingenieria de Software', style: TextStyle(color: Colors.white)),
                              Text('7° Semestre | Registro 10456', style: TextStyle(color: Colors.white))
                            ],
                          )
                        ],
                      )
                    ),
                    Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        // TODO: Hacer la lista de materias
                      ),
                    ) // Lista de materias
                  ],
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}
