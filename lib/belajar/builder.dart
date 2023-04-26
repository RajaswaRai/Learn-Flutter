import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Widget> myList = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 20 + index.toDouble(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Generate builder"),
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
