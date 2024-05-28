import 'package:flutter/material.dart';

class BoxShapeAtom extends StatelessWidget {
  final BoxShape boxShape;
  final double heightVal;
  final double widthVal;
  final Color colorVal;
  // final String text;
  const BoxShapeAtom({
    super.key,
    this.boxShape = BoxShape.rectangle,
    this.heightVal = 300.0,
    this.widthVal = 440.0,
    this.colorVal = Colors.purple,
    /*this.text = "" */
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthVal,
      height: heightVal,
      decoration: BoxDecoration(color: colorVal, shape: boxShape),
      // child: Align(
      //   alignment: Alignment.topCenter,
      //   child: Text(
      //     text,
      //     style: const TextStyle(color: Colors.white),
      //   ),
      // ),
    );
  }
}
