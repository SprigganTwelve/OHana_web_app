import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/box_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/geo_map_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/link_atom.dart';
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
import 'package:ohana_web_plateform/presentation/widgets/molecules/box_under_image_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/hexagon_and_text_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/link_path_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/nav_bar_buttons_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/search_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/text_list_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/blog_card_set_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/navbar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/search_input_org.dart';

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
        home: const Scaffold(
          backgroundColor: Colors.white,
          body: Column(children: [
            // NavBarOrg(),
            // TextListMol(textList: ['dyhdydydy', 'hdhdhdhd']),
            SearchInputOrg()
          ]),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LinkPathMol(linkList: [
      {'textPath': 'Go To Second Page', 'widget': MyTestPage}
    ]);
  }
}

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
