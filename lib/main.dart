import 'package:flutter/material.dart';
import 'menu_screen.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => MenuScreen(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}
