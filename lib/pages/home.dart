import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
          "https://picsum.photos/id/$index/200",
          faker.food.restaurant(),
          10000 + Random().nextInt(100000),
          faker.lorem.sentence());
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(child: Image.network(dummyData[index].imageURL));
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
