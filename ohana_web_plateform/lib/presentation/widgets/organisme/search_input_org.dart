import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/search_mol.dart';

class SearchInputOrg extends StatelessWidget {
  const SearchInputOrg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: 422,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H1TextAtom(text: 'My title'),
          SizedBox(
            height: 3,
          ),
          SearchBarMol(),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60, bottom: 5, top: 5),
            child: Text(
                '   Vous êtes pas de taille , on a plus de like sur twitter, c\'est nous que le came attendait'),
          )
        ],
      ),
    );
  }
}
