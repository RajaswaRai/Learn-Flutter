import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = Faker();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Constructor'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => Pesan(
              photo: 'https://picsum.photos/id/${index}/200/300',
              name: faker.person.name(),
              isi: faker.lorem.sentence(),
            ),
          ),
        ),
      ),
    );
  }
}

class Pesan extends StatelessWidget {
  final String photo;
  final String name;
  final String isi;

  const Pesan(
      {super.key, required this.photo, required this.name, required this.isi});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(photo),
      ),
      title: Text(name),
      subtitle: Text(isi),
      trailing: const Text('10:00PM'),
    );
  }
}
