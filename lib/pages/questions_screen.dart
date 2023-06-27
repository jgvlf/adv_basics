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
          ...currentQuestions.getShuffleAnswers().map(
            (answer) {
              return AnswerButton(answer, answerQuestion);
            },
          ),
    );
  }
}
