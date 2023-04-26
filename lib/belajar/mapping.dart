import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      'name': 'Sandhika',
      'age': 40,
      'favcolor': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
      ],
    },
    {
      'name': 'Yusuf',
      'age': 25,
      'favcolor': ['white', 'red', 'green'],
    },
    {
      'name': 'Sandhika',
      'age': 40,
      'favcolor': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
      ],
    },
    {
      'name': 'Sandhika',
      'age': 40,
      'favcolor': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
      ],
    },
    {
      'name': 'Yusuf',
      'age': 25,
      'favcolor': ['white', 'red', 'green'],
    },
    {
      'name': 'Sandhika',
      'age': 40,
      'favcolor': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
      ],
    },
    {
      'name': 'Sandhika',
      'age': 40,
      'favcolor': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
      ],
    },
    {
      'name': 'Yusuf',
      'age': 25,
      'favcolor': ['white', 'red', 'green'],
    },
    {
      'name': 'Sandhika',
      'age': 40,
      'favcolor': [
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
        'black',
        'red',
        'amber',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        appBar: AppBar(
          title: const Text('Mapping'),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavcolor = data['favcolor'];
            return Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name: ${data['name']}'),
                              Text('Age: ${data['age']}'),
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: myFavcolor.map((e) {
                            return Container(
                              width: 50,
                              color: Colors.amber,
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                e,
                                textAlign: TextAlign.center,
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
