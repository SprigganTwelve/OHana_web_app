import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';

class CarouselOrg extends StatefulWidget {
  const CarouselOrg(
      {super.key,
      this.imageListAtom = const [
        ImageAtom(
          link: 'carousel1.jpg',
          fitVal: BoxFit.cover,
          heightVal: 450,
        ),
        ImageAtom(
          link: 'back1.jpg',
        ),
        ImageAtom(
          link: 'carousel3.jpg',
        ),
        ImageAtom(link: 'carousel4.jpg'),
        ImageAtom(link: 'sukuna1.jpg'),
        ImageAtom(link: 'sukuna3.jpg'),
      ],
      this.heightVal = 450});
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
          return SizedBox(
            height: widget.heightVal,
            child: Stack(children: [
              Container(
                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 251, 70, 70),
                ),
                child: image,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    for (var item in widget.imageListAtom)
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(50)),
                          height: 10,
                          width: 10,
                        ),
                      )
                  ],
                ),
              ),
            ]),
          );
        }).toList(),
        options:
            CarouselOptions(height: widget.heightVal, viewportFraction: 1));
  }
}
