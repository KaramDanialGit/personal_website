import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../TitleCard.dart';
import '../Carousel.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: TitleCard(title: "Favourite Projects"),
          ),
          Spacer(),
          Carousel(),
          Spacer(),
        ],
      ),
    );
  }
}
