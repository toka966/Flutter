import 'package:flutter/material.dart';
//import 'package:myfirsty/FirstScreen.dart';
import 'package:myfirsty/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SecondScreen());
  }
}
