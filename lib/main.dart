import 'package:flutter/material.dart';
import 'Welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:WelcomePage(),
    );
  }
}

