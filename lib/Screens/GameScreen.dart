import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../RotatingCard.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreen();
}

class _GameScreen extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "Favourite Games",
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSlab(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              RotatingCard(
                background: "HKBackground.jpg",
                subject: "HollowKnightRight.png",
              ),
              Spacer(),
              RotatingCard(
                background: "DSBackground.jpg",
                subject: "DSCharacter.png",
              ),
              Spacer(),
              RotatingCard(
                background: "MGRBackground.jpg",
                subject: "MGRCharacter.png",
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
