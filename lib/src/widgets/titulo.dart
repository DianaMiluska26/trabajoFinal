  import 'package:flutter/material.dart';

Positioned titulo(BuildContext context, {required String texto} ) {
    return  Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                texto,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 64,
                ),
              ),
            ),
          );
  }