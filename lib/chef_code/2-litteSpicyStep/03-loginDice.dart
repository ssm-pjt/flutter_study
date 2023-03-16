import 'package:flutter/material.dart';

import '04-dice.dart';

void main() => runApp(const LogIn());

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ], backgroundColor: Colors.redAccent),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            //키보드가 밑에서 올라와서 차지하는 부분을 자동으로 채워주기 위한 Widget
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
                  primaryColor: Colors.teal,
                  inputDecorationTheme: const InputDecorationTheme(
                      labelStyle: TextStyle(
                    color: Colors.teal,
                    fontSize: 15.0,
                  )),
                ),
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: controller,
                        decoration:
                            const InputDecoration(labelText: 'Enter "dice"'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        controller: controller2,
                        decoration: const InputDecoration(
                            labelText: 'Enter "PASSWORD"'),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              )),
              ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (controller.text == 'dice' &&
                        controller2.text == '1234') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const Dice()));
                    } else {
                      showSnackBar(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
              )
            ]),
          );
        }),
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("로그인 정보를 다시 확인 하세요", textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
