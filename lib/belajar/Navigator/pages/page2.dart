import 'package:flutter/material.dart';
import 'page1.dart';

class PageDua extends StatelessWidget {
  PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.keyboard_arrow_left),
        ),
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            Navigator.of(context).pop();
          }),
          title: const Text('Navigation Page Dua'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Page 2',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
