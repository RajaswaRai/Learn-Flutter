import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dismissible'),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              confirmDismiss: (direction) {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Konfirmasi'),
                      content: const Text('Anda yakin ingin menghapus item?'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('No')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text('Yes')),
                      ],
                    );
                  },
                );
              },
              key: Key(index.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: const Icon(
                  Icons.delete,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Center(child: Text("${index + 1}")),
                ),
                title: Text(faker.person.name()),
                subtitle: Text(
                  faker.lorem.sentence(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
