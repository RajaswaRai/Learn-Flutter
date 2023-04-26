import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Widget'),
        ),
        body: Center(
            child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  child: Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.black,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  width: 300,
                  height: 500,
                  color: Colors.amber,
                  child: Image.asset(
                    'images/simpson.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(),
                Container(
                  width: 300,
                  height: 500,
                  color: Colors.amber,
                  child: Image.network(
                    'https://picsum.photos/200/300',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
