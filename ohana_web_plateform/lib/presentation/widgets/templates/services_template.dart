import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ServicesTemplate extends StatelessWidget {
  const ServicesTemplate({super.key});
  final int index = 0; //for example

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: mediaScreenWidth,
        child: Stack(
          children: [
            // MAIN CONTENT
            SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(
                  height: NAV_BAR_HEIGHT,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 90,
                    ),
                    _getServiceView(),
                    const SizedBox(
                      width: 20,
                    ),
                    _getOtherServices()
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                FooterOrg(mediaScreenWidth: mediaScreenWidth)
              ],
            )),
            // NAVBAR
            const Positioned(
                top: 0, left: 0, right: 0, child: CustomNavigationBar()),
          ],
        ),
      ),
    );
  }

//OPTIONS
  _getOptions() {}

//DEV
  _getServiceView() {
    return SizedBox(
      width: ImageDimensionType.serviceImage.widthVal,
      height: ImageDimensionType.serviceImage.heightVal,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: ImageAtom(
              link: LIST_OF_SERVICES[index]['image'],
              imageType: ImageDimensionType.serviceImage,
            ),
          ),
          Positioned(bottom: -170, child: _getTextService())
        ],
      ),
    );
  }

  _getKeyWords(int index) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // SizedBox(
        //   width: 140,
        // ),
        for (var item in LIST_OF_SERVICES[index]['keyWords'])
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ButtonAtom(item, type: ButtonType.purple))
      ],
    );
  }

  Positioned _getTextService() {
    return Positioned(
      bottom: -20,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: const [
              BoxShadow(spreadRadius: 5, color: Colors.grey, blurRadius: 5)
            ]),
        width: 1000,
        height: 340,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              const H1TextAtom(text: 'Développement mobile'),
              const SizedBox(
                height: 20,
              ),
              _getKeyWords(index),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 700,
                  child: BodyTextAtom(
                      text: LIST_OF_SERVICES[index]['text'],
                      boldTextList: LIST_OF_SERVICES[index]['boldTextList']),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

//OTHERS
  _getOtherServices() {
    return Column(
      children: [
        for (var j = 0; j < LIST_OF_SERVICES.length; j++)
          _getSingleCard(
              image: LIST_OF_SERVICES[j]['image'],
              title: LIST_OF_SERVICES[j]['title'])
      ],
    );
  }

  _getSingleCard({image, title}) {
    return Container(
      width: 700,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.5), // Couleur de l'ombre avec opacité
            spreadRadius: 5, // Rayon de diffusion de l'ombre
            blurRadius: 7, // Rayon de flou de l'ombre
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageAtom(
            link: image,
            widthVal: 120,
            heightVal: 120,
            border: BorderRadius.circular(COMPLETE_CIRCULAR_ITEM),
          ),
          const SizedBox(
            width: 10,
          ),
          H1TextAtom(text: title)
        ],
      ),
    );
  }

//-----Singles View----
}
