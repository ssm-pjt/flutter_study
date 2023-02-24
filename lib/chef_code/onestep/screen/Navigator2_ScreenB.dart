import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen B'),
      ),
      body: const Center(
          child: Text(
        'Screen B',
        style: TextStyle(fontSize: 24.0),
      )),
    );
  }
}
