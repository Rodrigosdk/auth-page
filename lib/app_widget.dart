import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page/auth_page.dart';
import 'page/components/infomartive_content/infomartive_content_extensions.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff191524),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
                fontWeight: FontWeight.w400))
        ]
      ),
      home: const AuthPage(),
    );
  }
}
