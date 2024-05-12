import 'package:flutter/material.dart';

class H1TextAtom extends StatelessWidget {
  final String text;
  const H1TextAtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}
