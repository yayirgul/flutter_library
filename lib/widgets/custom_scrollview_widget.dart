import 'package:flutter/material.dart';

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
        )
      ],
    );
  }
}
