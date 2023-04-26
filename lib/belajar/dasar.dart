import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Text(
            "Supermi",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
              backgroundColor: Colors.red,
              fontStyle: FontStyle.italic,
              letterSpacing: 10,
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Rajaswa"),
        ),
      ),
    );
  }
}
