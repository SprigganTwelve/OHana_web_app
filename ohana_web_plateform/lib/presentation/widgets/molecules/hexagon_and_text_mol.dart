import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/hexagon_shape_atom.dart';

class HexagonAndTextMol extends StatelessWidget {
  const HexagonAndTextMol(
      {super.key,
      required this.textContent,
      this.textColor = Colors.black,
      this.textFontSize = 20});
  final String textContent;
  final Color textColor;
  final double textFontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        children: [
          const HexagonShapeAtom(),
          Center(
              child: Text(
            textContent,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: textFontSize, color: textColor),
          ))
        ],
      ),
    );
  }
}
