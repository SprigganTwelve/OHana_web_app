import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Logo extends StatelessWidget {
  double heightLogo = 100;
  double widthImage = 100;
  Logo({required this.heightLogo, required this.widthImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/gojo.jpg',
      width: heightLogo,
      height: widthImage,
      fit: BoxFit.cover,
    );
  }
}
