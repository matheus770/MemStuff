import 'package:flutter/material.dart';
import 'package:memstuff/core/theme.dart';
import 'core/app_const.dart';
import 'helpers/service_locator_helper.dart';
import 'pages/home_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTitleHome,
      theme: mAppTheme,
      home: HomePage(),
    );
  }
}
