import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';

class UnderlinedTitleMol extends StatelessWidget {
  const UnderlinedTitleMol(
      {super.key,
      required this.text,
      this.start = false,
      this.color = Colors.black,
      this.lineSize = 100});
  final String text;
  final bool start;
  final Color color;
  final double lineSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          start ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        H1TextAtom(text: text),
        const SizedBox(
          height: 10,
        ),
        Positioned(
          left: 0,
          child: UnderlineAtom(
            color: color,
            size: lineSize,
          ),
        )
      ],
    );
  }
}
