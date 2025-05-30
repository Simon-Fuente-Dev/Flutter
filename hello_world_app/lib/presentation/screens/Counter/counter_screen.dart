import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: const Text('Counter screen')),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', 
                style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
                const Text('Clicks', style: TextStyle( fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            setState(() {
              clickCounter++;
              
            });
          },
          child: const Icon( Icons.plus_one)
          ),
      );
  }
}