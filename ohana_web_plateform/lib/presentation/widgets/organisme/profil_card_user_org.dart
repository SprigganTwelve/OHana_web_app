import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ProfilCardOrg extends StatelessWidget {
  const ProfilCardOrg({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Container(
            width: 900,
            height: 100,
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
            child: const Padding(
                padding: EdgeInsets.only(left: 180, top: 30),
                child: H2TextAtom(
                  text: 'Name',
                )),
          ),
          Transform.translate(
            offset: const Offset(10, -40),
            child: const ImageAtom(
              link: 'gojo.jpg',
              imageType: ImageDimensionType.userImage,
            ),
          ),
        ],
      ),
    );
  }
}
