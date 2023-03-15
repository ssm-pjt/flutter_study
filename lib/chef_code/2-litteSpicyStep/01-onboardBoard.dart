import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '01-onboard.dart';

class MyOnBoard extends StatelessWidget {
  const MyOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: ' Wellcom to my app',
            body: 'This is the fisrt page',
            image: Image.asset('assets/board/board01.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
          title: ' Wellcom to my app',
          body: 'This is the fisrt page',
          image: Image.asset('assets/board/board02.jpg'),
        ),
        PageViewModel(
          title: ' Wellcom to my app',
          body: 'This is the fisrt page',
          image: Image.asset('assets/board/board03.jpg'),
        ),
      ],
      done: const Text('done'), // foregroundColor: Colors.red,
      onDone: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const FirstPage()));
      },
      next: const Icon(Icons.arrow_forward),
      globalBackgroundColor: Colors.white,
    );
  }
}

PageDecoration getPageDecoration() {
  return const PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.orange,
      decorationColor: Colors.white,
    ),
  );
}
