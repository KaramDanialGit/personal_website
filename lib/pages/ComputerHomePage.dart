import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_website/Screens/GameScreen.dart';
import 'NavBar.dart';
import '../Screens/IntroScreen.dart';
import '../Screens/GameScreen.dart';

class ComputerHomePage extends StatelessWidget {
  const ComputerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            IntroScreen(),
            GameScreen(),
          ],
        ),
      ),
    );
  }
}
