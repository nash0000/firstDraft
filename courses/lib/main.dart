import 'package:courses/moduels/welcome/welcome_screen.dart';
import 'package:courses/shared/colors/colors_common.dart';
import 'package:flutter/material.dart';

import 'moduels/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
          color: defaultColor,
        ),
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: WelcomeScreen(),
    );
  }
}
