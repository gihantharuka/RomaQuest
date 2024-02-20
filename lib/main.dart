import 'package:flutter/material.dart';
import 'package:sample_project/screens/welcomePage.dart';
import 'package:sample_project/theme/dark_theme.dart';
import 'package:sample_project/theme/light_theme.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      home: WelcomePage(),
    );
  }
}
