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

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final bool useMobileLayout = MediaQuery.of(context).size.shortestSide < 450;

    return Column(
      children: [
        Line(),
        SizedBox(
          height: 70,
          width: double.infinity,
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
                  if (useMobileLayout == true) ...[
                    const Scaffold(
                      drawer: Drawer(),
                    ),
                  ] else ...[
                    Card(
                      elevation: 0,
                      child: Center(
                        child: Text(
                          "About me -> ",
                          style: GoogleFonts.josefinSlab(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        // child: Tooltip(
                        //   message: 'About Me',
                        //   child: Icon(Icons.list),
                        // ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Card(
                      elevation: 0,
                      child: GestureDetector(
                        child: const Tooltip(
                          message: 'Resume',
                          child: Icon(Icons.attach_file),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResumeView(),
                            ),
                          ),
                        },
                      ),
                    ),
                    const SizedBox(width: 50),
                    Card(
                      elevation: 0,
                      child: GestureDetector(
                        child: const Tooltip(
                          message: 'GitHub',
                          child: Icon(SimpleIcons.github),
                        ),
                        onTap: () => {
                          js.context.callMethod(
                              'open', ['https://github.com/KaramDanialGit'])
                        },
                      ),
                    ),
                    const SizedBox(width: 50),
                    Card(
                      elevation: 0,
                      child: GestureDetector(
                        child: const Tooltip(
                          message: 'LinkedIn',
                          child: Icon(SimpleIcons.linkedin),
                        ),
                        onTap: () => {
                          js.context.callMethod(
                            'open',
                            [
                              'https://www.linkedin.com/in/karam-danial-523509156/'
                            ],
                          )
                        },
                      ),
                    ),
                    const SizedBox(width: 50),
                    GestureDetector(
                      onTap: themeProvider.toggleTheme,
                      child: const Center(
                        child: Tooltip(
                          message: 'Theme',
                          child: Icon(Icons.nightlight),
                        ),
                      ),
                    ),
                  ],
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
