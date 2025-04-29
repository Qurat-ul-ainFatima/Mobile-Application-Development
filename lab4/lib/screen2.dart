import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice App1",
      color: Colors.blue,
      home: NewApp(),
    );
  }
}

class NewApp extends MyApp {
  const NewApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 100),
      ),
    );
  }
}
