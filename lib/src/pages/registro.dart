import 'package:flutter/material.dart';
import 'package:fullgrass/src/widgets/btnLogin.dart';
import 'package:fullgrass/src/widgets/cajaEntry.dart';
import 'package:fullgrass/src/widgets/subTitulo.dart';
import 'package:fullgrass/src/widgets/titulo.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Container(
        child: Stack(
          children: [
            titulo(context, texto: 'FULLGRASS'),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Container(
                width: 362,
                height: 800,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 80),
                    subTitulo(context, texto: 'Nombre completo:'),
                    const SizedBox(height: 10),
                    cajaEntrys(context, icono: 'persona', dato: 'Nombre completo'),
                    const SizedBox(height: 20),
                    subTitulo(context, texto: 'Usuario:'),
                    const SizedBox(height: 10), // Separación vertical
                    cajaEntrys(context, icono: 'persona', dato: 'Usuario'),
                    const SizedBox(height: 20),
                    subTitulo(context, texto: 'Contraseña:'),
                    const SizedBox(height: 10), // Separación vertical
                    cajaEntrys(context, icono: 'contraseña', dato: 'Contraseña'),
                    const SizedBox(height: 20),
                    subTitulo(context, texto: 'Numero celular:'),
                    const SizedBox(height: 10), // Separación vertical
                    cajaEntrys(context, icono: 'celular', dato: 'Celular'),
                    const SizedBox(height: 20),
                    subTitulo(context, texto: 'Fecha nacimiento:'),
                    const SizedBox(height: 10), // Separación vertical
                    cajaEntrys(context, icono: 'calendario', dato: 'Fecha nacimiento'),
                    const SizedBox(height: 70),
                     // Separación vertical
                    btnLogin(context, texto: 'Regístrate', pagina: 'Login'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
