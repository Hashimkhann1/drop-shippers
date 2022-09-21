import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //google-fonts


class DropshipperText extends StatelessWidget {
  const DropshipperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Dropshippers',
        style:
        GoogleFonts.charm(
            fontSize: 37.0,
            color: Color(0xFF393A3E)
        )
    );
  }
}
