import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html';
import 'dart:math' as math;
// The download link

void download(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "karam_danial_resume.pdf";
  anchorElement.click();
}

class ResumeView extends StatelessWidget {
  ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: Card(
                elevation: 4,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 7.5),
                          child: GestureDetector(
                            child: Transform.rotate(
                              angle: 180 * math.pi / 180,
                              child: const Icon(
                                Icons.play_arrow_sharp,
                                size: 28,
                              ),
                            ),
                            onTap: () => {Navigator.pop(context)},
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Resume',
                            style: GoogleFonts.josefinSlab(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 20, bottom: 7.5),
                          child: GestureDetector(
                            child: const Icon(
                              Icons.sim_card_download_sharp,
                              size: 28,
                            ),
                            onTap: () =>
                                {download('assets/pdfs/Nov_Resume_KD.pdf')},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1280),
              child: const Image(
                image: AssetImage('assets/images/resume_image.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
