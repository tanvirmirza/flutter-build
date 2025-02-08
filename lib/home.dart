import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: " PRACTICE WIDGETS",
        home: Scaffold(
          body: Text('Hello World'),
        ));
  }
}
