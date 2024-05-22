import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_caption_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/blog_card_set_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/carousel_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/nav_bar_org.dart';

//home Page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //navBar
            const NavBarOrg(
              followingWidget: CarouselOrg(),
            ),
            const SizedBox(
              height: 50,
            ),
            //videos card
            const H1TextAtom(text: ''),
            getVideoList(),
            const SizedBox(
              height: 50,
            )
            // Add more widgets here if necessary
          ],
        ),
      ),
    );
  }

  getVideoList() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VideosCard(imageLink: 'web1.jpg', title: 'Developpement Web'),
        SizedBox(
          width: 70,
        ),
        VideosCard(
            imageLink:
                'UnitedPlanners_Cybersecurity_WhitePaper_iStock-614137876-3_1.jpg',
            title: 'Cyber sécurité'),
        SizedBox(
          width: 70,
        ),
        VideosCard(imageLink: 'phone1.jpg', title: 'Mobile')
      ],
    );
  }
}

// vidéo Card

class VideosCard extends StatefulWidget {
  const VideosCard({super.key, required this.imageLink, required this.title});
  final String imageLink;
  final String title;

  @override
  State<VideosCard> createState() => __VideosCardState();
}

class __VideosCardState extends State<VideosCard> {
  bool _isHovered = false;
  changeHoverState() {
    setState(() {
      _isHovered = !_isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: ImageDimensionType.videoImage.heightVal,
      child: MouseRegion(
        onEnter: (event) {
          changeHoverState();
        },
        onExit: (event) {
          changeHoverState();
        },
        child: Stack(
          children: [
            ImageAtom(
              link: widget.imageLink,
              imageType: ImageDimensionType.videoImage,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: ImageDimensionType.videoImage.widthVal,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            ImageDimensionType.videoImage.borderRaiusVal),
                        bottomRight: Radius.circular(
                            ImageDimensionType.videoImage.borderRaiusVal))),
                child: ButtonCaptionAtom(
                  text: widget.title,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
