import 'package:flutter/material.dart';

void main() => runApp(firstMyApp());

class firstMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String fisrtMyAppStr = 'My first App';

    return MaterialApp(
      title: fisrtMyAppStr,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: firstMyAppPage(),
    );
  }
}

class firstMyAppPage extends StatefulWidget {
  const firstMyAppPage({Key? key}) : super(key: key);

  @override
  _firstMyAppPage createState() => _firstMyAppPage();
}

class _firstMyAppPage extends State<firstMyAppPage> {
  String textToShow = ' I like Flutter';
  int incrementCnt = 0;

  void _updateText() {
    setState(() {
      textToShow = 'Flutter Wow';
      incrementCnt += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first App'),
      ),
      body: Text('$textToShow , $incrementCnt'),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: const Icon(Icons.update),
      ),
    );
  }
}
