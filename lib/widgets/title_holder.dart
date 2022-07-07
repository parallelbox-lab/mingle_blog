import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TitleHolder extends StatelessWidget {
  final String? titleName;
  final Function? onPressed;
  const TitleHolder({Key? key, this.titleName, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$titleName',
            style:
                GoogleFonts.muli(fontSize: 15.sp, fontWeight: FontWeight.w700)),
        GestureDetector(
          onTap: onPressed as void Function()?,
          child: Text('See all',
              style: GoogleFonts.muli(
                  fontSize: 14.sp, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
