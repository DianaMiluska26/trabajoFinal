import 'package:flutter/material.dart';
import 'package:fullgrass/src/widgets/btnLogin.dart';
import 'package:fullgrass/src/widgets/cajaEntry.dart';
import 'package:fullgrass/src/widgets/preguntaRegistro.dart';
import 'package:fullgrass/src/widgets/redes.dart';
import 'package:fullgrass/src/widgets/subTitulo.dart';
import 'package:fullgrass/src/widgets/titulo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                height: 614,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),
                    subTitulo(context, texto: 'Usuario:'),
                    SizedBox(height: 10),
                    cajaEntrys(context, icono: 'persona', dato: 'Usuario'),
                    const SizedBox(height: 40), // Separación vertical
                    subTitulo(context, texto: 'Contraseña:'),
                    SizedBox(height: 10),
                    cajaEntrys(context,
                        icono: 'contraseña', dato: 'Contraseña'),
                    const SizedBox(height: 40), // Separación vertical
                    preguntaRegistro(context),
                    const SizedBox(height: 40), // Separación vertical
                    btnLogin(context, texto: 'Log in', pagina: 'CanchasSatipo'),
                    const SizedBox(height: 40), // Separación vertical
                    Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 40), // Separación vertical
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Twitter
                        redes(context, urlImage: 'assets/image/twiter.png', texto: 'Twiter'),
                        SizedBox(width: 60),
                        // Facebook
                        redes(context, urlImage: 'assets/image/facebook.png', texto: 'Facebook'),
                        SizedBox(width: 60),
                        // Instagram
                        redes(context, urlImage: 'assets/image/insta.png', texto: 'Instagram'),
                      ],
                    ),
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
