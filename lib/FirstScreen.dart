import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc67c4e),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image(image: AssetImage('Assets/Logo.png')),
        ),
      ),
    );
  }
}
