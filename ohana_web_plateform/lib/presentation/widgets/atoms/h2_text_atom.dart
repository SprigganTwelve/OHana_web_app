import 'package:flutter/material.dart';

class H2TextAtom extends StatelessWidget {
  final String text;
  const H2TextAtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 25),
    );
  }
}
