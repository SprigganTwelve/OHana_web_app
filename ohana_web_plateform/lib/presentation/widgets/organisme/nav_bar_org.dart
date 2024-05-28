import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/main.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/link_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/logo_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class NavBarOrg extends StatefulWidget {
  const NavBarOrg({super.key, required this.followingWidget});
  final Widget followingWidget;

  @override
  State<NavBarOrg> createState() => _NavBarOrgState();
}

class _NavBarOrgState extends State<NavBarOrg> {
  bool _isOnButtonHover = false;
  bool _isOnDropDownList = false;
  final Map<String, dynamic> mapCoordsButton = {};
  final Map<String, GlobalKey<State<StatefulWidget>>> _navBarButtonsKeysList = {
    'acceuil': GlobalKey(),
    'services': GlobalKey(),
    'offres': GlobalKey(),
    'quiSommeNous': GlobalKey(),
  };
  //Link
  final myAcceueilLinks = DropListDataLinks(
    titleList: ['List Anime', 'Power styles', 'Lyrics'],
    columns: {
      "column1": [
        {
          'textPath': 'fort comme kurapukia',
          'widget': const MyTestPage(),
          'isImage': true,
          'imageLink': 'sukuna3.jpg'
        },
        {
          'textPath': 'lalalalla',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'expertise',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'dragon ball z',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'sun jin woo',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'cid kageno',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'kuroiwa medaka',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'zeleph dragnir',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'Natsu dragnir',
          'widget': const MyTestPage(),
          'isImage': false
        },
      ],
      "column2": [
        {
          'textPath': 'the world',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'SansenSekai',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'Ryoki Tenkai',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {'textPath': 'Bankai', 'widget': const MyTestPage(), 'isImage': false},
        {
          'textPath': 'ninjutsu',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {'textPath': 'alter', 'widget': const MyTestPage(), 'isImage': false},
        {
          'textPath': 'ito no yomi',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {'textPath': 'stand', 'widget': const MyTestPage(), 'isImage': false},
        {'textPath': 'mana', 'widget': const MyTestPage(), 'isImage': false},
      ],
      "column3": [
        {
          'textPath': 'explosion',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'I am atomic',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'muda muda ',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {'textPath': 'ikuso', 'widget': const MyTestPage(), 'isImage': false},
        {
          'textPath': 'saiikonikedo',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'full counter',
          'widget': const MyTestPage(),
          'isImage': false
        },
        {
          'textPath': 'spectrum',
          'widget': const MyTestPage(),
          'isImage': false
        },
      ]
    },
  );

  changeHoverState() {
    setState(() {
      _isOnButtonHover = !_isOnButtonHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return getNavBarDisplay();
  }

  Column getNavBarDisplay() {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
              Row(mainAxisSize: MainAxisSize.min, children: [
                Column(
                    mainAxisSize: MainAxisSize.min,
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
            if (_isOnButtonHover || _isOnDropDownList)
              MouseRegion(
                  onEnter: (event) {
                    _isOnDropDownList = true;
                  },
                  onExit: (event) {
                    setState(() {
                      _isOnDropDownList = false;
                    });
                  },
                  child: Positioned(child: getDropListDisplay(myAcceueilLinks)))
          ],
        )
      ],
    );
  }

  Row _navbarButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MouseRegion(
          onEnter: (event) async {
            //modif
            changeHoverState();
          },
          onExit: (event) {
            changeHoverState();
          },
          child: ButtonAtom(
            "ACCUEIL",
            type: ButtonType.navbar,
            key: _navBarButtonsKeysList['accueil'],
          ),
        ),
        MouseRegion(
            onEnter: (event) {
              changeHoverState();
            },
            onExit: (event) {
              changeHoverState();
            },
            child: ButtonAtom(
              "SERVICES",
              type: ButtonType.navbar,
              key: _navBarButtonsKeysList['services'],
            )),
        MouseRegion(
            onEnter: (event) {
              changeHoverState();
            },
            onExit: (event) {
              changeHoverState();
            },
            child: ButtonAtom(
              "OFFRES",
              type: ButtonType.navbar,
              key: _navBarButtonsKeysList['offres'],
            )),
        MouseRegion(
            onEnter: (event) {
              changeHoverState();
            },
            onExit: (event) {
              changeHoverState();
            },
            child: ButtonAtom(
              "QUI SOMMES-NOUS ?",
              type: ButtonType.navbar,
              key: _navBarButtonsKeysList['quiSommeNous'],
            )),
        const SizedBox(
          width: 2,
        ),
        _searchButton(),
        const SizedBox(width: 8),
        const ButtonAtom("CONTACT", type: ButtonType.standard),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }

//modif
  void _updateMouseRegionPosition(
      GlobalKey<State<StatefulWidget>> mouseRegionKey,
      Map<String, dynamic> mouseRegionPosition,
      String id) {
    final RenderBox? renderBox =
        mouseRegionKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      setState(() {
        mouseRegionPosition['coords'] =
            renderBox.localToGlobal(renderBox.size.bottomRight(Offset.zero));
        mouseRegionPosition['id'] = id;
      });
    }
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

  Container getDropListDisplay(links) {
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
        child: _singleDropDownListView(links),
      ),
    );
  }
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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H2TextAtom(text: linkList.titleList[titleIndex]),
              if (linkList.titleList[titleIndex] != '')
                const UnderlineAtom(
                  color: Color.fromARGB(255, 190, 49, 215),
                  thickness: 3,
                  size: 120,
                ),
              const SizedBox(
                height: 20,
              ),
              for (var columnChild
                  in linkList.columns.values.elementAt(titleIndex))
                Row(children: [
                  LinkTextAtom(
                    secondPage: columnChild["widget"],
                    text: columnChild["textPath"],
                    isImage: columnChild['isImage'],
                    imageLink:
                        columnChild['isImage'] ? columnChild['imageLink'] : '',
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
