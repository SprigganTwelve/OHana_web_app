import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/text_list_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ServiceTemplatePattern2 extends StatelessWidget {
  const ServiceTemplatePattern2({super.key});

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
                _getExpertiseList(),
                const SizedBox(
                  height: 50,
                ),
                _getPlusAboutOhana(),
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
                      alignment: Alignment.topLeft,
                      child: UnderlinedTitleMol(
                        text: 'Nos Services',
                        start: true,
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

//EXPERTISE
  _getExpertiseList() {
    List<Widget> devServices = [
      _getExpertiseBloc('devLogo.svg', 'DÉVELOPPEMENT WEB', 'devWeb.jpg'),
      _getExpertiseBloc(
          'software-developer-work-on-computer-programmer-coder-svgrepo-com.svg',
          'LOGICIELS',
          'logiciel.jpg'),
      _getExpertiseBloc('design.svg', 'DESIGN', 'webdesing.jpg'),
      _getExpertiseBloc('locked.svg', 'CYBERSECURITÉ', 'cyber.jpg'),
      _getExpertiseBloc('ref.svg', 'RÉFÉRENCEMENT', 'ref.jpg'),
      _getExpertiseBloc('testValidate.svg', 'TESTING', 'webTesting.jpg'),
      _getExpertiseBloc('increase_model2.svg', 'IA GENERATIVE', 'ia.jpg'),
    ];
    List<Widget> cybersecurity = [
      _getExpertiseBloc(
          'audit-report-svgrepo-com.svg', 'AUDIT DE SECURITE', 'audit.jpg'),
      _getExpertiseBloc('trace-svgrepo-com.svg', 'AUDIT DE VULNERABILITE',
          'vulnerability.jpg'),
      _getExpertiseBloc(
          'rules-svgrepo-com.svg', 'AUDIT DE CONFORMITE', 'compliance.jpg'),
      _getExpertiseBloc(
          'testing-web-design-svgrepo-com.svg', 'PENTESTING', 'pentesting.jpg'),
      _getExpertiseBloc(
          'team-work-svgrepo-com.svg', 'ACCOMPAGNEMENT EQUIPE', 'team.jpg'),
      _getExpertiseBloc(
          'coding-svgrepo-com.svg', 'SECURISATION CODE LOGICIEL', 'coding.jpg'),
    ];

    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          _getServicesTitle('Services de développement'),
          const SizedBox(
            height: SPACE_TITLE_BODY,
          ),
          _getCustomCarousel(devServices, seconde: 4),
          const SizedBox(
            height: 30,
          ),
          _getServicesTitle('Services de cybersécurité'),
          const SizedBox(
            height: SPACE_TITLE_BODY,
          ),
          _getCustomCarousel(cybersecurity, seconde: 5),
        ],
      ),
    );
  }

  Row _getServicesTitle(String title) {
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

  _getExpertiseBloc(String svgLink, String title, String image) {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonIconAtom(
                      nameSvgFile: svgLink,
                      heightVal: 100,
                      widthVal: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    H2TextAtom(
                      text: title,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

//--ADDITIONNAL SKILL------
  _getPlusAboutOhana() {
    List<String> textListValues = [
      'Choississez un accompagnement',
      'Combinaison entre expertise et rigueur',
      'Un service de qualité',
      'Accueil chaleureux'
    ];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, //begin at Start
        mainAxisSize: MainAxisSize.min,
        children: [
          const UnderlinedTitleMol(
            text: 'Les + de OHana',
            start: true,
            color: Colors.purple,
          ),
          const SizedBox(
            height: SPACE_TITLE_BODY,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const ImageAtom(
                link: 'buisness.jpg',
                imageType: ImageDimensionType.imageListTextView,
              ),
              Container(
                padding: const EdgeInsets.only(right: 50),
                color: Colors.purple,
                height: ImageDimensionType
                    .imageListTextView.heightVal, //imageHeight
                child: Align(
                  alignment: Alignment.center,
                  child: TextListMol(
                    textColor: Colors.white,
                    textList: textListValues,
                  ),
                ),
              )
            ],
          ),
        ]);
  }

//---------
}
