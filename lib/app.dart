import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
        subtitle1: GoogleFonts.roboto(color: Colors.white),
        subtitle2: GoogleFonts.roboto(color: Colors.white),
        bodyText1: GoogleFonts.roboto(color: Colors.white),
        bodyText2: GoogleFonts.roboto(color: Colors.white),
      )),
      home:  const HomePage(),
    );
  }
}