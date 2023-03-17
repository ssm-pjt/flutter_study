import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.redAccent,
        body: Container(child: const Text('Dice')),
      ),
    );
  }
}
