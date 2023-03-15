import 'package:flutter/material.dart';

/* 
 플러터 2.0 이후로 변화된 Button 명에 따른 예저 체크
 RaisedButton -> ElevatedButton
 FlatButton -> TextButton
 OutlineButton -> OutlinedButton
*/

void main(List<String> args) {
  runApp(const StudyApp());
}

class StudyApp extends StatelessWidget {
  const StudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Button Sample 테스트',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () {
                debugPrint('TextButton');
              },
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: const Text(
                'A page',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
            onPressed: () {
              debugPrint('Elevate Button');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text('ElevateButton'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text('OutlinedButton'),
          ),
          ButtonBar(
            buttonPadding: const EdgeInsets.all(20.0),
            children: [
              TextButton(
                  onPressed: () {
                    debugPrint('TextButton');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Text(
                    'A page',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Elevate Button');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text('ElevateButton'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
