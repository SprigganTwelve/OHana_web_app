import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/video_dart.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class SingleServiceTemplate extends StatelessWidget {
  const SingleServiceTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                  height: 70,
                ),
                _getTextBody(),
                _getCatalogList(),
                const SizedBox(
                  height: 50,
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
    return SizedBox(
      height: 540,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: mediaScreenWidth,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: const ImageAtom(
              link: 'compliance.jpg',
            ),
          ),
          Positioned(
            bottom: -110,
            child: Container(
              padding: const EdgeInsets.only(
                left: SPACE_LEFT_BIG_TITLE / 2,
                right: SPACE_LEFT_BIG_TITLE / 2,
                top: 10,
              ),
              width: 990,
              height: 300,
              color: Colors.white,
              child: const Column(
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: UnderlinedTitleMol(
                        text: 'Développement web',
                        color: Colors.purple,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  BodyTextAtom(
                    text:
                        'Nous proposons différent types de services de développement et de cybersécurité, Nous n\'hésitons pas à mettre notre coeur à l\'ouvrage car le développement est avant tout une activité qui nous passionne et nous voulons faire profiter de cette passion à tout nos clients et potentiel client',
                    boldTextList: ['développement', 'cybersécurité'],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//TEXT BODY
  _getTextBody({bool reverseMode = false}) {
    TextDirection rtlDirection = TextDirection.rtl;
    return Column(
      children: [
        _getCustomBloc(image: 'dev5.jpg', title: 'How to Design'),
        _getCustomBloc(
            image: 'webTesting.jpg',
            textDirection: rtlDirection,
            title: 'Wires connection'),
        _getCustomBloc(image: 'dev8.jpg', title: 'Digital Structure'),
        _getTextBloc(),
      ],
    );
  }

  _getCustomBloc(
      {TextDirection? textDirection, required image, String title = ''}) {
    return Container(
      padding: const EdgeInsets.only(
          bottom: 50, left: SPACE_LEFT_BIG_TITLE, right: SPACE_LEFT_BIG_TITLE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1TextAtom(text: title),
          const SizedBox(
            height: 20,
          ),
          Row(
            textDirection: textDirection,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageAtom(
                link: image,
                imageType: ImageDimensionType.standard,
                widthVal: 700,
                heightVal: 400,
              ),
              SizedBox(
                width: 800,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 40, right: textDirection != null ? 40 : 0),
                  child: const BodyTextAtom(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    boldTextList: ['commodo'],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _getTextBloc({title = 'What will happen in the Future ?'}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SPACE_LEFT_BIG_TITLE),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          H1TextAtom(text: title),
          const SizedBox(
            height: 30,
          ),
          const BodyTextAtom(
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            boldTextList: [''],
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  _getImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(PARTIAL_CIRCULAR_ITEM),
      child: const ImageAtom(
        link: 'ia.jpg',
      ),
    );
  }

  _getVideo() {
    return const DirectVideoAtom();
  }

//CATALOG LIST
  _getCatalogList() {
    List<Widget> devServices = [
      _getCatalogBloc('SITE VITRINE', 'webshowcases.jpg'),
      _getCatalogBloc('SITE E-COMMERCE', 'e-commerce.jpg'),
      _getCatalogBloc('LANDING PAGE', 'landingPage.jpg'),
      _getCatalogBloc('SITE SUR MESURE', 'measurement.jpg'),
      _getCatalogBloc('HEBERGEMENT', 'accomodation.jpg'),
      _getCatalogBloc('MAINTENANCE', 'maintain.jpg'),
      _getCatalogBloc('RÉFÉRENCEMENT', 'ref.jpg'),
      _getCatalogBloc('MAKETING/PUBLICITES DIGITALES', 'webpub.jpg'),
    ];

    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          _getCatalogTitle('Catalogue'),
          const SizedBox(
            height: SPACE_TITLE_BODY,
          ),
          _getCustomCarousel(devServices, seconde: 4),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Row _getCatalogTitle(String title) {
    return Row(
      children: [
        const SizedBox(
          width: SPACE_LEFT_BIG_TITLE,
        ),
        UnderlinedTitleMol(
          text: title,
          start: true,
          color: Colors.purple,
        )
      ],
    );
  }

  _getCustomCarousel(List<Widget> lisOfItems, {seconde = 4}) {
    double heightBloc = 316;

    return Container(
      color: const Color(0xFFD9D9D9),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: CarouselSlider(
          items: lisOfItems,
          options: CarouselOptions(
              initialPage: 0,
              height: heightBloc,
              viewportFraction: 0.3,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: seconde))),
    );
  }

  _getCatalogBloc(String title, String image) {
    double heightBloc = 316;
    double widthBloc = 616;
    return Padding(
        padding: const EdgeInsets.only(left: 70, bottom: 20),
        child: Container(
          height: heightBloc,
          width: widthBloc,
          child: Stack(
            children: [
              ImageAtom(
                link: image,
                widthVal: widthBloc,
                heightVal: heightBloc,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: H2TextAtom(
                      text: title,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ));
  }

//---------
}
