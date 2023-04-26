import 'package:flutter/material.dart';
import 'page2.dart';

class PageSatu extends StatelessWidget {
  PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return PageDua();
                },
              ),
            );
          },
          child: const Icon(Icons.keyboard_arrow_right),
        ),
        appBar: AppBar(
          title: const Text('Navigation Page Satu'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Page 1',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
