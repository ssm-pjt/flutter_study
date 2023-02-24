import 'package:flutter/material.dart';
import 'dart:io';

void main(List<String> args) {
  runApp(const ButtomSample());
}

Future printIps() async {
  for (var interface in await NetworkInterface.list()) {
    print('== Interface: ${interface.name} ==');
    for (var addr in interface.addresses) {
      print(
          '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
    }
  }
}

class ButtomSample extends StatelessWidget {
  const ButtomSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '버튼 입력 관련 재 확인 APP',
      home: MyButtonPage(),
    );
  }
}

class MyButtonPage extends StatelessWidget {
  const MyButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myIp = 'test';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go My Button'),
        actions: const [
          Icon(Icons.print_sharp),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('버튼 클릭 하세요~'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
              ),
              child: const Text('외곽이 둥근버튼'),
            ),
            OutlinedButton(
              onPressed: () {
                printIps();
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: const Text('이건머지??',
                  style: TextStyle(
                    color: Colors.red,
                  )),
            )
          ],
        ),
      ]),
    );
  }
}
