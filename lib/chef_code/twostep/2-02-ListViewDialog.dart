import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

var animals_nm = [
  '테스트1',
  '테스트2',
  '테스트3',
  '테스트4',
  '테스트5',
  '테스트6',
  '테스트7',
  '테스트8',
  '테스트9',
  '테스트10',
  '테스트11',
  '테스트12',
];
var animals_img = [
  'assets/animals/1.png',
  'assets/animals/2.png',
  'assets/animals/3.png',
  'assets/animals/4.png',
  'assets/animals/5.png',
  'assets/animals/6.png',
  'assets/animals/7.png',
  'assets/animals/8.png',
  'assets/animals/9.png',
  'assets/animals/10.png',
  'assets/animals/11.png',
  'assets/animals/12.png',
];
var animals_desc = [
  '테스트1',
  '테스트2',
  '테스트3',
  '테스트4',
  '테스트5',
  '테스트6',
  '테스트7',
  '테스트8',
  '테스트9',
  '테스트10',
  '테스트11',
  '테스트12',
];

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                debugPrint('Check${animals_nm[index]}');
                showDialogView(context);
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(animals_img[index])),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                          child: Row(
                        children: [
                          Text(
                            animals_nm[index],
                            style: const TextStyle(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(animals_desc[index]),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: animals_nm.length),
    );
  }
}

void showDialogView(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Basic dialog title'),
        content: const Text('A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.'),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Disable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Enable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
