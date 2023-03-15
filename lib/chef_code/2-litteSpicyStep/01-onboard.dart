import 'package:flutter/material.dart';
import '01-onboardBoard.dart';

/*   플러터 2.0 이후로 변화된 Button 명에 따른 예저 체크
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
    return MaterialApp(
      title: 'Study MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // backgroundColor: Color.fromARGB(255, 36, 34, 34),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyOnBoard(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Center(
        child: Column(children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            tooltip: '샘플링입니다',
          )
        ]),
      ),
    );
  }
}
