import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  final Map<String, dynamic> coords;
  ShapePainter({required this.coords});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = Colors.blue;
    final path = Path();
    if (coords.containsKey('pointeur') && coords.containsKey('points')) {
      final Map<String, dynamic> pointerCoords = coords['pointeur'];
      final double pointerX = pointerCoords['width'];
      final double pointerY = pointerCoords['height'];
      path.moveTo(pointerX, pointerY);

      final List<dynamic> pointsList = coords['points'];

      for (var point in pointsList) {
        final Map<String, dynamic> pointCoords = point;
        final double pointX = pointCoords['width'];
        final double pointY = pointCoords['height'];
        path.lineTo(pointX, pointY);
      }

      path.close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


/*

coords {
  pointeur: {
      width: 30,
      height: 20
  },
  points:[
    {
      width: 30,
      height: 20
    }
    {
      width: 30,
      height: 20
    }
  ]

}

*/