import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Material App Title", home: LandingPage());
  }
}

class LandingPage extends MyApp {
  const LandingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Icon(
              FontAwesomeIcons.facebook,
              size: 80,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "FACEBOOK",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(FontAwesomeIcons.whatsapp),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.facebookMessenger),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.instagram),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
