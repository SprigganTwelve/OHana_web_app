import 'package:flutter/material.dart';

class ImagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final imageRect = Rect.fromLTWH(0, 0, 200, 200);
    final clipRect = Rect.fromLTWH(50, 50, 100, 100);

    canvas.clipRect(clipRect);

    final image = NetworkImage('../assets/images/sukuna4.jpg');
    image
        .resolve(ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo info, bool _) {
      canvas.drawImageRect(info.image, imageRect, imageRect, paint);
    }));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
