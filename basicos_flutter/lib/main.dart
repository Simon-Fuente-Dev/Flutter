// import 'package:basicos_flutter/presentations/column.dart';
import 'package:basicos_flutter/components/button.dart';
import 'package:basicos_flutter/components/image.dart';
import 'package:basicos_flutter/components/text.dart';
import 'package:basicos_flutter/components/textfield.dart';
// import 'package:basicos_flutter/presentations/row.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi super app"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.abc))
          ],
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.amber,
        body: ImageExample(),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
    );
  }
}