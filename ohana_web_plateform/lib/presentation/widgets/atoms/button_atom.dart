import 'package:flutter/material.dart';

class ButtonAtom extends StatefulWidget {
  final String content;
  final ButtonType type;
  final double fontSizeVal;

  const ButtonAtom(this.content,
      {super.key, required this.type, this.fontSizeVal = 15});

  @override
  _ButtonAtomState createState() => _ButtonAtomState();
}

class _ButtonAtomState extends State<ButtonAtom> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          _isHover = val;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(
            left: 30.0, top: 5.0, right: 30.0, bottom: 5.0),
        decoration: BoxDecoration(
            color: _isHover ? widget.type.hoverColor : widget.type.primaryColor,
            border: _isHover ? getBorderOnNavbarButton(widget.type) : null),
        child: Text(
          widget.content,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: widget.type.textColor,
              fontSize: widget.fontSizeVal),
        ),
      ),
    );
  }
}

Border? getBorderOnNavbarButton(ButtonType type) {
  return type.isNavbarButton()
      ? const Border(
          bottom:
              BorderSide(color: Colors.white /*Color(0xff865DFF)*/, width: 6.0))
      : null;
}

enum ButtonType {
  navbar(
      primaryColor: Color(0x00000000),
      hoverColor: Color(0x00000000),
      textColor: Colors.white),
  standard(
      primaryColor: Color(0xff865DFF),
      hoverColor: Color(0xffE384FF),
      textColor: Colors.white),
  green(
      primaryColor: Color(0xff33BBC5),
      hoverColor: Color(0xffD1FFF3),
      textColor: Colors.white),
  red(
      primaryColor: Color(0xffD20062),
      hoverColor: Color(0xffD6589F),
      textColor: Colors.white);

  final Color? primaryColor;
  final Color? hoverColor;
  final Color? textColor;

  const ButtonType({this.primaryColor, this.hoverColor, this.textColor});

  bool isNavbarButton() {
    return this == ButtonType.navbar;
  }
}
