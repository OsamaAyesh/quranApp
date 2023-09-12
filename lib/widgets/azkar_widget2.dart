import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class AzkarWidget extends StatefulWidget {
   AzkarWidget({super.key,
    required this.title,
    required this.iconData,
  });

  String title;
  IconData iconData;
  @override
  State<AzkarWidget> createState() => _AzkarWidgetState();
}

class _AzkarWidgetState extends State<AzkarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15.w,
        ),
        Icon(
          Icons.expand_more,
          color: Colors.white,
          size: 24.w,
        ),
        const Expanded(child: SizedBox()),
        Text(
          widget.title,
          style: GoogleFonts.tajawal(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Icon(
            widget.iconData,
          color: Colors.white,
          size: 24.w,
        ),
        SizedBox(
          width: 15.w,
        ),
      ],
    );
  }
}
