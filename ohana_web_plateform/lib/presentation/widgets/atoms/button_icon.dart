import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIconAtom extends StatelessWidget {
  const ButtonIconAtom({super.key, required this.nameSvgFile});
  final String nameSvgFile;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$nameSvgFile',
      width: 50,
      height: 50,
    );
  }
}
