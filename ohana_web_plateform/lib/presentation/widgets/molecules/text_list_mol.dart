import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/text_list_item_atom.dart';

/*class TextListMol extends StatelessWidget {
  const TextListMol({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/

class TextListMol extends StatelessWidget {
  final List<String> textList;

  const TextListMol({super.key, required this.textList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          padding: EdgeInsets.all(8.0),
          children: _getSetOfTextListItem(
              textList) /*const <Widget>[
          TextListItemAtom(text: "Pomme"),
          TextListItemAtom(text: "Banane"),
          TextListItemAtom(text: "Cerise"),
          TextListItemAtom(text: "Datte"),
          TextListItemAtom(text: "Figue"),
        ],*/
          ),
    );
  }
}

List<TextListItemAtom> _getSetOfTextListItem(List<String> textList) {
  List<TextListItemAtom> result = [];
  for (var item in textList) {
    result.add(TextListItemAtom(text: item));
  }
  return result;
}
