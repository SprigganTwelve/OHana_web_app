import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';

class SocialNetworkIconMol extends StatelessWidget {
  const SocialNetworkIconMol({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ButtonIconAtom(nameSvgFile: 'twitter.svg'),
        ButtonIconAtom(nameSvgFile: 'youtubeWhiteOnBlack.svg'),
        ButtonIconAtom(nameSvgFile: 'linkedin.svg'),
        ButtonIconAtom(nameSvgFile: 'facebook.svg')
      ],
    );
  }
}
