import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? bacColor;
  final String title;
  final Color? textColor;
  final double? w;
  final double? h;
  

  const MyButton({
    super.key,
    required this.onPressed,
    this.bacColor,
    required this.title,
    this.textColor,
    this.w,
    this.h,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w ?? 158,
      height: h ?? 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bacColor ?? const Color(0xff3d82d0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(86),
                side: const BorderSide(
                  color: Color(0xff3d82d0),
                ))),
        onPressed: onPressed,
        child: Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 16,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
