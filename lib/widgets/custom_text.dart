import "package:flutter/material.dart";
// import "package:google_fonts/google_fonts.dart";
// import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final double? letterspacing;
 final int? maxLines;
  const CustomText(
      {Key? key,
      @required this.text,
      this.size,
      this.color,
      this.maxLines,
      this.letterspacing = 0,
      this.weight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text ?? '',
        style: TextStyle(
                letterSpacing: letterspacing,
                fontSize: size ?? 14,
                color: color ?? Colors.black,
                fontWeight: weight ?? FontWeight.normal),
                );
  }
}
