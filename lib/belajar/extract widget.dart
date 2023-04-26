import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Extract Widget'),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => ListKontak(
            imageUrl: 'https://picsum.photos/id/${index}/200/300',
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
        ),
      ),
    );
  }
}

class ListKontak extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ListKontak(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(overflow: TextOverflow.ellipsis),
      ),
      trailing: Text('10:00PM'),
    );
  }
}
