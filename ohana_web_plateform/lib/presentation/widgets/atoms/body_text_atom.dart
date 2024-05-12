import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyTextAtom extends StatelessWidget {
  final String text;
  final List<String> boldTextList;

  const BodyTextAtom(
      {super.key, required this.text, required this.boldTextList});

  @override
  Widget build(BuildContext context) {
    String formattedText = formatText(text);
    return getRichTextFromFormattedText(formattedText);
  }

  String formatText(String text) {
    String newContent = text;
    for (var i = 0; i < boldTextList.length; i++) {
      String boldWord = boldTextList[i];
      if (text.contains(boldWord)) {
        newContent = newContent.replaceAll(boldWord, '/$boldWord/');
      }
    }
    return newContent;
  }

  RichText getRichTextFromFormattedText(String formattedText) {
    return RichText(
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
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
        textSpanList.add(boldText);
      } else {
        var normalText = TextSpan(text: textList[i]);
        textSpanList.add(normalText);
      }
    }
    return textSpanList;
  }
}
