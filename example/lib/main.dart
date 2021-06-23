import 'package:flutter/material.dart';
import 'package:shadow_ui_bottom_navbar/shadow_ui_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List<Widget> _widgets = [
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.orangeAccent,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.mail,
    Icons.notifications,
    Icons.settings,
    Icons.play_arrow
  ];

  List titles = ["Home", "Inbox", "Notifications", "Settings", "Play"];

  @override
  Widget build(BuildContext context) {
    return Shadow_ui_bottom(
      bgcolor: Colors.black,
      widgets: _widgets,
      activeicon: Colors.green,
      activeshadowcolor: Colors.lightGreen,
      icon: icons,
      title: titles,
    );
  }
}
