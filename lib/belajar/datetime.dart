import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date Format'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            ElevatedButton(
                onPressed: () => setState(() {}), child: const Text('Refresh'))
          ],
        )),
      ),
    );
  }
}
