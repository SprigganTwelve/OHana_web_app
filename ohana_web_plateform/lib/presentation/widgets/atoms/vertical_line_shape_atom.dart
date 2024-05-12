import 'package:flutter/material.dart';

class VerticalLineShapeAtom extends StatelessWidget {
  final double size;
  const VerticalLineShapeAtom({super.key, this.size = 120});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: 5,
      color: Colors.black,
    );
  }
}
