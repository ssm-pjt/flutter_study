import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BBANTO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.amber[800],
                    backgroundImage:
                        const AssetImage('assets/bbanto/halloween.gif'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.grey[850],
                  thickness: 0.5,
                  endIndent: 30.0,
                ),
                const Text(
                  'NAME',
                  style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'BBANTO',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'BBANTO POWER LEVEL',
                  style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  '14',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: const [
                    Icon(Icons.check_circle_outline_outlined),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Using lightsaber',
                      style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.check_circle_outline_outlined),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'face hero tattoo',
                      style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.check_circle_outline_outlined),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'fire flames',
                      style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                    ),
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.amber[800],
                    backgroundImage:
                        const AssetImage('assets/bbanto/smiley.gif'),
                    radius: 60.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
