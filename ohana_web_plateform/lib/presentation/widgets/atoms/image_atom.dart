import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ImageAtom extends StatelessWidget {
  const ImageAtom(
      {super.key,
      required this.link,
      this.fitVal = BoxFit.cover,
      this.imageType = ImageDimensionType.standard});

  final String link;
  // final double borderRadiusCircularVal;
  final BoxFit fitVal;
  final ImageDimensionType imageType;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$link',
      fit: fitVal,
      width: imageType.widthVal,
      height: imageType.heightVal,
    );
  }
}
