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
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          children: [
            Spacer(),
            const Text(
              "Skills: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            ...skills
                .map(
                  (skill) => Row(
                    children: [
                      Container(
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
                      SizedBox(width: 10),
                    ],
                  ),
                )
                .toList(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
