import 'dart:io';

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
import 'package:ohana_web_plateform/presentation/widgets/molecules/nav_bar_dropdown_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/carousel_org.dart';

class NavBarOrg extends StatefulWidget {
  const NavBarOrg({super.key, required this.followingWidget});
  final Widget followingWidget;

  @override
  State<NavBarOrg> createState() => _NavBarOrgState();
}

class _NavBarOrgState extends State<NavBarOrg> {
  var _isOnButtonHover = false;
  final navBarButtonsKeyList = {
    'acceuil': GlobalKey(),
    'services': GlobalKey(),
    'offres': GlobalKey(),
    'Qui somme nous': GlobalKey(),
  };
  //turn it

  turnOnButtonHover() {
    _isOnButtonHover = true;
  }

  changeHoverState() {
    setState(() {
      turnOnButtonHover();
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
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoAtom(),
              // margin: EdgeInsets.only(right: 50),
              Row(children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SocialNetworkIconMol(
                        svgColor: Colors.white,
                        heightVal: 23,
                      ),
                      _navbarButtons()
                    ]),
                Container(
                  width: 100,
                ),
              ])
            ],
          ),
        ),
        Stack(
          children: [
            widget.followingWidget,
            if (_isOnButtonHover) getDropListDisplay()
          ],
        )
      ],
    );
  }

  Row _navbarButtons() {
    return Row(
      children: [
        MouseRegion(
            key: GlobalKey(),
            onEnter: (event) {
              changeHoverState();
            },
            onExit: (event) {},
            child: const ButtonAtom("ACCUEIL", type: ButtonType.navbar)),
        MouseRegion(
            key: GlobalKey(),
            onEnter: (event) {
              changeHoverState();
            },
            onExit: (event) {},
            child: const ButtonAtom("SERVICES", type: ButtonType.navbar)),
        MouseRegion(
            key: GlobalKey(),
            onEnter: (event) {
              changeHoverState();
            },
            child: const ButtonAtom("OFFRES", type: ButtonType.navbar)),
        MouseRegion(
            key: GlobalKey(),
            onEnter: (event) {
              changeHoverState();
            },
            onExit: (event) {},
            child:
                const ButtonAtom("QUI SOMMES-NOUS ?", type: ButtonType.navbar)),
        const SizedBox(
          width: 2,
        ),
        _searchButton(),
        const SizedBox(
          width: 8,
        ),
        const ButtonAtom("CONTACT", type: ButtonType.standard),
      ],
    );
  }

  ButtonIconAtom _searchButton() {
    return const ButtonIconAtom(
      nameSvgFile: 'searchIconGoogleFont.svg',
      //backColor: Colors.purple,
      color: Colors.white,
      heightVal: 30,
      radius: 10,
    );
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
        padding:
            const EdgeInsets.only(top: 30, bottom: 20, left: 80, right: 80),
        child: _singleDropDownListView(myAcceueilLinks),
      ),
    );
  }

  final myAcceueilLinks = DropListDataLinks(
    titleList: ['List Anime', 'Power styles', 'Lyrics'],
    columns: {
      "column1": [
        {'textPath': 'fort comme kurapukia', 'widget': const MyTestPage()},
        {'textPath': 'lalalalla', 'widget': const MyTestPage()},
        {'textPath': 'expertise', 'widget': const MyTestPage()},
        {'textPath': 'dragon ball z', 'widget': const MyTestPage()},
        {'textPath': 'sun jin woo', 'widget': const MyTestPage()},
        {'textPath': 'cid kageno', 'widget': const MyTestPage()},
        {'textPath': 'kuroiwa medaka', 'widget': const MyTestPage()},
        {'textPath': 'zeleph dragnir', 'widget': const MyTestPage()},
        {'textPath': 'Natsu dragnir', 'widget': const MyTestPage()},
      ],
      "column2": [
        {'textPath': 'the world', 'widget': const MyTestPage()},
        {'textPath': 'SansenSekai', 'widget': const MyTestPage()},
        {'textPath': 'Ryoki Tenkai', 'widget': const MyTestPage()},
        {'textPath': 'Bankai', 'widget': const MyTestPage()},
        {'textPath': 'ninjutsu', 'widget': const MyTestPage()},
        {'textPath': 'alter', 'widget': const MyTestPage()},
        {'textPath': 'ito no yomi', 'widget': const MyTestPage()},
        {'textPath': 'stand', 'widget': const MyTestPage()},
        {'textPath': 'mana', 'widget': const MyTestPage()},
      ],
      "column3": [
        {'textPath': 'explosion', 'widget': const MyTestPage()},
        {'textPath': 'I am atomic', 'widget': const MyTestPage()},
        {'textPath': 'muda muda ', 'widget': const MyTestPage()},
        {'textPath': 'ikuso', 'widget': const MyTestPage()},
        {'textPath': 'saiikonikedo', 'widget': const MyTestPage()},
        {'textPath': 'full counter', 'widget': const MyTestPage()},
        {'textPath': 'spectrum', 'widget': const MyTestPage()},
      ]
    },
  );
}

Container _singleDropDownListView(DropListDataLinks linkList) {
  return Container(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var titleIndex = 0;
            titleIndex < linkList.titleList.length;
            titleIndex++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H2TextAtom(text: linkList.titleList[titleIndex]),
              if (linkList.titleList[titleIndex] != '')
                const UnderlineAtom(
                  color: Color.fromARGB(255, 190, 49, 215),
                  thickness: 3,
                  size: 120,
                ),
              for (var columnChild
                  in linkList.columns.values.elementAt(titleIndex))
                Row(children: [
                  LinkTextAtom(
                    secondPage: columnChild["widget"],
                    text: columnChild["textPath"],
                  ),
                  const SizedBox(
                    width: 120,
                  )
                ]),
            ],
          )
      ],
    ),
  );
}

//add column mapper here

class DropListDataLinks {
  final List<String> titleList;
  final Map<String, List<Map<String, dynamic>>> columns;
  DropListDataLinks({required this.titleList, required this.columns});
}
