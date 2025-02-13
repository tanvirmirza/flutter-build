import 'package:flutter/material.dart';
import 'widgets-day/Day_03/09_navigation-drawer.dart';
import 'widgets-day/Day_04/01_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: KTheme(),
        debugShowCheckedModeBanner: false,
        title: "PRACTICE WIDGETS",
        home: KNavDrawer());
  }
}
