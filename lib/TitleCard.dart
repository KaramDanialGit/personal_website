import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleCard extends StatelessWidget {
  final String title;
  const TitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).primaryColor,
      ),
      width: MediaQuery.of(context).size.width < 1000 ? 300 : 440,
      height: 70,
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
      child: TypeWriter.text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.josefinSlab(
          textStyle: Theme.of(context).textTheme.displayMedium,
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width < 1000 ? 30 : 40,
        ),
        duration: const Duration(milliseconds: 50),
      ),
    );
  }
}
