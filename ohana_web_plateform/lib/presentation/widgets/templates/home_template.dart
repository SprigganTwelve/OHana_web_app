import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/text_list_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // MAIN CONTENT
          SingleChildScrollView(
              child: Column(
            children: [
              const SizedBox(
                height: NAV_BAR_HEIGHT,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 600,
                        width: mediaScreenWidth,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const ImageAtom(
                          link: 'sukuna3.jpg',
                          imageType: ImageDimensionType.defaultCarouselImage,
                        ),
                      ),
                      const SizedBox(
                        height: 600 //imageHeight
                        ,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 170),
                            child: Text(
                              'Bienvenue à Ohana Entreprise',
                              style:
                                  TextStyle(fontSize: 140, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _getExpertiseList(),
                  const SizedBox(
                    height: 50,
                  ),
                  _getPlusAboutOhana(),
                  const SizedBox(
                    height: 50,
                  ),
                  _getBannerForParners(mediaScreenWidth),
                  const SizedBox(
                    height: 50,
                  ),
                  _getEndPart(mediaScreenWidth)
                ],
              )
            ],
          )),
          // NAVBAR
          const Positioned(
              top: 0, left: 0, right: 0, child: CustomNavigationBar())
        ],
      ),
    );
  }

//EXPERTISE
  _getExpertiseList() {
    return Container(
      color: Colors.amber,
      height: 730,
      // color: Colors.amber,
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: SPACE_LEFT_BIG_TITLE,
              ),
              UnderlinedTitleMol(
                text: 'Notre Expertise',
                start: true,
                color: Colors.purple,
              )
            ],
          ),
          const SizedBox(
            height: SPACE_TITLE_BODY,
          ),
          Wrap(
            spacing: 40, //horizontal space between children
            alignment: WrapAlignment.center,
            children: [
              _getExpertiseBloc('devLogo.svg', 'Développement'),
              _getExpertiseBloc('design.svg', 'Design'),
              _getExpertiseBloc('locked.svg', 'Cybersecurité'),
              _getExpertiseBloc('ref.svg', 'référencement'),
              _getExpertiseBloc('testValidate.svg', 'Testing'),
              _getExpertiseBloc('increase_model2.svg', 'IA Generative'),
            ],
          )
        ],
      ),
    );
  }

  _getExpertiseBloc(String svgLink, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.4), // Couleur de l'ombre avec opacité
              spreadRadius: 5, // Rayon de diffusion de l'ombre
              blurRadius: 7, // Rayon de flou de l'ombre
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Column(
            children: [
              ButtonIconAtom(
                nameSvgFile: svgLink,
                heightVal: 200,
                widthVal: 200,
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
      ),
    );
  }

//--ADDITIONNAL SKILL------
  _getPlusAboutOhana() {
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
                child: const Align(
                  alignment: Alignment.center,
                  child: TextListMol(
                    textColor: Colors.white,
                    textList: [
                      'choississer un accompagnement',
                      'Combinaison entre expertise et rigueur',
                      'Un service  de qualité',
                      'accueil chaleureux'
                    ],
                  ),
                ),
              )
            ],
          ),
        ]);
  }

//-----OUR PARTNER

  _getBannerForParners(mediaScreenWidth) {
    return Column(
      children: [
        const UnderlinedTitleMol(
          text: 'Il nous font confiance',
          start: true,
          color: Colors.purple,
          lineSize: 300,
        ),
        const SizedBox(
          height: SPACE_TITLE_BODY,
        ),
        SizedBox(
          height: 600,
          width: mediaScreenWidth,
          child: const ImageAtom(
            link: 'sukuna4.jpg',
            imageType: ImageDimensionType.defaultCarouselImage,
          ),
        ),
      ],
    );
  }

//--------
  Container _getEndPart(mediaScreenWidth) {
    return Container(
      color: Colors.purple,
      width: mediaScreenWidth,
      height: 200,
      child: const Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: SocialNetworkIconMol(
                      svgColor: Colors.white, heightVal: 30))
            ],
          ),
        ],
      ),
    );
  }
}
