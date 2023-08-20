import 'package:flutter/material.dart';
import 'package:flutter_library/widgets/appbar_action_widget.dart';
import 'package:flutter_library/widgets/button_widget.dart';
import 'package:flutter_library/widgets/dropdown_widget.dart';
import 'package:flutter_library/widgets/gridview_widget.dart';
import 'package:flutter_library/widgets/image_widget.dart';
import 'package:flutter_library/widgets/list_tile_card_widget.dart';
import 'package:flutter_library/widgets/listview_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Araç Kullanımları',
          style: TextStyle(color: Colors.white),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.subject,
            color: Colors.white,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: Container(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  const Divider(
                    indent: 0,
                    endIndent: 0,
                    height: 11,
                    color: Colors.white,
                  ),
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person_outline_rounded),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.deepPurple,
                          size: 14,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Column(children: [
                      Text(
                        'Yunus AYIRGÜL',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        'yayirgul@gmail.com',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '+90 000 000 00 00',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
                  )
                ],
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: ListTile.divideTiles(
              color: const Color.fromARGB(255, 179, 179, 179),
              tiles: [
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'GridView Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'GridView kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const GridViewWidget(),
                    ));
                  },
                ),
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'ListView Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'ListView kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ListViewWidget(),
                    ));
                  },
                ),
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Card and ListTile Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'Card ve ListTile kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CardListTileWidget(),
                    ));
                  },
                ),
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'AppBar Actions Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'AppBar Actions kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AppbarActionWidget(
                          title: 'AppBar Actions Widget'),
                    ));
                  },
                ),
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'DropdownButton Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'DropdownButton kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const DropdownWidget(title: 'Dropdown Widget'),
                    ));
                  },
                ),
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Buttons Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'TextButton, TextButton.icon, ElevatedButton, ElevatedButton.icon, OutlinedButton ve OutlinedButton.icon kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const ButtonWidget(title: 'Buttons Widget'),
                    ));
                  },
                ),
                ListTile(
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Image Widget',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'Image.asset, Image.network ve FadeInImage.assetNetwork kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const ImageWigdets(title: 'Image Widget'),
                    ));
                  },
                ),
              ]).toList(),
        ),
      ),
    );
  }

  Padding TEST(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GridViewWidget()));
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
