import 'package:flutter/material.dart';

void main() => runApp(obesityCalc());

class obesityCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomerForm(),
    );
  }
}

class MyCustomerForm extends StatefulWidget {
  const MyCustomerForm({super.key});

  @override
  State<MyCustomerForm> createState() => _MyCustomerFormState();
}

class _MyCustomerFormState extends State<MyCustomerForm> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLastValue);
  }

  @override
  void dispose() {
    myController.dispose();

    super.dispose();
  }

  void _printLastValue() {
    debugPrint('두번째 text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비만도 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              onChanged: (text) {
                debugPrint("첫번째 text field: $text");
              },
              controller: myController,
            ),
            TextFormField(
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
