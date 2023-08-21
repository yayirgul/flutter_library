// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';

class NavigatorPushScreen extends StatelessWidget {
  NavigatorPushScreen({super.key});

  late int _random = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WillPopScope',
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading:
              false, // AppBar'daki geri dönüş düğmesini iptal ediyor
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              if (_random == 0) {
                _random = Random().nextInt(100);
                Navigator.pop(context, _random);
              } else {
                Navigator.pop(context);
              }
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _random = Random().nextInt(100);
                    // ignore: avoid_print
                    print('Rastgele Sayı : $_random');
                    Navigator.of(context).pop(_random);
                  },
                  child: const Text("Geri")),
            ],
          ),
        ),
      ),
      onWillPop: () {
        // AppBar'ın "leading" özelliğini kullandığım onWillPop özelliği devre dışı kalıyor.
        debugPrint('onWillPop kısmı çalıştı...');
        if (_random == 0) {
          _random = Random().nextInt(100);
          Navigator.pop(context, _random);
        }
        return Future.value(true);
      },
    );
  }
}
