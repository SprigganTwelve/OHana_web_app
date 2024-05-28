import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';

class ProfilCardInfOrg extends StatelessWidget {
  const ProfilCardInfOrg(
      {super.key,
      required this.title,
      this.buttonIconAtomList = const [],
      this.addingText = ''});
  final String title;
  final String addingText;
  final List<ButtonIconAtom> buttonIconAtomList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: addingText == '' ? 110 : 110 + 20,
        width: 900,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
              padding: EdgeInsets.only(left: 100, top: 20),
              child: H2TextAtom(
                text: 'Mes informations',
              )),
          if (addingText != '')
            Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text(
                  addingText,
                  style: const TextStyle(fontSize: 15),
                )),
          Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              for (var item in buttonIconAtomList)
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: item,
                )
            ],
          ),
        ]),
      ),
    );
  }
}


  //max button heightVal : about 40,
  //max button  widthVal:about  40,