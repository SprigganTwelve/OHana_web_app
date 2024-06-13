import 'package:flutter/material.dart';

class H1TextAtom extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const H1TextAtom({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: 2,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.bold, color: color),
    );
  }
}
