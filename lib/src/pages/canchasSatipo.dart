import 'package:flutter/material.dart';
import 'package:fullgrass/src/widgets/cajaEntry.dart';
import 'package:fullgrass/src/widgets/cancha.dart';
import 'package:fullgrass/src/widgets/titulo.dart';
class CanchasSatipo extends StatelessWidget {
  const CanchasSatipo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Inicio');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: Text(
                        'Salir',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.person_rounded,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 50,
                  ),
                ],
              ),
              
              titulo(context, texto: 'FULLGRASS'),
              SizedBox(height: 70),
              // Utilizando Expanded para dividir en dos columnas
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        cajaEntrys(context, icono: 'buscar', dato: 'Buscar'),
                        SizedBox(height: 20),
                        cancha(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'El Golazo',
                            descripcion: 'AV. Augusto B. Leguia 1245',
                            precio: 'S/. 20'),
                        SizedBox(height: 47),
                        cancha(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'El Carajo',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 47),
                        cancha(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'Balón de oro',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 120),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        cancha(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'Bonbonera',
                            descripcion: 'AV. Augusto B. Leguia 1245',
                            precio: 'S/. 20'),
                        SizedBox(height: 47),
                        cancha(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'La pichanga',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 47),
                        cancha(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'El rayo',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 47),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}