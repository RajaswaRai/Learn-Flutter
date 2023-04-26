import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Tab> appTab = [
    Tab(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.add), Text('Tab1')],
        ),
      ),
    ),
    Tab(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.add_a_photo), Text('Tab2')],
        ),
      ),
    ),
    Tab(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.ac_unit), Text('Tab3')],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: appTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Widget'),
            centerTitle: true,
            bottom: TabBar(tabs: appTab),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text('Tab1'),
            ),
            Center(
              child: Text('Tab2'),
            ),
            Center(
              child: Text('Tab3'),
            ),
          ]),
        ),
      ),
    );
  }
}
