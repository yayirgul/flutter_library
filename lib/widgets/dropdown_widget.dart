import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final String title;
  const DropdownWidget({super.key, required this.title});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? selected;
  List<String> countries = ['Turkey', 'Japanse', 'Russia', 'ABD'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DropdownButton(
          hint: const Text('Ülke Seçiniz'),
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          style: const TextStyle(color: Colors.teal),
          items: countries
              .map((item) =>
                  DropdownMenuItem<String>(value: item, child: Text(item)))
              .toList(),
          value: selected,
          onChanged: (String? selectedItem) {
            setState(() {
              debugPrint('onChanged fonksiyonu çalıştırıldı...');
              debugPrint('Seçilen Değer : $selectedItem');
              selected = selectedItem;
            });
          },
        ),
      ),
    );
  }
}
