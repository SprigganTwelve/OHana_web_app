import 'package:flutter/material.dart';

class UnderlineAtom extends StatelessWidget {
  final double size;
  const UnderlineAtom(
      {super.key,
      required this.size,
      this.color = Colors.black,
      required this.thickness});
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
