import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewApp());
  }
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Intro Tabs"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Introduction"),
              Tab(text: "Education"),
              Tab(text: "Hobbies"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: "Hi I'm",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                      text: " qurat-ul-ain",
                    ),
                  ],
                ),
              ),
            ),

            Center(child: Text("I'm doing BS(CS) in my 6th semester")),
            Center(
              child: Text(
                "My hobbies are doing problem solving on leetcode etc",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

