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
                    ), // titulo
                    Container(), // Logo y datos
                    Container() // Lista de materias
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
