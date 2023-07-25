// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Izgara Görünümü'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: grid_builder(),
    );
  }

  GridView grid_builder() {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.red, offset: Offset(10, 10), blurRadius: 20)
                ],
                shape: BoxShape.rectangle,
                color: Colors.blue[100 * ((index + 1) % 8)],
                border: Border.all(color: Colors.orange, width: 1),
                gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: const DecorationImage(
                    image: AssetImage('assets/images/model_1.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Grid $index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            onTap: () {
              debugPrint('onTap - Tıklanan : $index');
            },
            onDoubleTap: () {
              debugPrint('onDoubleTap - Çift Tıklama : $index');
            },
            onLongPress: () {
              debugPrint('onLongPress - Uzun Basıldı : $index');
            },
            onHorizontalDragStart: (details) {
              debugPrint(
                  'onHorizontalDragStart - Uzun Basıldı : $index ---- Details $details');
            },
          );
        });
  }

  GridView grid_extent() {
    return GridView.extent(
      primary: false,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      maxCrossAxisExtent: 300,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade50,
          child: const Text(
            'Grid 1',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: const Text(
            'Grid 2',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: const Text(
            'Grid 3',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: const Text(
            'Grid 4',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade400,
          child: const Text(
            'Grid 5',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade500,
          child: const Text(
            'Grid 6',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade600,
          child: const Text(
            'Grid 7',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade700,
          child: const Text(
            'Grid 8',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade800,
          child: const Text(
            'Grid 9',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade900,
          child: const Text(
            'Grid 10',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: const Text(
            'Grid 11',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: const Text(
            'Grid 12',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  GridView grid_count() {
    return GridView.count(
      crossAxisCount: 3, // Soldan sağa doğru sıralama
      primary: false,
      reverse: false,
      scrollDirection: Axis
          .vertical, // Soldan sağa ve yukardan aşağıya doğru kaydırma işlemi
      padding: const EdgeInsets.all(20),
      crossAxisSpacing:
          20, // Soldan sağa doğru sütunlar arası boşlu oluşmasını sağlıyor
      mainAxisSpacing:
          20, // Yukarıdan aşağıya doğru satırlar arası boşlu oluşmasını sağlıyor
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade50,
          child: const Text(
            'Grid 1',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: const Text(
            'Grid 2',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: const Text(
            'Grid 3',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: const Text(
            'Grid 4',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade400,
          child: const Text(
            'Grid 5',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade500,
          child: const Text(
            'Grid 6',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade600,
          child: const Text(
            'Grid 7',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade700,
          child: const Text(
            'Grid 8',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade800,
          child: const Text(
            'Grid 9',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
