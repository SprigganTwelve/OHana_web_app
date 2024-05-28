import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/input_atom.dart';

class SearchInputOrg extends StatelessWidget {
  const SearchInputOrg(
      {super.key, this.title = 'Title', this.textAtBottom = ''});
  final String title;
  final String textAtBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color:
              Colors.grey.withOpacity(0.5), // Couleur de l'ombre avec opacité
          spreadRadius: 5, // Rayon de diffusion de l'ombre
          blurRadius: 7, // Rayon de flou de l'ombre
          offset: const Offset(0, 3),
        ),
      ]),
      width: 422,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H1TextAtom(text: title),
          const SizedBox(
            height: 3,
          ),
          _getSearchBarItems(),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, bottom: 5, top: 5),
            child: Text(textAtBottom),
          )
        ],
      ),
    );
  }

//searchBar
  Row _getSearchBarItems() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputAtom(
          widthVal: 300,
        ),
        SizedBox(
          width: 5,
        ),
        ButtonIconAtom(
          nameSvgFile: 'searchIconGoogleFont.svg',
          backColor: Colors.purple,
          color: Colors.white,
          heightVal: 50,
        )
      ],
    );
  }
}
