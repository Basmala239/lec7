import 'package:flutter/material.dart';

class JASAScreen extends StatelessWidget {
  const JASAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'JASA Page',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}