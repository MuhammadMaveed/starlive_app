import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextformField extends StatelessWidget {
  const CustomTextformField({
    super.key,
    this.preIcon,
    this.suffIcon,
    this.hintText = "example@gmail.com",
    this.text,
    this.fontBold = FontWeight.w400,
    this.fontSize = 14,
    this.textColor = Colors.black,
    this.myController,
    this.validator,
    this.isOb = false, this.sizeBox=48,
  });

  final Icon? suffIcon;
  final Icon? preIcon;
  final String? hintText;
  final String? text;
  final FontWeight? fontBold;
  final double? fontSize;
  final double? sizeBox;
  final Color? textColor;
  final bool? isOb;
  final TextEditingController? myController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeBox,
      width: double.infinity,
      child: TextFormField(
        cursorColor:Vx.gray300,
        obscureText: isOb!,
        validator: validator,
        controller: myController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 0,),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
              fontWeight: fontBold, fontSize: fontSize, color: textColor),
          prefixIcon: preIcon,
          suffixIcon: suffIcon,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color:Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color:Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
