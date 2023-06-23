import 'package:flutter/material.dart';

import 'gradient_container.dart';

class StyledWidget extends StatelessWidget {
  const StyledWidget({this.child, super.key});

  final Widget? child;

  @override
  Widget build(context) {
    return Scaffold(
      body: GradientContainer(
        const [
          Color.fromARGB(255, 109, 22, 176),
          Color.fromARGB(255, 133, 21, 177),
        ],
        child: child,
      ),
    );
  }
}
