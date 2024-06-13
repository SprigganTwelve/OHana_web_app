import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ImageAtom extends StatelessWidget {
  const ImageAtom(
      {super.key,
      required this.link,
      this.fitVal = BoxFit.cover,
      this.imageType,
      this.heightVal,
      this.widthVal,
      this.border});

  final String link;
  // final double borderRadiusCircularVal;
  final BoxFit fitVal;
  final double? widthVal;
  final BorderRadiusGeometry? border;
  final double? heightVal;
  final ImageDimensionType? imageType;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: imageType?.border ?? border ?? BorderRadius.zero,
      child: Image.asset(
        'assets/images/$link',
        fit: fitVal,
        width: widthVal ?? imageType?.widthVal,
        height: heightVal ?? imageType?.heightVal,
      ),
    );
  }
}
