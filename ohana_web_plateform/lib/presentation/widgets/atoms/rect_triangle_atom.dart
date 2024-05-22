import 'package:flutter/material.dart';

class RectTriangleBorderAtom extends StatelessWidget {
  const RectTriangleBorderAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 30.0, color: Color.fromARGB(255, 0, 0, 0)),
          right: BorderSide(width: 30.0, color: Colors.transparent),
          bottom: BorderSide(width: 50.0, color: Colors.transparent),
        ),
      ),
    );
  }
}
