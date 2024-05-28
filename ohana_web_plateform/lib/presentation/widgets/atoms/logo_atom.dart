import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogoAtom extends StatelessWidget {
  double heightLogo;
  LogoAtom({super.key, this.heightLogo = 150, this.paddingLeft = 45});
  final double paddingLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft, top: 5, bottom: 5),
      child: Image.asset(
        'assets/images/logo.png',
        width: heightLogo,
        fit: BoxFit.cover,
      ),
    );
    /*Padding(
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
    );*/
  }
}
