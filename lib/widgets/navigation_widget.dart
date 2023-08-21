import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library/screens/navigator_push_screen.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigations',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: ListTile.divideTiles(
              color: const Color.fromARGB(255, 179, 179, 179),
              tiles: [
                ListTile(
                  title: const Text(
                    'Navigator.Push',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'Navigator.Push (CupertinoPageRoute) ile WillPopScope kullanımı',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () async {
                    // Gittiğim sayfadan değer alabilmek için "async ve await" yöntemini
                    int? v = await Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (c) => NavigatorPushScreen()));

                    // ignore: avoid_print
                    print("Gelen Değer : $v");
                  },
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]).toList(),
        ),
      ),
    );
  }
}
