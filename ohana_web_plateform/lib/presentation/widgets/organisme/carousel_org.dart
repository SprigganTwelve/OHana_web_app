import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/vertical_line_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ImageCarouselOrg extends StatefulWidget {
  const ImageCarouselOrg({
    super.key,
    this.imageListAtom = const [
      'dev12.jpg',
      'dev7.jpg',
      'dev8.jpg',
      'dev5.jpg',
      'dev9.jpg',
      'dev11.jpg',
    ],
  });
  final List<String> imageListAtom;

  @override
  State<ImageCarouselOrg> createState() => _CarouselOrgState();
}

class _CarouselOrgState extends State<ImageCarouselOrg> {
  final GetdotController dotsController = Get.put(GetdotController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: ImageDimensionType.defaultCarouselImage.heightVal,
            viewportFraction: 0.6,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              dotsController.updatePageIndicator(index);
            },
          ),
          items: widget.imageListAtom.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: screenWidth,
                  clipBehavior: Clip.none,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: ImageAtom(link: imagePath),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 20, // Adjust the position as needed
          left: 0,
          right: 0,
          child: DotsWidgetView(
            slideNumber: widget.imageListAtom.length,
            dotInstanceController: dotsController,
          ),
        ),
      ],
    );
  }

  Widget _getTextMessage() {
    return Positioned(
      top: 300,
      left: 40,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const VerticalLineShapeAtom(
            color: Colors.purple,
          ),
          const Text(
            "Les news D'OHana",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class GetdotController extends GetxController {
  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
  }
}

class DotsWidgetView extends StatelessWidget {
  const DotsWidgetView({
    super.key,
    required this.slideNumber,
    required this.dotInstanceController,
  });

  final int slideNumber;
  final primaryColor = Colors.purple;
  final secondColor = Colors.white;
  final double widthVal = 21.5;
  final double thickeness = 8.0;
  final GetdotController dotInstanceController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < slideNumber; i++)
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: widthVal,
                height: thickeness,
                decoration: BoxDecoration(
                  color: dotInstanceController.carouselCurrentIndex.value == i
                      ? primaryColor
                      : secondColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
