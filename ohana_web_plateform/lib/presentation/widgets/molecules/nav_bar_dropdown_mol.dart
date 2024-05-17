import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/main.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/link_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';

class NavbarDropdownMol extends StatelessWidget {
  final bool boxPositionningStart;
  final String content;
  final Widget dropList;
  const NavbarDropdownMol(
      {super.key,
      required this.content,
      required this.dropList,
      this.boxPositionningStart = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: boxPositionningStart
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        ButtonAtom(content, type: ButtonType.navbar),
        const SizedBox(
          height: 10,
        ),
        dropList
      ],
    );
  }
}

/*
Container getDropListDisplay(/*bool isHover, Function changeHoverState*/) {
  return Container(
    width: 700,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color:
              Colors.grey.withOpacity(0.5), // Couleur de l'ombre avec opacité
          spreadRadius: 5, // Rayon de diffusion de l'ombre
          blurRadius: 7, // Rayon de flou de l'ombre
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _dropDownList([
            {'textPath': 'fort comme kurapukia', 'widget': const MyTestPage()},
            {'textPath': 'lalalalla', 'widget': const MyTestPage()},
            {'textPath': 'expertise', 'widget': const MyTestPage()},
            {'textPath': 'dragon ball z', 'widget': const MyTestPage()},
            {'textPath': 'sun jin woo', 'widget': const MyTestPage()},
          ], title: 'List Anime'),
          _dropDownList([
            {'textPath': 'fort comme kurapukia', 'widget': const MyTestPage()},
            {'textPath': 'SansenSekai', 'widget': const MyTestPage()},
            {'textPath': 'Ryoki Tenkai', 'widget': const MyTestPage()},
            {'textPath': 'Bankai', 'widget': const MyTestPage()},
            {'textPath': 'ninjutsu', 'widget': const MyTestPage()},
            {'textPath': 'alter', 'widget': const MyTestPage()},
            {'textPath': 'ito no yomi', 'widget': const MyTestPage()},
            {'textPath': 'stand', 'widget': const MyTestPage()},
            {'textPath': 'mana', 'widget': const MyTestPage()},
          ], title: 'Power styles'),
        ],
      ),
    ),
  );
}

Column _dropDownList(List<Map<String, dynamic>> linkList, {title = ''}) {
  return Column(
    children: [
      H2TextAtom(text: title),
      if (title != '')
        const UnderlineAtom(
          color: Color.fromARGB(255, 190, 49, 215),
          thickness: 3,
          size: 120,
        ),
      for (var item in linkList)
        LinkAtom(
          secondPage: item["widget"],
          text: item["textPath"],
        )
    ],
  );
}
*/