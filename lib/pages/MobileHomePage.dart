import 'package:flutter/material.dart';
import '../Screens/MobileProjectScreen.dart';
import 'dart:ui';
import '../Screens/IntroScreen.dart';
import '../Screens/GameScreen.dart';
import '../Screens/ProjectScreen.dart';
import '../Screens/SkillsScreen.dart';
import '../Screens/WipScreen.dart';
import '../Screens/MobileIntroScreen.dart';
import 'MobileNavBar.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74.0),
        child: MobileNavBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MobileIntroScreen(),
            Line(),
            MobileProjectScreen(),
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
