import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/vertical_line_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class CarouselOrg extends StatefulWidget {
  const CarouselOrg({
    super.key,
    this.imageListAtom = const [
      ImageAtom(
        link: 'carousel1.jpg',
        fitVal: BoxFit.cover,
        imageType: ImageDimensionType.defaultCarouselImage,
      ),
      ImageAtom(
        link: 'back1.jpg',
        imageType: ImageDimensionType.defaultCarouselImage,
      ),
      ImageAtom(
        link: 'carousel3.jpg',
        imageType: ImageDimensionType.defaultCarouselImage,
      ),
      ImageAtom(
        link: 'carousel4.jpg',
        imageType: ImageDimensionType.defaultCarouselImage,
      ),
      ImageAtom(
        link: 'sukuna1.jpg',
        imageType: ImageDimensionType.defaultCarouselImage,
      ),
      ImageAtom(
        link: 'sukuna3.jpg',
        imageType: ImageDimensionType.defaultCarouselImage,
      ),
    ],
    this.heightVal = 450,
  });
  final List<ImageAtom> imageListAtom;
  final double heightVal;

  @override
  State<CarouselOrg> createState() => _CarouselOrgState();
}

class _CarouselOrgState extends State<CarouselOrg> {
  final GetdotController dotsController = Get.put(GetdotController());
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CarouselSlider(
              items: widget.imageListAtom.map((image) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    // borderRadius: BorderRadius.circular(20)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), child: image),
                );
              }).toList(),
              options: CarouselOptions(
                  height: 600,
                  viewportFraction: 1,
                  onPageChanged: (index, _) =>
                      dotsController.updatePageIndicator(index))),
          _getTextMessage(),
          DotsWidgetView(
            slideNumber: widget.imageListAtom.length,
            dotInstanceController: dotsController,
          )
        ],
      ),
    );
  }

  _getTextMessage() {
    return const Positioned(
      top: 300,
      child: Padding(
        padding: EdgeInsets.only(left: 40),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            VerticalLineShapeAtom(
              color: Colors.purple,
            ),
            Text(
              "Les news D'OHana",
              style: TextStyle(fontSize: 50, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class GetdotController extends GetxController {
  final carouselCurrentIndex = 0.obs;
  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}

class DotsWidgetView extends StatelessWidget {
  const DotsWidgetView(
      {super.key,
      required this.slideNumber,
      required this.dotInstanceController});
  final int slideNumber;
  final primaryColor = Colors.purple;
  final secondColor = Colors.white;
  final double widthVal = 21.5;
  final double thickeness = 8.0;
  final GetdotController dotInstanceController;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: ImageDimensionType.defaultCarouselImage.heightVal,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var i = 0; i <= slideNumber; i++)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: widthVal,
                    height: thickeness,
                    decoration: BoxDecoration(
                        color:
                            dotInstanceController.carouselCurrentIndex.value ==
                                    i
                                ? primaryColor
                                : secondColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
