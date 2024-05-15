import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogoAtom extends StatelessWidget {
  double heightLogo;
  double widthImage;
  LogoAtom({super.key, this.heightLogo = 100, this.widthImage = 100});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 5, bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          'assets/images/logo.png',
          width: heightLogo,
          height: widthImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
