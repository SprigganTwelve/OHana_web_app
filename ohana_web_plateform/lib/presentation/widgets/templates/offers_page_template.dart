import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/path_custompainter_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class OffersPageTemplate extends StatelessWidget {
  const OffersPageTemplate({super.key});

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
                _getHomeBanner(
                  mediaScreenWidth,
                ),
                const SizedBox(
                  height: 50,
                ),
                _getOffersItems(),
                const SizedBox(
                  height: 70,
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

// MAIN BANNER
  _getHomeBanner(mediaScreenWidth) {
    return Stack(
      children: [
        Container(
          height: ImageDimensionType.defaultCarouselImage.heightVal,
          width: mediaScreenWidth,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: const ImageAtom(
            link: 'offers.jpg',
            imageType: ImageDimensionType
                .defaultCarouselImage, //fit the height of container
          ),
        ),
        SizedBox(
            width: mediaScreenWidth,
            height: ImageDimensionType
                .defaultCarouselImage.heightVal, //Container Height
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, //start at the start
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const H1TextAtom(
                  text: "TROUVER COMMENT PARTICIPER AVEC NOUS",
                  color: Colors.white,
                  fontSize: 60,
                ),
                _getSearchBar(),
                const SizedBox(
                  height: 10,
                ),
                _getOffersCategories(),
                const SizedBox(
                  height: 100,
                ),
              ],
            )),
      ],
    );
  }

  _getSearchBar() {
    String? selectedValue;
    Color purpleColor = Colors.purple;
    Color whiteColor = Colors.white;
    final List<String> options = [
      'Du plus récent',
      'Stage',
      'Alternance',
      'CDI',
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SearchBar(
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
              (states) => const TextStyle(
                    color: Colors.black,
                  )),
          overlayColor:
              MaterialStateProperty.resolveWith<Color>((states) => whiteColor),
          hintText: 'Search...',
        ),
        const SizedBox(
          width: 4,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click, // change cursor
          child: ButtonIconAtom(
            color: whiteColor,
            nameSvgFile: 'searchIconGoogleFont.svg',
            backColor: purpleColor,
            heightVal: 50,
            radius: PARTIAL_CIRCULAR_ITEM,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        DropdownButton<String>(
          underline: UnderlineAtom(
            thickness: 5,
            color: purpleColor,
            size: 10, //underlined of hint text
          ),
          value: selectedValue,
          hint: const Text(
            'Filtrer',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          items: options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            //handler
          },
        ),
      ],
    );
  }

  _getOffersCategories() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _getSingleOfferCategorie(svgName: 'devLogo.svg'),
        _getSingleOfferCategorie(svgName: 'design.svg'),
        _getSingleOfferCategorie(svgName: 'locked.svg'),
        _getSingleOfferCategorie(svgName: 'ref.svg'),
        _getSingleOfferCategorie(svgName: 'testValidate.svg'),
        _getSingleOfferCategorie(svgName: 'increase_model2.svg'),
      ],
    );
  }

  _getSingleOfferCategorie({svgName}) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(PARTIAL_CIRCULAR_ITEM)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonIconAtom(
            nameSvgFile: svgName,
            heightVal: 30,
            widthVal: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }

//-----OFFERS
  _getOffersItems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (Map items
            in LIST_OF_OFFERS) //LIST_OF_OFFERS is inside widget_utils.dart doc
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 2 * SPACE_LEFT_BIG_TITLE,
                ),
                Stack(
                  children: [
                    Container(
                        width: 1000,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.6),
                            borderRadius: BorderRadius.circular(
                                BORDER_RADIUS_OFFRERS_CARD)),
                        child: _getCard(
                            title: items['title'],
                            keyWords: items['keyWords'],
                            imageLink: items['image'],
                            date: items['date'])),
                    Positioned(
                        right: 30,
                        bottom: 30,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(BORDER_RADIUS_OFFRERS_CARD),
                          child: const ButtonAtom(
                            'Voir l\'offre',
                            type: ButtonType.standard,
                            paddingEdgeInsetValue: EdgeInsets.all(15),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                if (items['popup'] != '') _getPopUp(text: items['popup']),
              ],
            ),
          ),
      ],
    );
  }

  _getCard({title, keyWords, imageLink, date}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(BORDER_RADIUS_OFFRERS_CARD),
              bottomLeft: Radius.circular(BORDER_RADIUS_OFFRERS_CARD)),
          child: ImageAtom(
            link: imageLink,
            imageType: ImageDimensionType.offerImage,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30), //space between image and title
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              H1TextAtom(text: title),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20, left: 0),
                      child: Wrap(spacing: 10, children: [
                        for (var item in keyWords)
                          ButtonAtom(item, type: ButtonType.gray),
                      ]))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              H2TextAtom(text: date)
            ],
          ),
        )
      ],
    );
  }

  _getPopUp({text}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomPaint(
          size: const Size(50, 50),
          painter: TrianglePainter(),
        ),
        Container(
          height: 130,
          width: 300,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(PARTIAL_CIRCULAR_ITEM)),
          child: Center(
              child: Text(
            text, //---should be reviese
            maxLines: 3,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style:
                const TextStyle(color: Colors.white, fontSize: POPUP_FONTSIZE),
          )),
        )
      ],
    );
  }

//---------
}
