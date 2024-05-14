import 'package:flutter/material.dart';

class BoxShapeAtom extends StatelessWidget {
  final BoxShape boxShape;
  const BoxShapeAtom({super.key, this.boxShape = BoxShape.rectangle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      height: 400,
      color: Colors.green,
      decoration: BoxDecoration(shape: boxShape),
    );
  }
}
