import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/path_custompainter_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/blog_card_set_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/exp.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/search_input_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/about_page_template.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/contact_page_template.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/home_template.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/news_page_template.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/offers_page_template.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/services_page_template.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
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
        home: const ServicesPagesTemplate());
  }
}

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
