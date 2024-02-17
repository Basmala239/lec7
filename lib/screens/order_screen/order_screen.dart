import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      alignment: Alignment.center,
      child: const Text(
        'Order Page',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}