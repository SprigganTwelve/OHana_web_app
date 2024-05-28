import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/box_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class BoxUnderImageMol extends StatelessWidget {
  const BoxUnderImageMol({super.key, this.text = '', required this.imageName});
  final String text;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const BoxShapeAtom(),
        Positioned(
          left: 0,
          bottom: 0,
          child: Transform.translate(
              offset: const Offset(-80, 80),
              child: ImageAtom(
                link: imageName,
                imageType: ImageDimensionType.standard,
              )),
        )
      ],
    );
  }
}
