import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'helpers/empty.view.dart';
import 'views/home/home.view.dart';

/// [AppRouter]
/// This the base router classes where you can registered
/// and customize all the named routes of your app
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(builder: (_) {
          return EmptyView();
        });
    }
  }
}
