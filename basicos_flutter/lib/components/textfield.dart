import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  const TextfieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        SizedBox(height: 60),
        TextField(),
        SizedBox(height: 32),
        TextField(),
        SizedBox(height: 32),
        TextField(decoration: InputDecoration(hintText: "Introduce tu email")),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu Contraseña",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu Contraseña",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu Contraseña",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLength: 10,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Introduce tu Contraseña",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
