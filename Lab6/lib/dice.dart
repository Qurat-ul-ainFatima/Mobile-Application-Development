//import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewApp());
  }
}

class NewApp extends StatefulWidget {
  @override
  _NewAppState createState() => _NewAppState();
}

int dicenum = 1;

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset("assets/dice$dicenum.png"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              dicenum = Random().nextInt(6) + 1;
            });
          },
          child: const Text("Press to roll dice"),
        )
      ],
    ));
  }
}
