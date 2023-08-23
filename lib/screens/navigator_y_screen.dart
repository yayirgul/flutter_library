import 'package:flutter/material.dart';

class NavigatorYScreen extends StatelessWidget {
  const NavigatorYScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Y Sayfası',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}
