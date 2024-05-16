import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/main.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/link_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/logo_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';

class NavBarOrg extends StatefulWidget {
  const NavBarOrg({
    super.key,
  });

  @override
  State<NavBarOrg> createState() => _NavBarOrgState();
}

class _NavBarOrgState extends State<NavBarOrg> {
  final isHover = true;
  //turn it
  changeHoverState(isHover) {
    setState(() {
      isHover = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return getNavBarDisplay();
  }

  Column getNavBarDisplay() {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 214, 32, 246),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LogoAtom(),
              // margin: EdgeInsets.only(right: 50),
              Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  const SocialNetworkIconMol(svgColor: Colors.white),
                  _navbarButtons()
                ]),
                Container(
                  width: 100,
                ),
              ])
            ],
          ),
        ),
        getDropListDisplay()
      ],
    );
  }

  Row _navbarButtons() {
    return Row(
      children: [
        const ButtonAtom("ACCUEIL", type: ButtonType.navbar),
        const ButtonAtom("SERVICES", type: ButtonType.navbar),
        const ButtonAtom("OFFRES", type: ButtonType.navbar),
        const ButtonAtom("QUI SOMMES-NOUS ?", type: ButtonType.navbar),
        _searchButton(),
        const ButtonAtom("CONTACT", type: ButtonType.navbar),
      ],
    );
  }

  ButtonIconAtom _searchButton() {
    return const ButtonIconAtom(
      nameSvgFile: 'searchIconGoogleFont.svg',
      backColor: Colors.purple,
      color: Colors.white,
      heightVal: 30,
      radius: 10,
    );
  }
}

Container getDropListDisplay(/*bool isHover, Function changeHoverState*/) {
  return Container(
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
            {'textPath': 'cid kageno', 'widget': const MyTestPage()},
            {'textPath': 'kuroiwa medaka', 'widget': const MyTestPage()},
            {'textPath': 'zeleph dragnir', 'widget': const MyTestPage()},
            {'textPath': 'Natsu dragnir', 'widget': const MyTestPage()},
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
          _dropDownList([
            {'textPath': 'fort comme kurapukia', 'widget': const MyTestPage()},
            {'textPath': 'I am atomic', 'widget': const MyTestPage()},
            {'textPath': 'muda muda ', 'widget': const MyTestPage()},
            {'textPath': 'ikuso', 'widget': const MyTestPage()},
            {'textPath': 'saiikonikedo', 'widget': const MyTestPage()},
            {'textPath': 'full counter', 'widget': const MyTestPage()},
            {'textPath': 'spectrum', 'widget': const MyTestPage()},
          ], title: 'Lyrics'),
        ],
      ),
    ),
  );
}

Container _dropDownList(List<Map<String, dynamic>> linkList, {title = ''}) {
  return Container(
    child: Column(
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
    ),
  );
}

//add column mapper here

class DropListDataLinks {
  final List<Map<String, dynamic>>? column1;
  final List<Map<String, dynamic>>? column2;
  final List<Map<String, dynamic>>? column3;
  final List<Map<String, dynamic>>? column4;
  DropListDataLinks({this.column1, this.column2, this.column3, this.column4});
}

/*
linkList shape data 

linkList = [
  {
    textPath:.....,
    widget
  }
]

*/
