import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/utils/answer_button.dart';
import 'package:adv_basics/utils/styled_text.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestions = questions[0];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StyledText(
          currentQuestions.text,
          color: Colors.white,
          fontSize: 16,
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(
          currentQuestions.answers[0],
          () {},
        ),
        AnswerButton(
          currentQuestions.answers[1],
          () {},
        ),
        AnswerButton(
          currentQuestions.answers[2],
          () {},
        ),
        AnswerButton(
          currentQuestions.answers[3],
          () {},
        ),
      ],
    );
  }
}
