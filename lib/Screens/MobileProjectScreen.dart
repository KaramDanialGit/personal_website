import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../TitleCard.dart';
import '../Carousel.dart';
import '../MobileCarousel.dart';

class MobileProjectScreen extends StatelessWidget {
  const MobileProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 600,
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: TitleCard(title: "Favourite Projects"),
          ),
          Spacer(),
          MobileCarousel(),
          Spacer(),
        ],
      ),
    );
  }
}
