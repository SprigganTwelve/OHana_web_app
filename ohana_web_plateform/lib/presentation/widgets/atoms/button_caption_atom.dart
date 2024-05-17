import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';

class ButtonCaptionAtom extends StatelessWidget {
  const ButtonCaptionAtom({
    super.key,
    required this.text,
    this.buttonIcon = ButtonIconType.videoStart,
  });
  final String text;
  final ButtonIconType buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      buttonIcon.icon,
      H1TextAtom(
        text: text,
        color: Colors.white,
      )
    ]);
  }
}

enum ButtonIconType {
  videoStart(
    icon: ButtonIconAtom(
      nameSvgFile: 'videoStartButton.svg',
      heightVal: 70,
      widthVal: 70,
      color: Colors.white,
    ),
  );

  final ButtonIconAtom icon;

  const ButtonIconType({required this.icon});
}

// "assets/images/gojo.jpg",
