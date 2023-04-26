import 'package:flutter/material.dart';
import './pages/settings.dart';
import './pages/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/home',
      home: Home(),
      routes: {
        '/home': (context) => Home(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
