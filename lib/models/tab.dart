import 'package:errandbud1/screens/login_screen.dart';
import 'package:errandbud1/screens/register_screen.dart';
import 'package:flutter/material.dart';

class Tab_Bar extends StatelessWidget {
  const Tab_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        // Register Content
        Register(),
        // Login Content
        Login(),
      ],
    );
  }
}
