import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 90,
                width: 1000,
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                dense: true,
                leading: const Icon(
                  Icons.home,
                  size: 30,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/settings');
                },
                dense: true,
                leading: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Drawer Widget'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Page Home',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
