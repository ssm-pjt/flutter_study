import 'package:flutter/material.dart';

void main() {
  runApp(NavigatorStudy());
}

class NavigatorStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contain Structure Study',
        theme: ThemeData.dark(),
        home: const FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SencondPage()),
              );
            },
            child: const Text('Go to the Second page'),
          ),
        ));
  }
}

class SencondPage extends StatelessWidget {
  const SencondPage({super.key});

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
          child: TextButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (_) => const FirstPage()),
              );
            },
            child: const Text('Go to the First page'),
          ),
        ));
  }
}
