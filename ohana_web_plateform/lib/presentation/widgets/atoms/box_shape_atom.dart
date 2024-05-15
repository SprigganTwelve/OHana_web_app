import 'package:flutter/material.dart';

class BoxShapeAtom extends StatelessWidget {
  final BoxShape boxShape;
  final double heightVal;
  final double widthVal;
  final Color colorVal;
  const BoxShapeAtom({
    super.key,
    this.boxShape = BoxShape.rectangle,
    this.heightVal = 300.0,
    this.widthVal = 440.0,
    this.colorVal = const Color.fromARGB(255, 132, 193, 243),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthVal,
      height: heightVal,
      decoration: BoxDecoration(color: colorVal, shape: boxShape),
    );
  }
}
