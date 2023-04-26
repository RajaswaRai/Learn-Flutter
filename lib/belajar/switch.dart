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
  bool statSwitch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: (statSwitch == false) ? Colors.white : Colors.amber,
        appBar: AppBar(
          title: const Text('Switch'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 600,
                child: FittedBox(
                  child: Switch(
                    activeColor: Colors.red,
                    activeTrackColor: Colors.black,
                    inactiveThumbColor: Colors.indigo,
                    inactiveTrackColor: Colors.green,
                    activeThumbImage: const AssetImage('images/woah.png'),
                    value: statSwitch,
                    onChanged: (value) {
                      setState(() {
                        statSwitch = !statSwitch;
                      });
                    },
                  ),
                ),
              ),
              Text(
                (statSwitch == true) ? 'Switch On' : 'Switch Off',
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
