// ASK US APP

import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Us App'),
      ),
      body: Center(
        child: Text('Welcome to Ask Us',
        style: TextStyle(fontFamily: 'RobotoMono'),

          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
