// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CardListTileWidget extends StatelessWidget {
  const CardListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card List Tile'),
      ),
      body: Center(
          child: ListView(
        reverse: false,
        children: [
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
          column_cards(),
        ],
      )),
    );
  }

  SingleChildScrollView card_single_child_scroll() {
    return SingleChildScrollView(
      child: Column(children: [
        column_cards(),
        column_cards(),
        column_cards(),
        column_cards(),
      ]),
    );
  }

  Padding column_cards() {
    String peaImgUrl =
        'https://images.unsplash.com/photo-1690023603728-f4fc93cf56c9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2574&q=80';
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        children: [
          Card(
            color: const Color.fromARGB(255, 217, 200, 246),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(peaImgUrl),
              ),
              title: const Text('Title'),
              subtitle: const Text('Sub Title'),
              trailing: const Icon(Icons.delete_outline),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 187, 148, 255),
            thickness: 1,
            height: 20,
            indent: 150,
            endIndent: 150,
          )
        ],
      ),
    );
  }
}
