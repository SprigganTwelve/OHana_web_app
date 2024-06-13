import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class AboutOurClientsTemplate extends StatelessWidget {
  const AboutOurClientsTemplate({super.key});

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
                    height: 30,
                  ),
                  _getOurClients(),
                  const SizedBox(
                    height: 30,
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

// HOME BANNER
  _getHomeBanner(mediaScreenWidth) {
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

//
  _getOurClients() {
    return Column(
      children: [
        _getSevicesTile('Nos Clients'),
        _getClientCard(),
        _getProjectsCard()
      ],
    );
  }

  Row _getSevicesTile(String title) {
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

  _getClientCard() {
    return const SizedBox();
  }

  _getProjectsCard() {
    return const SizedBox();
  }
//----------
}
