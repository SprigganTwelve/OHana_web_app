import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';

class CarouselOrg extends StatefulWidget {
  const CarouselOrg(
      {super.key,
      this.imageListAtom = const [
        ImageAtom(link: 'gojo4.jpg'),
        ImageAtom(link: 'gojo5.jpg'),
        ImageAtom(link: 'gojo6.jpg'),
        ImageAtom(link: 'sukuna1.jpg'),
        ImageAtom(link: 'sukuna1.jpg'),
        ImageAtom(link: 'sukuna3.jpg'),
      ],
      this.heightVal = 600});
  final List<ImageAtom> imageListAtom;
  final heightVal;
  @override
  State<CarouselOrg> createState() => _CarouselOrgState();
}

class _CarouselOrgState extends State<CarouselOrg> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
        items: widget.imageListAtom.map((image) {
          return Container(
            width: screenWidth,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 251, 70, 70),
            ),
            child: image,
          );
        }).toList(),
        options:
            CarouselOptions(height: widget.heightVal, viewportFraction: 1));
  }
}
