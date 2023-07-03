import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/utils/answer_button.dart';
import 'package:adv_basics/utils/styled_text.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(
      () {
        currentQuestionIndex++;
      },
    );
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText(
            currentQuestions.text,
            color: Colors.white,
            fontSize: 16,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestions.getShuffleAnswers().map(
            (answer) {
              return AnswerButton(
                answer,
                () {
                  answerQuestion(answer);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
