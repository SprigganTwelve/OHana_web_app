import 'package:flutter/material.dart';

class UnderlineAtom extends StatelessWidget {
  final double size;
  const UnderlineAtom(
      {super.key,
      this.size = 100,
      this.color = Colors.black,
      this.thickness = 5.0});
  final Color color;
  final double thickness;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: thickness,
      width: size,
      color: color,
    );
  }
}
