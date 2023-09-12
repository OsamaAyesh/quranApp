import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:quran1/screens/home_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _page = [];


  @override
  void initState() {
    // TODO: implement initState
    _page = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "الصفحة الرئيسية",
            colorLineSelected: const Color(0XFFF2EFE0),
            baseStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            selectedStyle: GoogleFonts.tajawal(
                color: const Color(0XFF4C230D),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "اتجاه القبلة للصلاة ",
            colorLineSelected: const Color(0XFFF2EFE0),
            baseStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            selectedStyle: GoogleFonts.tajawal(
                color: const Color(0XFF4C230D),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "فهرس الصفحات والسور ",
            colorLineSelected: const Color(0XFF4C230D),
            baseStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            selectedStyle: GoogleFonts.tajawal(
                color: const Color(0XFF4C230D),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "القرآن الصوتي  ",
            colorLineSelected: const Color(0XFF4C230D),
            baseStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            selectedStyle: GoogleFonts.tajawal(
                color: const Color(0XFF4C230D),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "مواقيت الصلاة ",
            colorLineSelected: const Color(0XFF4C230D),
            baseStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            selectedStyle: GoogleFonts.tajawal(
                color: const Color(0XFF4C230D),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "الأذكار ",
            colorLineSelected: const Color(0XFF4C230D),
            selected: true,
            baseStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            selectedStyle: GoogleFonts.tajawal(
                color: const Color(0XFF4C230D),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold)),
        const HomeScreen(),
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    setState(() {
      double height=MediaQuery.of(context).size.height;
      double width=MediaQuery.of(context).size.width;
    });
    return Directionality(
      textDirection: TextDirection.rtl,
      child: HiddenDrawerMenu(
        screens: _page,
        isTitleCentered: true,
        tittleAppBar: AutoSizeText("القرآن الكريم",style: GoogleFonts.tajawal(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color:Colors.white,
        ),
        minFontSize: 1, maxLines: 1,),
        backgroundColorMenu: const Color(0XFFF2EFE0),
        initPositionSelected: 0,
        enableCornerAnimation: false,
        enableScaleAnimation: true,
        enableShadowItensMenu: true,
        curveAnimation: Curves.easeIn,
        elevationAppBar: 0,
        isDraggable: true,
        typeOpen: TypeOpen.FROM_RIGHT,
        withShadow: false,
        backgroundColorAppBar: const Color(0XFF4C230D),
        backgroundColorContent: Colors.black,
        withAutoTittleName: false,
        slidePercent:   height<width? 30.w:60.w,
        contentCornerRadius: 25.sp,
      ),
    );
  }
}
