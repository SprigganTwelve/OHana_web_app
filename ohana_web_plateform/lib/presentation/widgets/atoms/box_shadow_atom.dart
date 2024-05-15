import 'package:flutter/material.dart';

class BoxShadowContainer extends StatelessWidget {
  const BoxShadowContainer(
      {super.key, required this.child, required this.widthVal});
  final Widget child;
  final double widthVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthVal,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color:
              Colors.grey.withOpacity(0.5), // Couleur de l'ombre avec opacité
          spreadRadius: 5, // Rayon de diffusion de l'ombre
          blurRadius: 7, // Rayon de flou de l'ombre
          offset: const Offset(0, 3),
        )
      ]),
      child: child,
    );
  }
}
