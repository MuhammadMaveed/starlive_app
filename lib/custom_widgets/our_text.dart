import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starlive_app/consts/colors.dart';

class OurText extends StatelessWidget {
  const OurText(
      {super.key,
      this.text = "Text",
      this.fontBold = FontWeight.w700,
      this.fontSize = 14,
      this.textColor = Colors.black,
      this.underLine = TextDecoration.none});

  final String? text;
  final FontWeight? fontBold;
  final double? fontSize;
  final Color? textColor;
  final TextDecoration? underLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.jost(
          decorationColor: pinkColor,
          decoration: underLine,
          fontSize: fontSize,
          fontWeight: fontBold,
          color: textColor),
    );
  }
}
