import 'package:flutter/material.dart';
import 'package:wd_website/ui/screens/about_screen.dart';

import '../screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      case '/about':
        return MaterialPageRoute(
          builder: (_) => AboutScreen(),
        );

      default:
        return null;
    }
  }
}
