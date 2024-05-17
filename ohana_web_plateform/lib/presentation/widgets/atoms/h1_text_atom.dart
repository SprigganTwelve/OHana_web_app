import 'package:flutter/material.dart';

class H1TextAtom extends StatelessWidget {
  final String text;
  final Color color;
  const H1TextAtom({super.key, required this.text, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: color),
    );
  }
}
