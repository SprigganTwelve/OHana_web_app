import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohana_web_plateform/presentation/widgets/templates/home_template.dart';

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
            backgroundColor: Colors.white, body: HomeTemplate()));
  }
}

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
