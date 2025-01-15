import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:google_fonts/google_fonts.dart';
import '../TitleCard.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 70,
          decoration: const BoxDecoration(
            color: const Color.fromRGBO(85, 106, 116, 1),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 550,
                  width: 440,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TitleCard(title: "Software Engineer"),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
                        child: Text(
                          "Hello, I'm Karam and welcome to my profile!\n\n"
                          "Here you can find random facts about me and my resume.\n\n"
                          "In the meantime, here’s a short summary:\n\n"
                          "University:\n"
                          "University of Waterloo\n\n"
                          "Major:\n"
                          "Biomedical Engineering and Computing\n\n"
                          "Interests:\n"
                          "Software - Guitar - Caffeine - Gaming",
                          style: GoogleFonts.josefinSlab(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  width: 440,
                  height: 550,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: ClipRRect(
                      child: Image.asset("assets/images/Me.jpg",
                          width: 440, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
