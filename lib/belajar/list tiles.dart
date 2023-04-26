import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Widget> contacts = List.generate(
      20,
      (index) => Column(
            children: [
              ListTile(
                title: Text("Rajaswa"),
                subtitle: Text(
                  "Salam kenal Saya Rajaswa adwwdawdwadwadwadwdwada",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                leading: CircleAvatar(),
                trailing: Text("10:00 PM"),
                dense: true,
                contentPadding: EdgeInsets.all(10),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView(children: contacts),
      ),
    );
  }
}
