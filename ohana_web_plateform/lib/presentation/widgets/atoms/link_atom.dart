import 'package:flutter/material.dart';

class LinkAtom extends StatelessWidget {
  const LinkAtom(
      {super.key,
      required this.context,
      required this.secondPage,
      required this.text,
      this.fontSizeVal = 20,
      this.textColor = Colors.black});
  final BuildContext context;
  final Widget secondPage;
  final String text;
  final Color textColor;
  final double fontSizeVal;

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
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationThickness: 3),
        ));
    ;
  }
}
