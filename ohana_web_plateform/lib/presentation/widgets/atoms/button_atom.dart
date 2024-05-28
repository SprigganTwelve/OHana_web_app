import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ButtonAtom extends StatefulWidget {
  final String content;
  final ButtonType type;
  final double fontSizeVal;

  const ButtonAtom(this.content,
      {super.key,
      required this.type,
      this.fontSizeVal = 17,
      this.paddingEdgeInsetValue = const EdgeInsets.only(
          left: 20.0, top: 5.0, right: 20.0, bottom: 5.0)});
  final EdgeInsets paddingEdgeInsetValue;

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
        padding: widget.paddingEdgeInsetValue,
        decoration: BoxDecoration(
            color: _isHover ? widget.type.hoverColor : widget.type.primaryColor,
            border: _isHover ? getBorderOnNavbarButton(widget.type) : null,
            borderRadius: BorderRadius.circular(widget.type.border)),
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
