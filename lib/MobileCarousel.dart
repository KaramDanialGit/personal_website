import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './CarouselCard.dart';

Map<String, String> C1 = {
  "image_path": "assets/images/hit_play_technologies_logo.png",
  "title": "IoT Device Observability",
  "description":
      "Designed an end-to-end observability feature collecting device network data capable of detecting IoT device defects and displaying them on user dashboards",
  "tools": "Node.js, JavaScript, AWS",
  "url": ""
};

Map<String, String> C2 = {
  "image_path": "assets/images/Git_Logo.png",
  "title": "Data Structures and Algorithms Repo",
  "description":
      "Built a catalogue of LeetCode solutions I've completed throughout my interviewing journey. This repo consits of any interesting questions I want to comeback to and might see again",
  "tools": "C++, Python, Rust",
  "url": "https://github.com/KaramDanialGit/LeetcodePractice"
};

Map<String, String> C3 = {
  "image_path": "assets/images/Scala.png",
  "title": "GraphQL to SQL",
  "description":
      "Programmed a CLI program responsible for reading the graphQL files in binary format and translating them to SQL queries to help engineers switch back and forth between different languages with ease",
  "tools": "Scala, JSON, SQL",
  "url": "https://github.com/KaramDanialGit/GraphSQL"
};

List<CarouselCard>? Cards = [
  CarouselCard(
      params: C1, colorLeft: Color.fromARGB(255, 36, 36, 36), size: 0.8),
  CarouselCard(
      params: C2, colorLeft: Color.fromARGB(173, 64, 40, 150), size: 3.5),
  CarouselCard(params: C3, colorLeft: Color(0xFFDD312D), size: 4.5)
];

class MobileCarousel extends StatefulWidget {
  @override
  _Carousel createState() => _Carousel();
}

class _Carousel extends State<MobileCarousel> {
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: Cards,
            options: CarouselOptions(
              enlargeCenterPage: true,
              scrollPhysics: BouncingScrollPhysics(),
            ),
            carouselController: _controller,
          ),
        ],
      ),
    );
  }
}
