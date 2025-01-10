import 'dart:ui';
import 'package:flutter/material.dart';

class WipScreen extends StatelessWidget {
  WipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          children: [
            Spacer(),
            Text(
              "WIP: Need to actually start logging my hobbies",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
