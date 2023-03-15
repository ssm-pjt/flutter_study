import 'package:flutter/material.dart';
/**
  Builder widget 에 위치 및 Builder widget이 필요한 내용
  Scaffold.of 함수가 따로 ScaffoldMessenger 로 메시지를 띄우는 Class 를 추가 함
  Scaffold.of 를 호출 시, BuilderContext 를 찾을 시, Scaffold 안에 Builder 없이 진행 하게 되면
  호출 오류가 되는 현상은 소스 구성이 
  Widget build(BuildContext context) { 로 시작 되는 부분은 내 부모의 Builder 이기 때문
  하여, 내 widget 안에서 다시 Builder 를 하게 됨에 BuiderContext 를 찾는 샘플
 */

void main() {
  runApp(SnackbarBuilder());
}

class SnackbarBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contain Structure Study',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: const MySnackBar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Hello Flutter! I'll be professional ")));
        },
        child: const Text('ShowMe'),
      ),
    );
  }
}
