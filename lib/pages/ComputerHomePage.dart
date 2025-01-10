import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_website/Screens/WipScreen.dart';
import 'NavBar.dart';
import '../Screens/IntroScreen.dart';
import '../Screens/GameScreen.dart';
import '../Screens/ProjectScreen.dart';
import '../Screens/SkillsScreen.dart';
import '../Screens/WipScreen.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      color: Colors.black,
    );
  }
}

class ComputerHomePage extends StatelessWidget {
  const ComputerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74.0),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            IntroScreen(),
            Line(),
            ProjectScreen(),
            Line(),
            SkillsScreen(),
            Line(),
            GameScreen(),
            Line(),
            WipScreen(),
            Line()
          ],
        ),
      ),
    );
  }
}
