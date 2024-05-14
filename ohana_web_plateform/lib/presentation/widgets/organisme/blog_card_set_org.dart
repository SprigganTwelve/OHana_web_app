import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';

class BlogCardOrg extends StatelessWidget {
  const BlogCardOrg(
      {super.key,
      this.borderRaduisCircularVal = 0,
      required this.pathOfTopImage,
      required this.normalTextAndBoldListMap});
  final double borderRaduisCircularVal;
  final String pathOfTopImage;
  final Map<String, dynamic>
      normalTextAndBoldListMap; // 'text' key and 'boldTextList', their types are repectively Strin and List<String>

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 422,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(borderRaduisCircularVal),
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.5), // Couleur de l'ombre avec opacité
            spreadRadius: 5, // Rayon de diffusion de l'ombre
            blurRadius: 7, // Rayon de flou de l'ombre
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageAtom(
            link: pathOfTopImage,
            borderRadiusCircularVal: borderRaduisCircularVal,
          ),
          const UnderlinedTitleMol(
            text: "Title",
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: BodyTextAtom(
                  text: normalTextAndBoldListMap['text'],
                  boldTextList: normalTextAndBoldListMap['boldTextList']),
            ),
          )
        ],
      ),
    );
  }
}

//"My funny text is start : Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore perspiciatis, eaque ducimus nobis molestias blanditiis illum suscipit, deserunt necessitatibus animi dignissimos vero, mollitia facilis repellat vitae. Ipsum, eligendi alias."
