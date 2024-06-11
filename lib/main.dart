import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vr_mode/strings.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      home: const HomeScreen(),
    );
  }
}
