import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends MyApp {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Court Counter",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("Team B", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 50),
                Text("Team B", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(child: Text('0', style: TextStyle(fontSize: 50))),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      "+3 Points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      "+2 Points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      "FREE THROW",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 1,
                height: 270,
                color: Colors.black,
              ),

              Column(
                children: [
                  Container(child: Text('0', style: TextStyle(fontSize: 50))),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      "+3 Points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      "+2 Points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      "FREE THROW",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(570, 0, 570, 20),
        child: ElevatedButton(
          onPressed: () {
           // print("hello");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("RESET", style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
