import 'package:flutter/material.dart';

void main() {
  runApp(ContainerStructure());
}

class ContainerStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contain Structure Study',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
          ],
        ),
        body: Container(
          child: Column(children: const <Widget>[]),
        ),
      ),
    );
  }
}
