import 'package:flutter/material.dart';

Column redes(BuildContext context,{required String urlImage, required String texto}) {
  return Column(
    children: [
      Image.asset(urlImage, width: 52, height: 35),
      SizedBox(height: 5),
      Text(
        texto,
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    ],
  );
}
