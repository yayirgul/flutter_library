import 'package:flutter/material.dart';

class ListViewProblemsWidget extends StatelessWidget {
  const ListViewProblemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste Görünüm Problemi'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.deepOrange)),
        child: Row(
          children: [
            const Text('ROW1'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                shrinkWrap: true,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                    child: const Text('1'),
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                    child: const Text('2'),
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade600,
                    child: const Text('3'),
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade800,
                    child: const Text('4'),
                  )
                ],
              ),
            ),
            const Text('ROW2'),
          ],
        ),
      ),
    );
  }

  Column columns() {
    return Column(
      children: [
        const Text("Başladı"),
        Expanded(
          child: ListView(
            //shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade600,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade800,
              ),
            ],
          ),
        ),
        const Text("Bitti"),
      ],
    );
  }
}
