// ignore_for_file: non_constant_identifier_names, must_be_immutable, curly_braces_in_flow_control_structures, avoid_print

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _random = Random().nextInt(100);
                      print('Rastgele Sayı : $_random');
                      Navigator.of(context).pop(_random);
                    },
                    child: const Text("Önceki Sayfaya Değerle Dön")),
                ElevatedButton(
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        // 2.Sayfaya gelinip gelinmediğini kontrol etmek için "canPop" kullanıyoruz.
                        print('Navigator.canPop çalıştı.');
                        Navigator.of(context).pop();
                      } else {
                        print('Navigator.canPop çalışmadı.');
                      }
                    },
                    child: const Text(
                        "Önceki Sayfaya (Navigator.canPop) kontrolü ile Dön")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/NavigatorXScreen');
                    },
                    child: const Text(
                      'X Sayfasına (Navigator.pushName) ile Git',
                    )),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () {
        // AppBar'ın "leading" özelliğini kullandığım için onWillPop özelliği devre dışı kalıyor.
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
