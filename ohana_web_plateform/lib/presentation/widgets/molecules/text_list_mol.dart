import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/text_list_item_atom.dart';

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
        children: _getSetOfTextListItem(textList, icon, textColor));
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
