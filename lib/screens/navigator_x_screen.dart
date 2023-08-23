import 'package:flutter/material.dart';

class NavigatorXScreen extends StatelessWidget {
  const NavigatorXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "X Sayfası",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text('(isFirst) Giriş Sayfaya Git')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .popUntil((route) => route.settings.name == '/');
                  },
                  child: const Text('(/) Giriş Sayfasına Git')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) =>
                        route.settings.name ==
                        '/NavigatorPushScreen'); // '/NavigatorPushScreen' yolu route_generator.dart dosyasında tanımlanmalıdır.
                  },
                  child: const Text('Önceki Sayfaya Git')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/NavigatorYScreen',
                        (route) => route
                            .isFirst); // '/NavigatorPushScreen' yolu route_generator.dart dosyasında tanımlanmalıdır.
                  },
                  child: const Text(
                      'Y Sayfasına Git. Geri Yaparsa Giriş Sayfasına Git'))
            ],
          ),
        ),
      ),
    );
  }
}
