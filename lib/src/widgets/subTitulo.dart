import 'package:flutter/material.dart';

Text subTitulo(BuildContext context, {required String texto}) {
    return Text(
                    texto, 
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
  }