import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogoAtom extends StatelessWidget {
  double heightLogo;
  double widthImage;
  LogoAtom({this.heightLogo = 100, this.widthImage = 100});

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
