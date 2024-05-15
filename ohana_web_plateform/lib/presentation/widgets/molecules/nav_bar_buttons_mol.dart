import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';

class NavBarButtonsMol extends StatelessWidget {
  const NavBarButtonsMol({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ButtonAtom("Acceuil", type: ButtonType.navbar),
        ButtonAtom("Services", type: ButtonType.navbar),
        ButtonAtom("Offres", type: ButtonType.navbar),
        ButtonAtom("Qui Somme Nous", type: ButtonType.navbar),
        ButtonAtom("Nos Partenaire", type: ButtonType.navbar),
        ButtonAtom("Contact", type: ButtonType.navbar),
        ButtonAtom("Mon Espace", type: ButtonType.navbar),
      ],
    );
  }
}
