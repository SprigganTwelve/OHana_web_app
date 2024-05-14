import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/input_atom.dart';

class SearchBarMol extends StatelessWidget {
  const SearchBarMol({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        InputAtom(),
        SizedBox(
          width: 5,
        ),
        ButtonIcon(nameSvgFile: 'searchIconGoogleFont.svg')
      ],
    );
  }
}
