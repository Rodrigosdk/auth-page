import 'package:auth/page/components/button/button_entry_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page/auth_page.dart';
import 'page/components/criation_account/criation_account_extensions.dart';
import 'page/components/infomartive_content/infomartive_content_extensions.dart';
import 'page/components/input/title_input_extensions.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff191524),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(bodyLarge: GoogleFonts.titilliumWeb(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: GoogleFonts.titilliumWeb(
            color: Colors.white60,
            fontSize: 14,
            fontWeight: FontWeight.w600),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none),
          fillColor: const Color(0xff2B2C4E),
          filled: true,
        ),
        useMaterial3: true,
        extensions: [
          InfomartiveContentExtensions(
            title: GoogleFonts.titilliumWeb(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold), 
            subtitle: GoogleFonts.titilliumWeb(
                color: const Color(0xffFAFAFC),
                fontSize: 16,
                fontWeight: FontWeight.w400)),
          CriationAccountExtensions(
            title: GoogleFonts.titilliumWeb(color: const Color(0xffFAFAFC),fontSize: 16, fontWeight: FontWeight.w400),
            linktitle: GoogleFonts.titilliumWeb(color: const Color(0xff7C3AED),fontSize: 16, fontWeight: FontWeight.w700)
          ),
          TitleInputExtensions(
            title: GoogleFonts.titilliumWeb(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
            linktitle: GoogleFonts.titilliumWeb(color: const Color(0xff7C3AED), fontSize: 14, fontWeight: FontWeight.w600)
          ),
          ButtonEntryExtensions(
            textButton: GoogleFonts.titilliumWeb(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.white), 
            background: const Color(0xff7C3AED)),
        ]
      ),
      home: const AuthPage(),
    );
  }
}
