// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final String title;
  const CounterWidget({super.key, required this.title});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint('Build çalıştırıldı...');
    return Scaffold(
      appBar: AppBar(
        leading: Navigator.canPop(context)
            ? IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ))
            : null,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Tuşa basılma miktarı',
            style: TextStyle(fontSize: 24),
          ),
          Text(_counter.toString(),
              style: Theme.of(context).textTheme.displayLarge)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Düğmeye tıklandı...');
          debugPrint('Sayaç Değeri : $_counter');
          increase_counter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void increase_counter() {
    setState(() {
      _counter++;
    });
    debugPrint('Sayaç arttır fonksiyonu çalıştırıldı...');
    debugPrint('SAYAÇ DEĞERİ : $_counter');
  }
}
