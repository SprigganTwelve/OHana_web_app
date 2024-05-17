import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';

class SocialNetworkIconMol extends StatelessWidget {
  const SocialNetworkIconMol(
      {super.key, required this.svgColor, required this.heightVal});
  final Color svgColor;
  final double heightVal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonIconAtom(
            nameSvgFile: 'linkedin.svg',
            color: svgColor,
            heightVal: heightVal,
          ),
          const SizedBox(
            width: 2,
          ),
          ButtonIconAtom(
            nameSvgFile: 'facebook.svg',
            color: svgColor,
            heightVal: heightVal,
          ),
          const SizedBox(
            width: 2,
          ),
          ButtonIconAtom(
            nameSvgFile: 'twitter.svg',
            color: svgColor,
            heightVal: heightVal,
          ),
          const SizedBox(
            width: 2,
          ),
          ButtonIconAtom(
            nameSvgFile: 'youtubeWhiteOnBlack.svg',
            color: svgColor,
            heightVal: heightVal,
          ),
        ],
      ),
    );
  }
}
