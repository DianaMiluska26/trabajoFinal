  import 'package:flutter/material.dart';

Positioned preguntaRegistro(BuildContext context) {
    return Positioned(
                    bottom: 50,
                    left: 16,
                    right: 16,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'Registro');
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: '¿No tienes una cuenta? ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Regístrate',
                                style: TextStyle(
                                  color: Color.fromARGB(199, 175, 150, 5),
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
  }