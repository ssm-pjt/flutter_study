import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
          ],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
              child: const Text('Go to the Screen B page'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
              child: const Text('Go to the Screen C page'),
            ),
          ]),
        ));
  }
}
