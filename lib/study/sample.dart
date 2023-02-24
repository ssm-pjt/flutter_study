import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    final wordPairStr = wordPair.asPascalCase;

    return MaterialApp(
      title: 'First My App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome My App'),
          ),
          body: const Center(
            child: Text('yy'),
          )),
    );
  }
}
