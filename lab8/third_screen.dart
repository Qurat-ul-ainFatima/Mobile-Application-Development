import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String info;

  const ThirdScreen({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detailed Info")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          info,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
