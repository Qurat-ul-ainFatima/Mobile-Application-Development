import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Center(
          child: Text(
            "White Color",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        leading: Text(
          "12:47am",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        actions: [Icon(Icons.wifi), Icon(Icons.battery_0_bar)],
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: [
            Text("You have pushed the button this many times"),
            Text(
              "\n0",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 2,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
