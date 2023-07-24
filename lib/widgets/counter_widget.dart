import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final String title;
  const CounterWidget({super.key, required this.title});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
