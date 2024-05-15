import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/logo_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/nav_bar_buttons_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';

class NavBarOrg extends StatelessWidget {
  const NavBarOrg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 214, 32, 246),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LogoAtom(),
          // margin: EdgeInsets.only(right: 50),
          Row(children: [
            const Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              SocialNetworkIconMol(svgColor: Colors.white),
              NavBarButtonsMol(),
            ]),
            Container(
              width: 100,
            ),
          ])
        ],
      ),
    );
  }
}
