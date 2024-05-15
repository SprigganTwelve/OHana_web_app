import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIconAtom extends StatelessWidget {
  const ButtonIconAtom(
      {super.key,
      required this.nameSvgFile,
      this.color = Colors.black,
      this.borderSideBottom = BorderSide.none,
      this.backColor = Colors.transparent,
      this.heightVal = 20,
      this.widthVal = 20,
      this.radius = 0});
  final String nameSvgFile;
  final Color color;
  final BorderSide borderSideBottom;
  final Color backColor;
  final double heightVal;
  final double widthVal;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: borderSideBottom),
          borderRadius: BorderRadius.circular(radius),
          color: backColor,
        ),
        child: SvgPicture.asset(
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          'assets/svg/$nameSvgFile',
          width: widthVal,
          height: heightVal,
        ),
      ),
    );
  }
}
