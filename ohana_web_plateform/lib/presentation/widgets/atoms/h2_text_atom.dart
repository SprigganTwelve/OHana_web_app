import 'package:flutter/material.dart';

class H2TextAtom extends StatelessWidget {
  final String text;
  const H2TextAtom({super.key, required this.text, this.color = Colors.black});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, color: color),
    );
  }
}
