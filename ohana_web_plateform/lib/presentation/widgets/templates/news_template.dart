import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/blog_card_set_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/carousel_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class NewsTemplate extends StatelessWidget {
  const NewsTemplate({super.key});

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
                _getNewsBanner(),
                const SizedBox(
                  height: 50,
                ),
                _getNewsInfosTitleEmbeded(),
                const SizedBox(
                  height: 50,
                ),
                _getListNumber(),
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
// NEWS BANNER

  _getNewsBanner() {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 20, bottom: 10, left: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.circular(COMPLETE_CIRCULAR_ITEM)),
              ),
              const H2TextAtom(text: 'Récent')
            ],
          ),
        ),
        const ImageCarouselOrg()
      ],
    );
  }

// GET NEWS
  _getNewsInfosTitleEmbeded() {
    return Column(
      children: [
        const UnderlinedTitleMol(
          text: 'News',
          color: Colors.purple,
          lineSize: 140,
        ),
        _getNewsInfo()
      ],
    );
  }

  Wrap _getNewsInfo() {
    int i;
    List<Map> News = [
      {
        'title': 'L\'informatique dans le monde d\'aujourd\'hui ',
        'image': 'buisness3.jpg',
        'text':
            "Lorem ipsum dolor,  sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepequod autem iure Lorem ipsum dolor,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat eveniet!",
        'boldTextList': ['']
      },
      {
        'title': "L'intelligence artificiel dans la medcine",
        'image': 'buisness4.jpg',
        'text':
            "Lorem ipsum dolor,  sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepequod autem iure Lorem ipsum dolor,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat eveniet! etur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepequod autem iure Lorem ipsum dolor,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat evenie",
        'boldTextList': ['']
      },
      {
        'title': "Flutter, Version 4.0",
        'image': 'flutter2.jpg',
        'text':
            "Lorebla ,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat evenie",
        'boldTextList': ['']
      },
      {
        'title': "la Dev Kotline mode",
        'image': 'gojo2.jpg',
        'text':
            "Lorebla ,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat evenie",
        'boldTextList': ['']
      },
      {
        'title': "Développer? qu'est ce réellement",
        'image': 'gojo4.jpg',
        'text':
            "Lorebla ,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat evenie",
        'boldTextList': ['']
      },
      {
        'title': "les risques de cybersécurité",
        'image': 'gojo6.jpg',
        'text':
            "Lorebla ,sit amet consectetur adipisicing elit. Repellat vero accusamus perferendis veniam facilis, saepe quod autem iure repudiandae assumenda dolore eos blanditiis officiis tempora, corporis sit cum  placeat evenie",
        'boldTextList': ['']
      },
    ];
    return Wrap(
      spacing: 60,
      children: [
        for (i = 0; i <= 5; i++)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: BlogCardOrg(
              title: News[i]['title'],
              pathOfTopImage: News[i]['image'],
              textAndBoldListMap: {
                'text': News[i]['text'],
                'boldTextList': News[i]['boldTextList']
              },
            ),
          )
      ],
    );
  }

//NUMBER LIST

  _getListNumber() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ButtonAtom('<<', type: ButtonType.buttonNumber),
        const SizedBox(
          width: 10,
        ),
        const ButtonAtom('...', type: ButtonType.buttonNumber),
        for (var i = 1; i <= 4; i++)
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ButtonAtom(i.toString(), type: ButtonType.buttonNumber)),
        const ButtonAtom('...', type: ButtonType.buttonNumber),
        const SizedBox(
          width: 10,
        ),
        const ButtonAtom('>>', type: ButtonType.buttonNumber),
      ],
    );
  }

//---------
}
