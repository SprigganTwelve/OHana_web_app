import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';

class SocialNetworkIconMol extends StatelessWidget {
  const SocialNetworkIconMol({super.key, required this.svgColor});
  final Color svgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonIconAtom(
              nameSvgFile: 'linkedin.svg',
              color: svgColor,
            ),
            ButtonIconAtom(
              nameSvgFile: 'facebook.svg',
              color: svgColor,
            ),
            ButtonIconAtom(
              nameSvgFile: 'twitter.svg',
              color: svgColor,
            ),
            ButtonIconAtom(
              nameSvgFile: 'youtubeWhiteOnBlack.svg',
              color: svgColor,
            ),
          ],
        ),
      ),
    );
  }
}
