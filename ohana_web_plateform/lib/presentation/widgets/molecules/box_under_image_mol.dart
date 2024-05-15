import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/box_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';

class BoxUnderImageMol extends StatelessWidget {
  const BoxUnderImageMol({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BoxShapeAtom(),
        Positioned(
          left: 0,
          bottom: 0,
          child: Transform.translate(
              offset: const Offset(-70, 70),
              child: const ImageAtom(link: 'gojo.jpg')),
        )
      ],
    );
  }
}
