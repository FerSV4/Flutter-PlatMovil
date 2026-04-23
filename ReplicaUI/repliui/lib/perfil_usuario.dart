import 'package:flutter/material.dart';

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF6B7AC4)),
          onPressed: () {},
        ),
        title: const Text(
          'Perfil de Usuario',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6B7AC4).withValues(alpha: 0.2),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xFF6B7AC4),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Fernando Sejas',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Mobile Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 15,
                      spreadRadius: 0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const FilaInformacion(
                      icono: Icons.email_outlined,
                      texto: 'Correo Electrónico',
                      esGris: true,
                    ),
                    const Divider(height: 30, thickness: 0.5),
                    const FilaInformacion(
                      icono: Icons.alternate_email,
                      texto: 'fernando@ucb.edu.bo',
                      esGris: false,
                    ),
                    const Divider(height: 30, thickness: 0.5),
                    const FilaInformacion(
                      icono: Icons.cake_outlined,
                      texto: 'Edad 20 años',
                      esGris: true,
                    ),
                    const Divider(height: 30, thickness: 0.5),
                    const FilaInformacion(
                      icono: Icons.person_outline,
                      texto: 'Mobile Developer',
                      esGris: false,
                    ),
                    const SizedBox(height: 35),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6B7AC4),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Editar Perfil',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class FilaInformacion extends StatelessWidget {
  final IconData icono;
  final String texto;
  final bool esGris;

  const FilaInformacion({
    super.key,
    required this.icono,
    required this.texto,
    required this.esGris,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icono,
          color: const Color(0xFF6B7AC4),
          size: 22,
        ),
        const SizedBox(width: 16),
        Text(
          texto,
          style: TextStyle(
            fontSize: 15,
            color: esGris ? Colors.grey.shade600 : Colors.black87,
            fontWeight: esGris ? FontWeight.normal : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}