import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(
    this.text, {
    super.key,
    this.color,
    this.fontStyle,
  });

  final String text;
  final Color? color;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    final resolvedColor =
        color ?? Theme.of(context).colorScheme.onSurface;

    return Text(
      text,
      style: GoogleFonts.poppins(
        color: resolvedColor,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}