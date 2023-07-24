// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppbarActionWidget extends StatefulWidget {
  final String title;
  const AppbarActionWidget({super.key, required this.title});

  @override
  State<AppbarActionWidget> createState() => _AppbarActionWidgetState();
}

class _AppbarActionWidgetState extends State<AppbarActionWidget> {
  List<String> actions = ['Yeni', 'Düzenle', 'Sil'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [Menu(actions)],
      ),
    );
  }
}

Widget Menu(List<String> menu) {
  return Center(
    child: PopupMenuButton<String>(
      itemBuilder: (context) {
        return menu
            .map((m) => PopupMenuItem(value: m, child: Text(m)))
            .toList();
      },
    ),
  );
}
