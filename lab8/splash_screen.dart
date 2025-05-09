import 'package:flutter/material.dart';
import 'second_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => const SecondScreen(),
            ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', height: 150),
              const SizedBox(height: 20),
              const Text('Double tap on logo to continue')
            ],
          ),
        ),
      ),
    );
  }
}
