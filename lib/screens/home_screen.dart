
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran1/pref/shared_pref_controller.dart';


class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key,this.drawerController});
  // ignore: prefer_typing_uninitialized_variables
  final drawerController;


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int pageIndex = 0;
    @override
    void initState() {
      // TODO: implement initState
      print(SharedPrefController().getValue(PrefKeys.pageViewSaves.name));
      super.initState();
    }
    setState(() {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      print(height);
      print(width);
    });
    return Scaffold(
      body: height > width
          ? SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: 604,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (value) {
                        // value=SharedPrefController().getValue(PrefKeys.pageViewSaves.name);
                        setState(() {
                          SharedPrefController().setValue(PrefKeys.pageViewSaves.name, value+1);
                          print(SharedPrefController().getValue(PrefKeys.pageViewSaves.name));
                        });
                      },
                      itemBuilder: (context, index) {
                        return Center(
                          child: GestureDetector(
                            onTap: () {
                              // _showBottomSheet(context, index + 1);
                              widget.drawerController.toggle();
                              print("Enter ");
                            },
                            child: Image.asset(
                              "assets/quran/${index+1}.png",
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 604,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Center(
                          child: GestureDetector(
                            onTap: () {
                              _showBottomSheet(context, index + 1);
                              SharedPrefController().setValue(PrefKeys.pageViewSaves.name, index+1);
                              // print( "Number Page"+ SharedPrefController().getValue(PrefKeys.pageViewSaves.name));
                            },
                            child: Column(children: [
                              Image.asset(
                                "assets/quran/${index + 1}.png",
                                width: 800.w,
                                fit: BoxFit.fill,
                              ),
                              const Divider(
                                thickness: 2,
                                color: Color(0XFF4C230D),
                              ),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

void _showBottomSheet(BuildContext context, int numberPageIndex) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35))),
    builder: (BuildContext context) {
      return SingleChildScrollView(
        physics:const  BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 305.h,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 6.h,
                      width: 49.w,
                      decoration: BoxDecoration(
                        color: Color(0XFF4C230D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            "assets/logo.svg",
                            width: 104.w,
                            height: 96.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 280.w),
                          child: SizedBox(
                            height: 36.h,
                            width: 36.w,
                            child: Stack(
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                    "assets/numberPageImage.svg",
                                    height: 36.h,
                                    width: 36.w,
                                  ),
                                ),
                                Center(
                                  child: AutoSizeText(
                                    "$numberPageIndex",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    minFontSize: 1,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        "القرآنُ كالمطر، يروي قلوبنا وحياتنا، فلا تدعه يجفف فينا.",
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    SizedBox(
                      width: 311.w,
                      height: 56.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF4C230D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            minimumSize: Size(311.w, 56.h)),
                        onPressed: () {},
                        child: Text(
                          "حفظ علامة ",
                          style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 27.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
