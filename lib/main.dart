import 'package:flutter/material.dart';
import 'package:test123/login.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '연습',
      theme: ThemeData(
      ),
      home: AuthPage(),
    );
  }
}
