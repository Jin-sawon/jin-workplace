import 'package:flutter/material.dart';
import 'package:test123/data/join_or_login.dart';
import 'package:test123/screens/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<JoinOrLogin>.value(
          value: JoinOrLogin(),
          child: AuthPage()),
    );
  }
}
