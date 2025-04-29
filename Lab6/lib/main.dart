import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewApp());
  }
}

class ChatBubble extends StatelessWidget {
  final String sendertext;
  final Color colour;
  final Alignment alignmentt;
  final MainAxisAlignment MAA;

  const ChatBubble({
    super.key,
    required this.sendertext,
    required this.colour,
    required this.alignmentt,
    required this.MAA,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MAA,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: alignmentt,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(sendertext, style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}

class NewApp extends MyApp {
  const NewApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat"), backgroundColor: Colors.blueAccent),
      body: ListView(
        children: [
          SizedBox(height: 20),
          ChatBubble(
            sendertext: "hello ali",
            colour: Colors.blue,
            alignmentt: Alignment.centerLeft,
            MAA: MainAxisAlignment.start,
          ),
          SizedBox(height: 10),
          ChatBubble(
            sendertext: "hope you're fine",
            colour: Colors.blue,
            alignmentt: Alignment.centerLeft,
            MAA: MainAxisAlignment.start,
          ),
          SizedBox(height: 10),
          ChatBubble(
            sendertext: "hello qurat",
            colour: Colors.grey,
            alignmentt: Alignment.centerRight,
            MAA: MainAxisAlignment.end,
          ),
        ],
      ),
    );
  }
}
