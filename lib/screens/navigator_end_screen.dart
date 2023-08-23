import 'package:flutter/material.dart';

class NavigatorEndScreen extends StatelessWidget {
  const NavigatorEndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Son Sayfa',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}
