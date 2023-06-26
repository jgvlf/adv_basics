import 'package:adv_basics/pages/home.dart';
import 'package:adv_basics/pages/questions_screen.dart';
import 'package:flutter/material.dart';

import '../utils/gradient_container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const [
            Color.fromARGB(255, 109, 22, 176),
            Color.fromARGB(255, 133, 21, 177),
          ],
          child: activeScreen == 'start-screen'
              ? Home(onPressed: switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
