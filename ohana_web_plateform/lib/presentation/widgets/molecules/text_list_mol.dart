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
  final IconData icon;
  final Color textColor;

  const TextListMol(
      {super.key,
      required this.textList,
      this.icon = Icons.brightness_1,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: _getSetOfTextListItem(textList, icon, textColor)
        /*const <Widget>[
          TextListItemAtom(text: "Pomme"),
          TextListItemAtom(text: "Banane"),
          TextListItemAtom(text: "Cerise"),
          TextListItemAtom(text: "Datte"),
          TextListItemAtom(text: "Figue"),
        ],*/

        );
  }
}

List<TextListItemAtom> _getSetOfTextListItem(
    List<String> textList, IconData iconItem, Color textColor) {
  List<TextListItemAtom> result = [];
  for (var item in textList) {
    result.add(TextListItemAtom(
      text: item,
      icon: iconItem,
      color: textColor,
    ));
  }
  return result;
}
