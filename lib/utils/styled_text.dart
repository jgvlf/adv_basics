import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.data, {super.key, this.color, this.fontSize});

  final String data;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(context) {
    return Text(
      data,
      style: TextStyle(color: color ?? Colors.white, fontSize: fontSize ?? 24),
      textAlign: TextAlign.center,
    );
  }
}
