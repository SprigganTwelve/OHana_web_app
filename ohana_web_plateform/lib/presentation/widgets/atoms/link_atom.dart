import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class LinkTextAtom extends StatelessWidget {
  const LinkTextAtom({
    super.key,
    required this.secondPage,
    required this.text,
    this.fontSizeVal = 20,
    this.textColor = Colors.black,
    this.isUnderlined = false,
    this.isImage = false,
    this.imageLink = '',
  });
  final Widget secondPage;
  final bool isImage;
  final String text;
  final Color textColor;
  final double fontSizeVal;
  final String imageLink;

  final bool isUnderlined;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => secondPage))
              },
          child: isImage
              ? SizedBox(
                  height: ImageDimensionType.imageLink.heightVal,
                  width: ImageDimensionType.imageLink.widthVal,
                  child: Stack(children: [
                    ImageAtom(
                      link: imageLink,
                      imageType: ImageDimensionType.imageLink,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: H2TextAtom(
                        text: text,
                        color: Colors.white,
                      ),
                    )
                  ]),
                )
              : Text(
                  text,
                  style: TextStyle(
                      fontSize: fontSizeVal,
                      color: textColor,
                      decoration: isUnderlined
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      decorationColor: Colors.black,
                      decorationThickness: 3),
                )),
    );
    ;
  }
}
