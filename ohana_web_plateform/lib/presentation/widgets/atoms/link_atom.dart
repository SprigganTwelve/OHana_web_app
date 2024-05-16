import 'package:flutter/material.dart';

class LinkAtom extends StatelessWidget {
  const LinkAtom(
      {super.key,
      required this.secondPage,
      required this.text,
      this.fontSizeVal = 20,
      this.textColor = Colors.black,
      this.isUnderlined = false});
  final Widget secondPage;
  final String text;
  final Color textColor;
  final double fontSizeVal;
  final bool isUnderlined;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => secondPage))
            },
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSizeVal,
              color: textColor,
              decoration:
                  isUnderlined ? TextDecoration.underline : TextDecoration.none,
              decorationColor: Colors.black,
              decorationThickness: 3),
        ));
    ;
  }
}
