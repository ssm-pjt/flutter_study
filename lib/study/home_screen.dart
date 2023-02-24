import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (timer) {
      int? nextpage = pageController.page?.toInt();
      if (nextpage == null) {
        return;
      }

      if (nextpage == 4) {
        nextpage = 0;
      } else {
        nextpage++;
      }

      pageController.animateToPage(nextpage,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
        body: PageView(
      controller: pageController,
      children: [1, 2, 3, 4, 5]
          .map(
            (num) => Image.asset(
              'asset/img/image_$num.jpg',
              fit: BoxFit.cover,
            ),
          )
          .toList(),
    ));
  }
}
