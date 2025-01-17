import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'ResumeView.dart';
import 'package:provider/provider.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/themeProvider.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 2,
      color: Colors.black,
    );
  }
}

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        Material(
          child: InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResumeView(),
                ),
              ),
            },
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Icon(Icons.attach_file),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Resume",
                    style: GoogleFonts.josefinSlab(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Line(),
        Material(
          child: InkWell(
            onTap: () => {
              js.context
                  .callMethod('open', ['https://github.com/KaramDanialGit'])
            },
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Icon(SimpleIcons.github),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Github",
                    style: GoogleFonts.josefinSlab(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Line(),
        Material(
          child: InkWell(
            onTap: () => {
              js.context.callMethod('open',
                  ['https://www.linkedin.com/in/karam-danial-523509156/'])
            },
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Icon(SimpleIcons.linkedin),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "LinkedIn",
                    style: GoogleFonts.josefinSlab(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Line(),
        Material(
          child: InkWell(
            onTap: () => {
              Navigator.pop(context),
            },
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Text(
                    "Back",
                    style: GoogleFonts.josefinSlab(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    void _showMenu() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MenuOptions(),
        ),
      );
    }

    return Column(
      children: [
        Line(),
        SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 4,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            margin: EdgeInsets.zero,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 7.5),
                      child: Text(
                        'Karam Danial',
                        style: GoogleFonts.josefinSlab(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 7.5),
                      child: IconButton(
                        icon: Icon(Icons.menu_rounded),
                        onPressed: _showMenu,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Line(),
      ],
    );
  }
}
