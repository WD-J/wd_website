import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wd_website/ui/responsive/responsive.dart';
import 'package:wd_website/ui/screens/desktop/test_home_screen_desktop.dart';
import 'package:wd_website/ui/screens/mobile/home_screen_mobile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (Responsive.isMobile(context)) {
            return HomeScreenMobile();
          } else {
            return TestHomeScreenDesktop();
          }
        },
      ),
    );
  }
}
