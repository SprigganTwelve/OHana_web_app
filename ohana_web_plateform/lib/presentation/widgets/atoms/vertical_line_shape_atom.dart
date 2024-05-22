import 'package:flutter/material.dart';

class VerticalLineShapeAtom extends StatelessWidget {
  final double size;
  final Color color;
  const VerticalLineShapeAtom({
    super.key,
    this.size = 120,
    this.color = Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    return Container(height: size, width: 5, color: color);
  }
}
