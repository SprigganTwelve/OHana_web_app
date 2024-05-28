import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';

class UnderlinedTitleMol extends StatelessWidget {
  const UnderlinedTitleMol(
      {super.key,
      required this.text,
      this.start = false,
      this.color = Colors.black,
      this.lineSize = 100,
      this.thickness = 5.0,
      this.isH2Title = false,
      this.fontsize});
  final String text;
  final bool start;
  final Color color;
  final double lineSize;
  final double thickness;
  final bool isH2Title;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          start ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        isH2Title
            ? H2TextAtom(
                text: text,
              )
            : H1TextAtom(
                text: text,
                fontSize: fontsize ?? 35, //default value
              ),
        const SizedBox(
          height: 10,
        ),
        Positioned(
          left: 0,
          child: UnderlineAtom(
            color: color,
            size: lineSize,
            thickness: thickness,
          ),
        )
      ],
    );
  }
}
