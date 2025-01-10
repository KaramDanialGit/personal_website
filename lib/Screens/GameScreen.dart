import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../RotatingCard.dart';
import '../TitleCard.dart';

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
      decoration: const BoxDecoration(
        color: const Color.fromRGBO(85, 106, 116, 1),
      ),
      child: const Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: TitleCard(title: "Favourite Games"),
          ),
          Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              RotatingCard(
                background: "HKBackground.jpg",
                subject: "logo_main.png",
                url: "https://www.hollowknight.com/",
              ),
              Spacer(),
              RotatingCard(
                background: "DSBackground.jpg",
                subject: "ds_logo.png",
                url:
                    "https://store.steampowered.com/app/374320/DARK_SOULS_III/",
              ),
              Spacer(),
              RotatingCard(
                background: "MGRBackground.jpg",
                subject: "mgr_logo.png",
                url:
                    "https://store.steampowered.com/app/235460/METAL_GEAR_RISING_REVENGEANCE/",
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
