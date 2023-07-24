import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String title;
  const ButtonWidget({super.key, required this.title});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () {},
              onLongPress: () {
                debugPrint('Metin düğmesine UZUN basıldı...');
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Metin Düğmesi - 1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.teal;
                    }
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.orange;
                    }
                    return null;
                  }),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  overlayColor: MaterialStateProperty.all(
                      Colors.yellow.withOpacity(0.5))),
              icon: const Icon(Icons.add),
              label: const Text('Metin Düğmesi - 2')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.teal),
              child: const Text(
                'Elevated Button',
                style: TextStyle(color: Colors.white),
              )),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.safety_check),
              label: const Text('Elevated Button - Icon')),
          OutlinedButton(
              onPressed: () {}, child: const Text('Outline Button - 1')),
          OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  side: const BorderSide(color: Colors.purple, width: 2)),
              icon: const Icon(Icons.add),
              label: const Text('Outlined Button - Icon - 1')),
          OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.teal, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              icon: const Icon(Icons.home_max),
              label: const Text('Outlined Button - Icon - 2'))
        ]),
      ),
    );
  }
}
