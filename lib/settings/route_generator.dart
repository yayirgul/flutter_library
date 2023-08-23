import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library/models/student_model.dart';
import 'package:flutter_library/screens/navigator_push_screen.dart';
import 'package:flutter_library/screens/navigator_student_detail_screen.dart';
import 'package:flutter_library/screens/navigator_student_list_screen.dart';
import 'package:flutter_library/screens/navigator_x_screen.dart';
import 'package:flutter_library/screens/navigator_y_screen.dart';
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
      case '/NavigatorStudentDetailScreen':
        var student = settings.arguments as Students;
        return _route(NavigatorStudentDetailScreen(student: student), settings);
      case '/NavigatorStudentListScreen':
        return _route(const NavigatorStudentListScreen(), settings);
      case '/NavigatorXScreen':
        return _route(const NavigatorXScreen(), settings);
      case '/NavigatorPushScreen':
        return _route(NavigatorPushScreen(), settings);
      case '/NavigatorYScreen':
        return _route(const NavigatorYScreen(), settings);
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
