import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('Texto basico'),
        Text('Texto Grande', style: TextStyle(fontSize: 24)),
        Text(
          'Texto Waton',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text("Texto Curvado", style: TextStyle(fontStyle: FontStyle.italic)),
        Text(
          "Texto Colores",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            backgroundColor: Colors.amber,
          ),
        ),
        Text(
          "Decorator",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
            decorationColor: Colors.blue,
            fontSize: 30,
          ),
        ),
        Text(
          "Espaciado entre letras",
          style: TextStyle(letterSpacing: 5, fontSize: 20),
        ),
        Text(
          "Texto Largo Texto Largo Texto Largo Texto Largo Texto Largo Texto Largo Texto Largo Texto Largo Texto Largo Texto Largo",
          style: TextStyle(fontSize: 30),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
