import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: Center(
          child: Text(
            'Resume',
            style: GoogleFonts.josefinSlab(
                textStyle: Theme.of(context).textTheme.displayMedium),
          ),
        ),
      ),
      body: SfPdfViewer.network(
        '../../../assets/Nov_Resume_KD.pdf',
      ),
    );
  }
}
