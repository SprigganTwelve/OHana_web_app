import 'package:flutter/material.dart';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(imageType.borderRaiusVal),
      child: Image.asset(
        'assets/images/$link',
        fit: fitVal,
        width: imageType.widthVal,
        height: imageType.heightVal,
      ),
    );
  }
}

enum ImageDimensionType {
  defaultCarouselImage(heightVal: 450, borderRaiusVal: 0),
  standard(
    heightVal: 340,
    widthVal: 420,
    borderRaiusVal: 50,
  ),
  videoImage(
    heightVal: 430,
    widthVal: 400,
    borderRaiusVal: 20,
  ),
  userImage(
    borderRaiusVal: 100,
    heightVal: 150,
    widthVal: 150,
  );

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
