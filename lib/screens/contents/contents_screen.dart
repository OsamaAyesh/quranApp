import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran1/pref/shared_pref_controller.dart';
import 'package:quran1/screens/contents/contents_widget/tabBarWidgetSurah.dart';


class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key, this.drawerController});

  // ignore: prefer_typing_uninitialized_variables
  final drawerController;

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.drawerController.toggle();
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100.h,
              width: 360.w,
              color: const Color(0XFF4C230D),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    height: 34.h,
                    width: 318.w,
                    child: TextField(
                      style: GoogleFonts.tajawal(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      textAlign: TextAlign.end,
                      autocorrect: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: GoogleFonts.tajawal(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        // hintText: "البحث ",
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.h,),
            Container(
              height: 102.h,
              width: 318.w,
              decoration: BoxDecoration(
                  color: const Color(0XFFF5E2CE),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/quran_content_screen.png",
                        height: 100.h,
                        width: 111.w,
                        fit: BoxFit.contain,
                      ),
                      const Expanded(child: SizedBox()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Image.asset("assets/quran_small.png"),
                          SizedBox(height: 16.h,),
                          Row(
                            children: [
                              AutoSizeText(
                                "آخر سورة قرأتها",
                                style: GoogleFonts.tajawal(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width:
                                11.h,
                              ),
                              Image.asset(
                                "assets/logo.png",height: 30.h,
                                width: 30.w,fit: BoxFit.contain,),
                              SizedBox(
                                width:
                                11.h,
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  AutoSizeText(
                                    "${SharedPrefController().getValue(PrefKeys.pageViewSaves.name)+1}",
                                    style: GoogleFonts.tajawal(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  AutoSizeText(
                                    "رقم الصفحة 5",
                                    style: GoogleFonts.tajawal(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(width: 70.w,),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height:17.h ,),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 34.w),
              child: SizedBox(
                height: 36.h,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 35.h),
                      child: const Divider(
                        color: Color(0XFFF5E2CE),
                        thickness: 2,
                      ),
                    ),

                    SizedBox(
                      height: 36.h,
                      child: TabBar(
                        controller: tabController,
                        indicatorColor: const Color(0XFF4C230D),
                        unselectedLabelColor: const Color(0XFF4C230D),
                        splashBorderRadius: BorderRadius.circular(20),
                        physics: const BouncingScrollPhysics(),
                        unselectedLabelStyle: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        labelColor: Colors.black,
                        labelStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black),
                        tabs: [
                          Tab(
                            child: AutoSizeText(
                              "السور",
                              minFontSize: 1,
                              style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                          Tab(
                            child: AutoSizeText(
                              "الصفحات ",
                              minFontSize: 1,
                              style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: const [
                  TabBarWidgetSurah(),
                  TabBarWidgetSurah(),

                  // TabBarWidgetPage(),
                  // ... other TabBarView children
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
