import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/Counter/counter_functions_screen.dart';
// import 'package:hello_world_app/presentation/screens/Counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Retorna nuestra aplicacion
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blueGrey
      ),
      home:  CounterFunctionsScreen(),
    );
  }

}