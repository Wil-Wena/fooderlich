import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlih_theme.dart';
import 'cards/Card1.dart';
import 'cards/Card2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(theme: theme, home: MyWidget());
  }
}
