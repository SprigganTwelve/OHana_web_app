import 'package:flutter/material.dart';

class TextListItemAtom extends StatelessWidget {
  final String text;
  final double fontSized;
  const TextListItemAtom({Key? key, required this.text, this.fontSized = 20.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const Icon(Icons.brightness_1,
                size: 6.0, color: Colors.black), // Cette icône sert de puce
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: fontSized),
            ),
          ),
        ],
      ),
    );
  }
}
