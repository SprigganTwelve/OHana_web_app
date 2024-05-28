import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/input_atom.dart';

class NamedInputMol extends StatelessWidget {
  const NamedInputMol({super.key, required this.text, this.placeHolder = ''});
  final String text;
  final String placeHolder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$text :',
                style: const TextStyle(fontSize: 20),
              )),
          InputAtom(
            placeholder: placeHolder,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
