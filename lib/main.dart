import 'package:errandbud1/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(errandBud());
}

class errandBud extends StatelessWidget {
  const errandBud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
