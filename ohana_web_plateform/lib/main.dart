import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/box_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/logo_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/hexagon_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/input_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/loader_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/rect_triangle_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/text_list_item_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/textarea_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/vertical_line_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/hexagon_and_text_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/search_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/text_list_mol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme:
                GoogleFonts.titilliumWebTextTheme(Theme.of(context).textTheme)),
        //GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                height: double.infinity,
                child: const Column(
                  children: [
                    TextListItemAtom(text: "yog,gjgj"),
                    HexagonAndTextMol(textContent: 'textContent'),
                    SearchBarMol(),
                    Loader(),
                    BoxShapeAtom(
                      boxShape: BoxShape.circle,
                    )
                  ],
                ))));
  }
}
