import 'package:flutter/material.dart';

class ImageAtom extends StatelessWidget {
  const ImageAtom(
      {super.key,
      this.heightVal = 300,
      required this.link,
      this.widthVal = 420,
      this.fitVal = BoxFit.cover,
      this.imageType = ImageDimensionType.standard});
  final double heightVal;
  final double widthVal;
  final String link;
  // final double borderRadiusCircularVal;
  final BoxFit fitVal;
  final ImageDimensionType imageType;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(imageType.borderRaiusVal),
      child: Image.asset(
        'assets/images/$link',
        fit: fitVal,
        width: widthVal,
        height: heightVal,
      ),
    );
  }
}

enum ImageDimensionType {
  defaultCarouselImage(
    heightVal: 450.0,
  ),
  standard(
    heightVal: 300,
    widthVal: 420,
    borderRaiusVal: 50,
  ),
  userImage(borderRaiusVal: 100);

  final double? heightVal;
  final double? widthVal;
  final double borderRaiusVal;

  const ImageDimensionType(
      {this.heightVal, this.widthVal, this.borderRaiusVal = 50});

  bool isCarouselImage() {
    return this == ImageDimensionType.defaultCarouselImage;
  }
}

// "assets/images/gojo.jpg",
