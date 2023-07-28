// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:math' as obj_color;

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
              ),
            )
          ],
          backgroundColor: Colors.deepPurple,
          expandedHeight: 350,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Fashion',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            centerTitle: true,
            background: Image.asset(
              'assets/images/model_1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // T : Sabit elemanlarla bir satırda kaç eleman olacağını söyleyeceğimiz GRID türü
        SliverGrid(
            delegate: SliverChildListDelegate(static_list()),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2)),
        // Dinamik (builder ile üretilen) elemanlarla bir satırda kaç eleman olacağını söyleyeceğimiz GRID türü
        SliverGrid(
            delegate: SliverChildBuilderDelegate(dynamic_list, childCount: 6),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3)),
        // Dinamik (builder ile üretilen) elemanlarla bir satırdaki  bir elemanın max genişliğini söylediğimiz GRID türü
        SliverGrid(
            delegate: SliverChildBuilderDelegate(dynamic_list, childCount: 6),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100)),
        SliverGrid.count(
          crossAxisCount: 3,
          children: static_list(),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: static_list(),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(5),
          sliver: SliverList(delegate: SliverChildListDelegate(static_list())),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(dynamic_list, childCount: 8),
            itemExtent: 50,
          ),
        )
      ],
    );
  }

  Color color_random() {
    return Color.fromARGB(
        obj_color.Random().nextInt(255),
        obj_color.Random().nextInt(255),
        obj_color.Random().nextInt(255),
        obj_color.Random().nextInt(255));
  }

  Widget dynamic_list(BuildContext context, int index) {
    return Container(
      color: color_random(),
      height: 100,
      alignment: Alignment.center,
      child: Text(
        "D - ${index + 1}",
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  List<Widget> static_list() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text(
          'Statik - 1',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: const Text(
          'Statik - 2',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text(
          'Statik - 3',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: const Text(
          'Statik - 4',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: const Text(
          'Statik - 5',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: const Text(
          'Statik - 6',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
