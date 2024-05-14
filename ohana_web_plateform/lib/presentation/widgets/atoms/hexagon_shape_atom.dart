import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class HexagonShapeAtom extends StatelessWidget {
  final Color color;
  const HexagonShapeAtom({
    super.key,
    this.color = const Color(0xffffffff),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: color,
        shape: const PolygonBorder(
          side: BorderSide(color: Color(0xfff0f0f0), width: 3),
          sides: 6,
          borderRadius: 5.0, // Optional: to give the hexagon rounded corners.
        ),
      ),
    );
  }
}
