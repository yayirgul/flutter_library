import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library/screens/navigator_x_screen.dart';
import 'package:flutter_library/widgets/home_widget.dart';

class RouteGenerator {
  static Route<dynamic>? _route(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          builder: (context) => widget, settings: settings);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => widget, settings: settings);
    } else {
      return MaterialPageRoute(
          builder: (context) => widget, settings: settings);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _route(const HomeWidget(), settings);
      case '/NavigatorXScreen':
        return _route(const NavigatorXScreen(), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('404'),
            ),
            body: const Center(child: Text('Sayfa bulunamadı')),
          ),
        );
    }
  }
}
