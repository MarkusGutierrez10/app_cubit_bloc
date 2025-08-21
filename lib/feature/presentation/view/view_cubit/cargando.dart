import 'package:flutter/material.dart';

Widget cargando() {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        CircularProgressIndicator(
          color: Colors.blue,
          strokeWidth: 3,
        ),
        SizedBox(height: 15),
        Text(
          "Cargando datos...",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
