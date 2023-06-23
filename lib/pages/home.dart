import 'package:adv_basics/utils/styled_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({this.onPressed, super.key});
  final void Function()? onPressed;

  void start() {}

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 550,
          color: const Color.fromARGB(127, 255, 255, 255),
        ),
        const SizedBox(
          height: 100,
        ),
        const StyledText('Learn Flutter the fun way!'),
        const SizedBox(
          height: 80,
        ),
        OutlinedButton.icon(
          onPressed: onPressed ?? () {},
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: Container(
            padding: const EdgeInsets.all(10),
            child: const StyledText(
              'Start Quiz',
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
