import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/link_atom.dart';

class LinkPathMol extends StatelessWidget {
  const LinkPathMol({
    super.key,
    required this.linkList,
  });
  final List<Map<String, dynamic>> linkList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // border: Border(top: )
          ),
      child: Column(
        children: [
          for (var item in linkList)
            LinkAtom(
              context: context,
              secondPage: item["widget"],
              text: item["text"],
            )
        ],
      ),
    );
  }
}

  // final String textPath;

/*

linkList = [
  {
    textPath:.....,
    widget
  }
]

*/


