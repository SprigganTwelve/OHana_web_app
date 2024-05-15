import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/search_mol.dart';

class SearchInputOrg extends StatelessWidget {
  const SearchInputOrg({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 422,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H1TextAtom(text: 'My title'),
          SizedBox(
            height: 3,
          ),
          SearchBarMol(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
          )
        ],
      ),
    );
  }
}
