import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dialogInput = "No Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog alert'),
        centerTitle: true,
      ),
      body: Center(child: Text(dialogInput)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Konfirmasi'),
                content: const Text('Anda yakin ingin menghapus data?'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() => dialogInput = "False");
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('No')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() => dialogInput = "True");
                        Navigator.of(context).pop(true);
                      },
                      child: const Text('Yes')),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
