import 'package:flutter/material.dart';
import 'package:flutter_library/widgets/appbar_action_widget.dart';
import 'package:flutter_library/widgets/button_widget.dart';
import 'package:flutter_library/widgets/custom_scrollview_widget.dart';
import 'package:flutter_library/widgets/gridview_widget.dart';
import 'package:flutter_library/widgets/list_tile_card_widget.dart';
import 'package:flutter_library/widgets/counter_widget.dart';
import 'package:flutter_library/widgets/dropdown_widget.dart';
import 'package:flutter_library/widgets/image_widget.dart';
import 'package:flutter_library/widgets/listview_problem.dart';
import 'package:flutter_library/widgets/listview_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
  //..customAnimation = CustomAnimation();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Library'),
      builder: EasyLoading.init(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ImageWigdets(
                          title: 'Resim Getirme (Internet)',
                        )));
              },
              child: const Text('Resim Getirme (Internet)'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CounterWidget(
                            title: 'Sayaç',
                          )));
                },
                child: const Text('Sayaç')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const DropdownWidget(title: 'Açılır Liste'),
                  ));
                },
                child: const Text('Açılır Liste')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const AppbarActionWidget(title: 'Çubuk Eylemleri'),
                  ));
                },
                child: const Text('Uygulama Çubuğu Eylemleri')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ButtonWidget(
                      title: 'Temel Düğmeler',
                    ),
                  ));
                },
                child: const Text('Basic Butttons')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CardListTileWidget(),
                  ));
                },
                child: const Text('List Tile and Card')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ListViewProblemsWidget(),
                  ));
                },
                child: const Text('List View Problems')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ListViewWidget(),
                  ));
                },
                child: const Text('List View')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GridViewWidget(),
                  ));
                },
                child: const Text('Grid View')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CustomScrollViewWidget(),
                  ));
                },
                child: const Text('Custom Scroll View'))
          ],
        ),
      ),
    );
  }
}
