import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/pages/home.dart';
import 'package:adv_basics/pages/questions_screen.dart';
import 'package:adv_basics/pages/results_screen.dart';
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
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        // selectedAnswers.clear();
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = Home(onPressed: switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lato'),
      home: Scaffold(
        body: GradientContainer(
          const [
            Color.fromARGB(255, 109, 22, 176),
            Color.fromARGB(255, 133, 21, 177),
          ],
          child: screenWidget,
        ),
      ),
    );
  }
}
