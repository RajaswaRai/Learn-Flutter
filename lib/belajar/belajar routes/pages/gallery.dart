import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi Route')),
      body: const Center(
        child: Text(
          'GALLERY PAGE',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
