import 'package:flutter/material.dart';

/*
    ScaffoldMessenger 가 Global Message 로 Builder 를 최상위 Material 의 Builder 정보를 가지고 있음
    하여, 최상위 Builder 를 가지게 되면 전체 페이지에 영향이 감
    페이지 넘어가게 될때 snackbar를 나가게 하고 싶다면
    Builder 위치를 찾게 하기 위해 Builder 를 정의 하고 거기서 ScaffoldMessenger.of 를 사용하게 함
      
*/

void main(List<String> args) {
  runApp(const StudyApp());
}

class StudyApp extends StatelessWidget {
  const StudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SnackBar Builder',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(child: Builder(builder: (ctx) {
      return Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenA(),
                      ));
                },
                child: const Text(
                  'A page',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
              content: Text('I like new Snack bar!'),
              duration: Duration(seconds: 5),
            ));
          },
          child: const Icon(Icons.thumb_up),
        ),
      );
    }));
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(child: Builder(
      builder: (ctx) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
            ],
          ),
          body: Center(
            child: Column(children: [
              const Text(
                'A page',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
                      content: Text('좋아요 취소 합니다.'),
                      duration: Duration(seconds: 5),
                    ));
                  },
                  child: const Text('좋아요 취소'))
            ]),
          ),
        );
      },
    ));
  }
}
