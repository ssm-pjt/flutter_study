// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_study/chef_code/onestep/1-16-drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Appbar icon menu'),
          centerTitle: true,
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('shopping_basket button is clicked');
                },
                icon: const Icon(Icons.shopping_basket)),
            IconButton(
                onPressed: () {
                  debugPrint('search button is clicked');
                },
                icon: const Icon(Icons.search)),
          ],
        ),
        drawer: const MyDrawer());
  }
}
