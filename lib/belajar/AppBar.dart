import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.amber),
          leadingWidth: 60,
          title: Container(
            height: 35,
            color: Colors.red,
          ),
          centerTitle: false,
          titleSpacing: 10,
          actions: [
            Container(
              width: 50,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
              color: Colors.black,
              width: 50,
              height: 50,
            ),
          ),
          flexibleSpace: Container(
            color: Colors.green,
            height: 100,
          ),
        ),
      ),
    );
  }
}
