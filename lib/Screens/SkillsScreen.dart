import 'dart:ui';
import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  SkillsScreen({super.key});

  List<String> skills = [
    "C++",
    "Python",
    "C",
    "Rust",
    "Flutter",
    "React",
    "Node.js",
    "SQL",
    "Backend Development",
    "UI & Frontend"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
            child: Text(
              "Top Languages:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          ...skills
              .map(
                (skill) => Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(skill),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
