import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/input_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/textarea_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/vertical_line_shape_atom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme:
                GoogleFonts.titilliumWebTextTheme(Theme.of(context).textTheme)),
        //GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
            body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonAtom("BUTTON", type: ButtonType.standard),
            ButtonAtom("BUTTON", type: ButtonType.red),
            ButtonAtom("BUTTON", type: ButtonType.green),
            ButtonAtom("BUTTON", type: ButtonType.navbar),
            H1TextAtom(text: "text"),
            H2TextAtom(text: "text"),
            BodyTextAtom(
                text: "aa bb cc dd ee ff gg hh", boldTextList: ["aa", "ff"]),
            TextAreaShape(placeholder: "Placeholder message"),
            UnderlineAtom(size: 50),
            VerticalLineShapeAtom(size: 50),
            InputAtom(placeholder: "Placeholder input")
          ],
        )));
  }
}
