import 'package:flutter/material.dart';

class ImageAtom extends StatelessWidget {
  const ImageAtom(
      {super.key,
      this.heightVal = 300,
      required this.link,
      this.widthVal = 420,
      this.borderRadiusCircularVal = 0});
  final double heightVal;
  final double widthVal;
  final String link;
  final double borderRadiusCircularVal;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadiusCircularVal),
      child: Image.asset(
        'assets/images/$link',
        fit: BoxFit.cover,
        width: widthVal,
        height: heightVal,
      ),
    );
  }
}

// "assets/images/gojo.jpg",
