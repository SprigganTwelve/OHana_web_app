import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/logo_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List<String> _hoveredSubItems = [];
  bool _isHoveringDropList = false;
  bool _isHoveringNavBar = false;
  double _regionBottomRight = 0;

  final Map<String, GlobalKey<State<StatefulWidget>>> _navBarItemsKeysList = {
    'accueil': GlobalKey(),
    'blog': GlobalKey(),
    'services': GlobalKey(),
    'offres': GlobalKey(),
    'quiSommesNous': GlobalKey(),
    'carrieres': GlobalKey(),
  };

  void onHoverExit() {
    if (_isHoveringDropList || _isHoveringDropList) {
      setState(() {
        _hoveredSubItems = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _isHoveringDropList = true;
      },
      onExit: (event) {
        onHoverExit();
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: const Color.fromARGB(255, 214, 32, 246),
            height: NAV_BAR_HEIGHT,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [LogoAtom(), _navBarItems()]),
          ),
          if (_hoveredSubItems.isNotEmpty)
            Positioned(
                top: 80,
                left: _regionBottomRight,
                child: MouseRegion(
                  onEnter: (event) {},
                  onExit: (event) {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(
                              0.5), // Couleur de l'ombre avec opacité
                          spreadRadius: 5, // Rayon de diffusion de l'ombre
                          blurRadius: 7, // Rayon de flou de l'ombre
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _hoveredSubItems
                          .map((subItem) => Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, left: 20, right: 20),
                                child: H2TextAtom(
                                  text: subItem,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ))
        ],
      ),
    );
  }

  Row _navBarItems() {
    return Row(
      children: [
        navBarItem("ACCUEIL", [], _navBarItemsKeysList['accueil']),
        const SizedBox(width: 2),
        navBarItem("BLOG", ["Actualités", "Evenements", "Articles"],
            _navBarItemsKeysList['blog']),
        const SizedBox(width: 2),
        navBarItem(
            "SERVICES",
            ["Developpement web", "IA", "Cybersécurité", "SEO", "Design"],
            _navBarItemsKeysList['services']),
        const SizedBox(width: 2),
        navBarItem(
            "OFFRES",
            [
              "Produits Sur Mesure",
              "Conseils",
              "Catalogue Tarifs",
              "Production Agile"
            ],
            _navBarItemsKeysList['offres']),
        const SizedBox(width: 2),
        navBarItem(
            "QUI SOMMES-NOUS ?", [], _navBarItemsKeysList['quiSommesNous']),
        const SizedBox(width: 2),
        navBarItem("CARRIERES", ["Offres d'emploi", "Espace candidat"],
            _navBarItemsKeysList['carrieres']),
        const SizedBox(width: 2),
        _searchButton(),
        const SizedBox(width: 8),
        const ButtonAtom("CONTACT", type: ButtonType.standard),
        const SizedBox(width: 45),
      ],
    );
  }

  MouseRegion navBarItem(
      String content, List<String> subItems, GlobalKey? globalkey) {
    return MouseRegion(
        key: globalkey,
        onEnter: (event) {
          onHoverEnter(subItems, globalkey);
        },
        child: ButtonAtom(
          content,
          type: ButtonType.navbar,
        ));
  }

  void onHoverEnter(subItems, mouseRegionKey) {
    setState(() {
      _hoveredSubItems = subItems;
    });
    final RenderBox? renderBox =
        mouseRegionKey.currentContext?.findRenderObject() as RenderBox?;
    /*if (renderBox != null) {
      print(renderBox.localToGlobal(renderBox.size.bottomRight(Offset.zero)));
    }*/
    if (renderBox != null) {
      setState(() {
        _regionBottomRight =
            renderBox.localToGlobal(renderBox.size.bottomLeft(Offset.zero)).dx;
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
}
