import 'package:flutter/material.dart';
import 'package:wd_website/ui/screens/about_screen.dart';
import 'package:wd_website/ui/screens/contact_screen.dart';
import 'package:wd_website/ui/screens/work_screen.dart';

import '../screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => HomeScreen(),
        );

      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => AboutScreen(),
        );

      case '/work':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => WorkScreen(),
        );

      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ContactScreen(),
        );
      default:
        return null;
    }
  }
}
