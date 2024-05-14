import 'package:flutter/material.dart';

class UnderlineAtom extends StatelessWidget {
  final double size;
  const UnderlineAtom({super.key, this.size = 100});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: size,
      color: Colors.black,
    );
  }
}
