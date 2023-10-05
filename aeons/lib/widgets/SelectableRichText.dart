import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectableTextRich extends StatelessWidget {
  final int? maxLines;
  final TextAlign? textAlign;

  final String text;
  final FontWeight? bold;
  final FontStyle? italic;
  final double fontSize;
  final Color color;

  final String richText;
  final double richFontSize;
  final Color richcolor;
  final FontWeight? richbold;
  final FontStyle? richitalic;

  const SelectableTextRich({
    super.key,
    required this.text,
    this.bold,
    this.italic,
    this.maxLines,
    this.fontSize = 14,
    this.richText = '',
    this.richFontSize = 14,
    this.textAlign,
    this.color = Colors.white,
    this.richcolor = Colors.white,
    this.richbold = FontWeight.normal,
    this.richitalic = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      textAlign: textAlign,
      maxLines: maxLines,
      TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontWeight: bold,
          fontStyle: italic,
          fontSize: fontSize,
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        children: [
          TextSpan(
            text: richText,
            style: TextStyle(
              color: richcolor,
              fontWeight: richbold,
              fontStyle: richitalic,
              fontSize: richFontSize,
              fontFamily: GoogleFonts.quicksand().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
