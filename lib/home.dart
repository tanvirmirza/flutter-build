import 'package:flutter/material.dart';
import 'widgets-day/Day_03/07_pass-data.dart';
import 'widgets-day/Day_03/08_bottom-nav.dart';
import 'widgets-day/Day_03/09_navigation-drawer.dart';
import 'widgets-day/Day_03/10_end-drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            // primarySwatch: Colors.blueGrey,
            appBarTheme: AppBarTheme(
                color: Color(0xFF0E626A),
                centerTitle: true,
                titleSpacing: 5,
                titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
            textTheme: TextTheme(
              headlineLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              bodyLarge: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            )),
        debugShowCheckedModeBanner: false,
        title: " PRACTICE WIDGETS",
        home: Scaffold(
          body: KEndDrawer(),
        ));
  }
}
