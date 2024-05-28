import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class BlogCardOrg extends StatelessWidget {
  const BlogCardOrg(
      {super.key,
      required this.pathOfTopImage,
      required this.textAndBoldListMap,
      required this.title,
      this.isVertical = false});
  final String pathOfTopImage;
  final String title;
  final bool isVertical;
  final Map<String, dynamic>
      textAndBoldListMap; // 'text' key and 'boldTextList', their types are repectively Strin and List<String>

  controlPositionAxe(isVertical) {
    // TODO: implement getAllBlogPosts
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 800,
        width: 422,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.5), // Couleur de l'ombre avec opacité
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
              imageType: ImageDimensionType.standard,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: UnderlinedTitleMol(
                text: title,
                lineSize: 240,
                start: true,
                color: Colors.purple,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: BodyTextAtom(
                  maxLines: 10,
                  text: textAndBoldListMap['text'],
                  boldTextList: textAndBoldListMap['boldTextList'],
                  isOverflowEllipsis: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//"My funny text is start : Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore perspiciatis, eaque ducimus nobis molestias blanditiis illum suscipit, deserunt necessitatibus animi dignissimos vero, mollitia facilis repellat vitae. Ipsum, eligendi alias."
