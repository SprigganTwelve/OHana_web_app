import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextListItemAtom extends StatelessWidget {
  final String text;
  final double fontSized;
  final IconData icon;
  final Color color;
  const TextListItemAtom(
      {Key? key,
      required this.text,
      this.fontSized = 20.0,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child:
                Icon(icon, size: 6.0, color: color), // Cette icône sert de puce
          ),
          Text(
            text,
            style: TextStyle(fontSize: fontSized, color: color),
          ),
        ],
      ),
    );
  }
}
