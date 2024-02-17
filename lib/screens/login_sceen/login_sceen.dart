import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Login Page',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}