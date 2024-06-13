import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/box_under_image_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class AboutPageTemplate extends StatelessWidget {
  const AboutPageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // MAIN CONTENT
          SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: NAV_BAR_HEIGHT,
              ),
              Column(
                children: [
                  _getHomeBanner(mediaScreenWidth),
                  const SizedBox(
                    height: 50,
                  ),
                  // _getEquipMembers(),
                  _getAboutUsText(),
                  const SizedBox(
                    height: 70,
                  ),
                  _getOurSites(mediaScreenWidth),
                  const SizedBox(
                    height: 20,
                  ),
                  _getOurValues(),
                  const SizedBox(
                    height: 50,
                  ),
                  _getTeamMemberItems(),
                  const SizedBox(
                    height: 50,
                  ),
                  _joinToUsBanner(mediaScreenWidth),
                  const SizedBox(
                    height: 50,
                  ),
                  _getMapPosition(),
                  const SizedBox(
                    height: 50,
                  ),
                  FooterOrg(mediaScreenWidth: mediaScreenWidth)
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

//-------- HOME BANNER
  _getHomeBanner(mediaScreenWidth) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: mediaScreenWidth,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: const ImageAtom(
            link: 'whoareus.jpg',
            imageType: ImageDimensionType
                .defaultCarouselImage, //fit the height of container
          ),
        ),
        const SizedBox(
          height: 400, //Container Height
          child: Align(
            alignment: Alignment.center,
            child: H1TextAtom(
              text: "Qui Sommz Nous ?",
              color: Colors.purple,
              fontSize: 60,
            ),
          ),
        ),
      ],
    );
  }

//------ABOUT US TEXT

  _getAboutUsText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: SPACE_LEFT_BIG_TITLE,
          ),
          UnderlinedTitleMol(
            text: 'Notre Entreprise',
            start: true,
            color: Colors.purple,
            lineSize: 150,
          )
        ]),
        SizedBox(
          height: SPACE_TITLE_BODY,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 1.5 * SPACE_LEFT_BIG_TITLE,
              right: 1.5 * SPACE_LEFT_BIG_TITLE),
          child: BodyTextAtom(
              text:
                  " OHana Entreprise a été fondée en 2021 avec la vision de fournir des solutions informatiques innovantes et personnalisées à ses clients. Au fil des années, nous avons consolidé expertise dans le domaine de la conception de logiciels, d'applications web et mobiles, ainsi que dans le secteur de la cybersécurité.  Notre mission est de répondre aux besoins spécifiques de nos clients en leur fournissant des solutions technologiques de qualité.",
              boldTextList: ['OHana Entreprise', ' Notre mission']),
        ),
      ],
    );
  }

//----OUR SITES

  _getOurSites(mediaScreenWidth) {
    List<Map<String, dynamic>> ourSites = [
      {
        'place': 'France',
        'image': 'france.jpg',
        'text':
            "Lorem ipsum dolor,  sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepequod autem iure Lorem ipsum dolor,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat eveniet!",
        'boldTextList': ['elit', 'accusamus perferendis']
      },
      {
        'place': 'Afrique',
        'image': 'afrique.jpg',
        'text':
            "Lorem ipsum dolor,  sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepequod autem iure Lorem ipsum dolor,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat eveniet!",
        'boldTextList': ['elit', 'accusamus perferendis']
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: SPACE_LEFT_BIG_TITLE,
          ),
          UnderlinedTitleMol(
            text: 'Nos Sites',
            start: true,
            color: Colors.purple,
            lineSize: 150,
          )
        ]),
        const SizedBox(
          height: SPACE_TITLE_BODY,
        ),
        for (var item in ourSites)
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: _getSingleSiteView(
                mediaScreenWidth: mediaScreenWidth,
                place: item['place'],
                image: item['image'],
                text: item['text'],
                boldTextList: item['boldTextList']),
          ),
      ],
    );
  }

  _getSingleSiteView({mediaScreenWidth, place, image, text, boldTextList}) {
    return Container(
        width: mediaScreenWidth,
        height: 400, //it's important, it enable to spread items
        padding: const EdgeInsets.only(
          left: 1.5 * SPACE_LEFT_BIG_TITLE,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 70,
                ),
                UnderlinedTitleMol(
                  text: place,
                  isH2Title: true,
                  color: Colors.purple,
                  thickness: 2,
                  start: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 1000, //Control the width of Article
                  child: BodyTextAtom(text: text, boldTextList: boldTextList),
                )
              ],
            ),
            Positioned(
                right: 15,
                top: 0,
                child: BoxUnderImageMol(
                  imageName: image,
                ))
          ],
        ));
  }

//-----OUR VALUES

  _getOurValues() {
    List<Map<String, String>> ourPrinciples = [
      {
        'svgName': 'medal.svg',
        'title': "L'Excellence",
        "text":
            "Necessitatibus voluptatum, consequuntur magnam numquam corporis est optio laudantium placeat",
      },
      {
        'svgName': 'heart.svg',
        'title': "L'intégrité",
        "text":
            "Necessitatibus voluptatum, consequuntur magnam numquam corporis est optio laudantium placeat",
      },
      {
        'svgName': 'trust-wallet-svgrepo-com.svg',
        'title': "Confiance",
        "text":
            "Necessitatibus voluptatum, consequuntur magnam numquam corporis est optio laudantium placeat",
      },
      {
        'svgName': 'rocket-innovation-space-svgrepo-com.svg',
        'title': "L'innovation",
        "text":
            "Necessitatibus voluptatum, consequuntur magnam numquam corporis est optio laudantium placeat",
      },
      {
        'svgName': 'burning-passion-svgrepo-com.svg',
        'title': "Passion",
        "text":
            "Necessitatibus voluptatum, consequuntur magnam numquam corporis est optio laudantium placeat",
      },
    ];

    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const UnderlinedTitleMol(
          text: 'Nos Valeurs',
          color: Colors.purple,
          // start: true,
          // lineSize: 180,
        ),
        const SizedBox(
          height: 50,
        ),
        Wrap(
          spacing: 50,
          children: [
            for (var item in ourPrinciples)
              _getOneValueBloc(
                  svgName: item['svgName'],
                  title: item['title'],
                  text: item['text'])
          ],
        )
      ],
    );
  }

  _getOneValueBloc({svgName, title, text}) {
    return Container(
      width: 310,
      height: 375,
      decoration: BoxDecoration(
        // border: Border.all(width: 0.2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(PARTIAL_CIRCULAR_ITEM),
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.4), // Couleur de l'ombre avec opacité
            spreadRadius: 5, // Rayon de diffusion de l'ombre
            blurRadius: 7, // Rayon de flou de l'ombre
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(COMPLETE_CIRCULAR_ITEM),
              color: Colors.purple,
            ),
            child: ButtonIconAtom(
              nameSvgFile: svgName,
              heightVal: 100,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          H2TextAtom(text: title),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }

//------Our TEAM

  _getTeamMemberItems() {
    return Column(
      children: [
        const UnderlinedTitleMol(
          text: 'Notre équipe',
          color: Colors.purple,
        ),
        const SizedBox(
          height: 50,
        ),
        _getTeamMembers()
      ],
    );
  }

  _getTeamMembers() {
    List<Map<String, dynamic>> listMembersTeam = [
      {
        'name': 'Personne',
        'image': 'account.jpg',
        'description': 'développeur mobile'
      },
      {
        'name': 'Personne',
        'image': 'account.jpg',
        'description': 'développeur web'
      },
      {
        'name': 'Personne',
        'image': 'account.jpg',
        'description': 'développeur web'
      },
      {
        'name': 'Personne',
        'image': 'account.jpg',
        'description': 'développeur web'
      },
    ];
    return Wrap(
      spacing: 50,
      children: [
        // const SizedBox(
        //   width: 85,
        // ),
        for (var member in listMembersTeam)
          Container(
            margin: const EdgeInsets.only(right: 50),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 7, color: const Color.fromARGB(255, 108, 24, 125)),
                borderRadius:
                    BorderRadius.circular(PARTIAL_CIRCULAR_ITEM + 30)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(COMPLETE_CIRCULAR_ITEM),
                  child: ImageAtom(
                    link: member['image'],
                    imageType: ImageDimensionType.imageEquipMembers,
                  ),
                ),
                H2TextAtom(text: member['name']),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  member['description'],
                  maxLines: 1,
                  style: const TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
      ],
    );
  }

//----Project

//-----JOIN TO US

  _joinToUsBanner(mediaScreenWidth) {
    return Stack(
      children: [
        SizedBox(
            width: mediaScreenWidth,
            child: const ImageAtom(
              link: 'join.jpg',
              imageType: ImageDimensionType.standard,
            )),
        Positioned(
          bottom: 20,
          left: 900,
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: const Text(
              'Join To Us',
              style: TextStyle(color: Colors.purple, fontSize: 25),
            ),
          ),
        )
      ],
    );
  }

//----Get MAP POSITION----

  _getMapPosition() {
    return const SizedBox();
  }

//-------
}
