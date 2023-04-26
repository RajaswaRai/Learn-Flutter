import 'package:flutter/material.dart';
import './gallery.dart';
import './photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi Route'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/photopage');
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
      body: const Center(
        child: Text(
          'HOME PAGE',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
