import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/router/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
