import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsDemo extends StatefulWidget {
  const GoogleFontsDemo({super.key});

  @override
  State<GoogleFontsDemo> createState() => _GoogleFontsDemoState();
}

class _GoogleFontsDemoState extends State<GoogleFontsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello",
          style: GoogleFonts.balooTammudu2(
            color: Colors.grey.shade500,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
