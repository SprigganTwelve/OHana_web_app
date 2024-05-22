import 'package:flutter/material.dart';

const double NAV_BAR_HEIGHT = 80;
const double SPACE_LEFT_BIG_TITLE = 200.0;
const double SPACE_TITLE_BODY = 50.0;

enum ButtonType {
  navbar(
      primaryColor: Color(0x00000000),
      hoverColor: Color(0x00000000),
      textColor: Colors.white),
  standard(
      primaryColor: Color.fromARGB(255, 168, 60, 250),
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
