import 'package:flutter/material.dart';
import 'widgets-day/Day_04/01_theme.dart';
import 'widgets-day/Day_04/09_tabbar-view.dart';
import 'widgets-day/Day_04/10_reuseble-custom-widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: KTheme(),
        debugShowCheckedModeBanner: false,
        title: "PRACTICE WIDGETS",
        home: KTabbarView());
  }
}
