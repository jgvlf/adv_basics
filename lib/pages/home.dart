import 'package:adv_basics/utils/styled_text.dart';
import 'package:adv_basics/utils/styled_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({this.onPressed, super.key});
  final void Function()? onPressed;

  void start() {
    print('Olá');
  }

  @override
  Widget build(context) {
    return StyledWidget(
      child: Column(
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
            onPressed: () {
              Navigator.pushNamed(context, '/quiz');
              start();
            },
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
      ),
    );
  }
}
