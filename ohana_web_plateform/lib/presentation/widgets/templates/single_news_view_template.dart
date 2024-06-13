import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/video_dart.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class SingleNewsView extends StatelessWidget {
  const SingleNewsView({super.key});
  final int index = 0; //for example

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
                _getHomeBanner(mediaScreenWidth),
                // _getNewText('Le Monde en développement'),
                const SizedBox(
                  height: 20,
                ),
                _getTextBody(),
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

//HOME BANNER

  _getHomeBanner(mediaScreenWidth) {
    return Container(
      padding: const EdgeInsets.only(bottom: 97),
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
                        text: 'The Gap between real and digital World',
                        color: Colors.purple,
                        lineSize: 220,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "-Ecrit par Dali paterne le 30/05/2024",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BodyTextAtom(
                    text:
                        "Il y a peu avec l'influence de l'IA (intelligence artficiel), les entreprises ont vu leur pratiques et habitudes changé. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute...",
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
        _getCustomBloc(image: 'webdesing.jpg', title: 'How to Design'),
        _getCustomBloc(
            image: 'webTesting.jpg',
            textDirection: rtlDirection,
            title: 'Wires connection'),
        _getCustomBloc(image: 'dev8.jpg', title: 'Digital Structure'),
        _getTextBloc(),
        _getImage(),
      ],
    );
  }

//Text Items

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
}
