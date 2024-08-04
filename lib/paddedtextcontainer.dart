import 'package:flutter/material.dart';

class PaddedTextContainer extends StatelessWidget {
  final String text;
  final Color color;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  const PaddedTextContainer(
      {super.key,
      required this.text,
      required this.color,
      required this.padding,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: padding,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
