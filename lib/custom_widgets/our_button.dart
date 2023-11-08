import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starlive_app/consts/colors.dart';

class OurButton extends StatelessWidget {
  const OurButton(
      {super.key,
      this.text = "Our Button",
      this.fontBold = FontWeight.bold,
      this.fontSize = 16,
      this.textColor = Colors.white,
      this.height = 50,
      this.width = double.infinity,
      this.borderRadius = 25,
      this.borderColor = pinkColor,
      this.backgroundColor = pinkColor,
      this.onPress,
      this.myWidget});

  final String? text;
  final FontWeight? fontBold;
  final double? fontSize;
  final double? height;
  final double? borderRadius;
  final double? width;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final Widget? myWidget;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            border: Border.all(color: borderColor!, width: 2),
            color: backgroundColor,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 0),
              child: Text(
                text!,
                style: GoogleFonts.poppins(
                    fontWeight: fontBold,
                    fontSize: fontSize,
                    color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
