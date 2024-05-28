import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/domain/entities/blog_post.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/path_custompainter_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class SingleNewView extends StatelessWidget {
  const SingleNewView({super.key});
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
                _getBanner(mediaScreenWidth),
                _getNewText(),
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

//Home Banner
  _getBanner(mediaScreenWidth) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: mediaScreenWidth,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: const ImageAtom(
            link: 'buisness2.jpg',
            imageType: ImageDimensionType
                .defaultCarouselImage, //fit the height of container
          ),
        ),
        const SizedBox(
          height: 600, //Container Height
          child: Align(
            alignment: Alignment.center,
            child: H1TextAtom(
              text: "BIENVENUE CHEZ OHANA ENTREPRISE",
              color: Colors.white,
              fontSize: 60,
            ),
          ),
        ),
      ],
    );
  }

//TEXT OF ARTICLE
  _getNewText() {
    BlogPost blogPost = BlogPost(
        id: 1,
        title: "Le monde en pleine révolution",
        author: "Zouayobo DALI",
        creationDate: DateTime(2024, 5, 28),
        contentText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.");

    return const SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          UnderlinedTitleMol(
            text: 'Le monde en pléine révolution',
            fontsize: 50,
            lineSize: 170,
            color: Colors.purple,
          ),
          //for (var item in ListOfArticles)
        ],
      ),
    );
  }
}
