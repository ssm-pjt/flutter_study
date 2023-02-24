import 'package:flutter/material.dart';
import 'package:flutter_study/chef_code/onestep/screen/Navigator2_ScreenA.dart';
import 'package:flutter_study/chef_code/onestep/screen/Navigator2_ScreenB.dart';
import 'package:flutter_study/chef_code/onestep/screen/Navigator2_ScreenC.dart';

void main() {
  runApp(const NavigatorStudy());
}

class NavigatorStudy extends StatelessWidget {
  const NavigatorStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contain Structure Study',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => const ScreenC(),
      },
    );
  }
}
