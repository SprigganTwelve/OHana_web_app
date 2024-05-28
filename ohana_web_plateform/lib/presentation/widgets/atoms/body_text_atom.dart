import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyTextAtom extends StatelessWidget {
  final String text;
  final List<String> boldTextList;
  final double boldFontSizeVal;
  final double noBoldFontSizeVal;
  final bool isOverflowEllipsis;
  final int? maxLines;
  final bool uniqueModeBoldList;

  const BodyTextAtom(
      {super.key,
      required this.text,
      required this.boldTextList,
      this.boldFontSizeVal = 20,
      this.noBoldFontSizeVal = 20,
      this.isOverflowEllipsis = false,
      this.maxLines,
      this.uniqueModeBoldList = false});

  @override
  Widget build(BuildContext context) {
    String formattedText = formatText(text, uniqueModeBoldList);
    return getRichTextFromFormattedText(formattedText);
  }

  String formatText(String text, bool mode) {
    String newContent = text;
    for (var i = 0; i < boldTextList.length; i++) {
      String boldWord = boldTextList[i];
      if (text.contains(boldWord)) {
        mode
            ? newContent = newContent.replaceAll(boldWord, '/$boldWord/')
            : newContent.replaceFirst(boldWord, '/$boldWord/');
      }
    }
    return newContent;
  }

  RichText getRichTextFromFormattedText(String formattedText) {
    return RichText(
      softWrap: true,
      maxLines: maxLines,
      overflow: isOverflowEllipsis ? TextOverflow.ellipsis : TextOverflow.clip,
      text: TextSpan(
        style: GoogleFonts.titilliumWeb(fontSize: 15.0),
        children: getTextSpanListFromText(formattedText),
      ),
    );
  }

  List<TextSpan> getTextSpanListFromText(String formattedText) {
    List<String> textList = formattedText.split('/');
    List<TextSpan> textSpanList = [];
    for (var i = 0; i < textList.length; i++) {
      if (boldTextList.contains(textList[i])) {
        var boldText = TextSpan(
          text: textList[i],
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: boldFontSizeVal),
        );
        textSpanList.add(boldText);
      } else {
        var normalText = TextSpan(
          text: textList[i],
          style: TextStyle(
            fontSize: noBoldFontSizeVal,
          ),
        );
        textSpanList.add(normalText);
      }
    }
    return textSpanList;
  }
}
