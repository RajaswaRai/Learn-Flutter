import 'package:flutter/material.dart';
import './pages/gallery.dart';
import './pages/photo.dart';
import './pages/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => HomePage(),
        '/photopage': (context) => PhotoPage(),
        '/gallerypage': (context) => GalleryPage(),
      },
    );
  }
}
