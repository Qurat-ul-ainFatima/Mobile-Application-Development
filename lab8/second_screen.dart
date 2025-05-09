import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Your Name"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'About Me'),
              Tab(icon: Icon(Icons.location_city), text: 'Hometown'),
              Tab(icon: Icon(Icons.school), text: 'Student Life'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InfoTab(
              text: 'I am a passionate tech student learning Flutter.',
              detail: 'I have a strong background in mobile and web development...',
            ),
            InfoTab(
              text: 'I belong to the beautiful city of Karachi.',
              detail: 'Karachi is known for its rich culture, coastline, and energy...',
            ),
            InfoTab(
              text: 'I study at Bahria University in Computer Science.',
              detail: 'At Bahria, I have worked on many exciting projects and participated in ICPC...',
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTab extends StatelessWidget {
  final String text;
  final String detail;

  const InfoTab({super.key, required this.text, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onLongPress: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => ThirdScreen(info: detail),
          ));
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(text, style: const TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
