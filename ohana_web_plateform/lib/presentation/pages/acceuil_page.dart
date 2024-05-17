import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_caption_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/blog_card_set_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/carousel_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/nav_bar_org.dart';

class AcceuilPage extends StatelessWidget {
  const AcceuilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const NavBarOrg(
            followingWidget: CarouselOrg(),
          ),
          Row(
            children: [
              SizedBox(
                  height: ImageDimensionType.videoImage.heightVal,
                  child: _getVideosCard()),
            ],
          )
        ],
      ),
    );
  }

  Stack _getVideosCard() {
    return const Stack(
      children: [
        ImageAtom(
          link: 'web1.jpg',
          imageType: ImageDimensionType.videoImage,
        ),
        Align(
            alignment: Alignment.center,
            child: ButtonCaptionAtom(
              text: 'Developpement style',
            )),
      ],
    );
  }
}
