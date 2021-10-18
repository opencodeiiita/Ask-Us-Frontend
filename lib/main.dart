// ASK US APP

// import 'package:ask_us/home.dart';


import 'package:ask_us/calling_apis.dart';
import 'package:ask_us/widget/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';


import 'login.dart';
// import 'sign_up.dart';
// import 'profile_page.dart';
// import 'login.dart';
// import 'answer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      home: LoginScreen(),
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
  void initState() {

    super.initState();
    ApiCall obj=ApiCall();
    obj.getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Us App'),
      ),
      body: Center(
        child: Text(
          'Welcome to Ask Us',
          style: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

