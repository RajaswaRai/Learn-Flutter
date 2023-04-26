import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 4 / 3,
          children: myList,
        ),
      ),
    );
  }
}
