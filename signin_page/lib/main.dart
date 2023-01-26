import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signin_page/SignIn.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign in Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: SignIn(),
    );
  }
}
