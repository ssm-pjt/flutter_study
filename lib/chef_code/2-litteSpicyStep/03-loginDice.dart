import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ]),
        body: SingleChildScrollView(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Center(
              child: Image.asset(
                'assets/img/image_1.jpg',
                width: 100,
                height: 120,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
                child: Theme(
              data: ThemeData(
                primaryColor: Colors.redAccent,
                inputDecorationTheme: const InputDecorationTheme(),
              ),
              child: Container(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(labelText: 'Enter "dice"'),
                    ),
                    TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter "PASSWORD"'),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            )),
            ElevatedButton(
                onPressed: () {}, child: const Icon(Icons.arrow_forward))
          ]),
        ),
      ),
    );
  }
}
