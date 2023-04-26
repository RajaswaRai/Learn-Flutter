import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    var tambahKurang = [
      ElevatedButton(
        onPressed: () {
          if (counter != 1) {
            setState(() {
              counter--;
            });
          }
        },
        child: Icon(Icons.remove),
      ),
      ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add)),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget'),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            counter.toString(),
            style: TextStyle(
                fontSize: 30 + counter.toDouble(), fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tambahKurang,
          ),
        ]),
      ),
    );
  }
}
