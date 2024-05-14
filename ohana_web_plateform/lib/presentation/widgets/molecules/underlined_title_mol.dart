import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';

class UnderlinedTitleMol extends StatelessWidget {
  const UnderlinedTitleMol({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        H1TextAtom(text: text),
        const SizedBox(
          height: 10,
        ),
        const Positioned(
          left: 0,
          child: UnderlineAtom(),
        )
      ],
    );
  }
}
