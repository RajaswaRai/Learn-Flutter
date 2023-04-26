import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String hasilInput = "HASIL INPUT";
  bool inputHide = true;
  Widget mata = Icon(Icons.remove_red_eye);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  obscureText: inputHide,
                  onChanged: (value) => setState(() => hasilInput = value),
                  decoration: InputDecoration(
                    icon: const Icon(Icons.person),
                    suffix: IconButton(
                      onPressed: () => setState(() {
                        if (inputHide = true) inputHide = false;
                        if (inputHide = false) inputHide = true;
                        mata = Icon(Icons.minimize);
                      }),
                      icon: mata,
                    ),
                  ),
                ),
              ),
              Text(hasilInput),
            ],
          ),
        ),
      ),
    );
  }
}
