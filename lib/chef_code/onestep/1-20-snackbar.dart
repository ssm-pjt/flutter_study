import 'package:flutter/material.dart';

void main() => runApp(SnackBarV3());

class SnackBarV3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contain Structure Study',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: const MySnackBar(),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // RaiseButton -> TextButton
      child: TextButton(
        child: const Text(
          'Show Snack Bar',
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hellow',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
