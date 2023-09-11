import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key, this.drawerController});

  final drawerController;

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  bool selected = false;
  bool selected2 = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.drawerController.toggle();
      },
      child: Scaffold(
          body: Stack(
        children: [
          Image.asset(
            "assets/backgroungImage.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Center(
                  child: Image.asset(
                "assets/logo.png",
                width: 100.w,
                height: 100.h,
                fit: BoxFit.contain,
              )),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                          selected2=false;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: AnimatedContainer(
                          height: selected ? 500.h : 80.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: selected == false
                                ? Color(0XFF4C230D)
                                : Color(0XFFF5E2CE),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          duration: Duration(milliseconds: 500),
                          child: selected == false
                              ? Row(
                                  children: [
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      color: Colors.white,
                                      size: 24.w,
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "أذكار الصباح",
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
                                      Icons.light_mode_outlined,
                                      color: Colors.white,
                                      size: 24.w,
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                  ],
                                )
                              : SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Center(
                                      child: AutoSizeText(
                                        "أذكار الصباح",
                                        style: GoogleFonts.tajawal(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0XFF4C230D),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: SizedBox()),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                AutoSizeText(
                                                  "أذكار الصباح المستحبة ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                Center(
                                                  child: Icon(Icons.ac_unit),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                              ],
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "أَصبَحْنا على فِطرةِ الإسلامِ، وعلى كَلِمةِ الإخلاصِ، وعلى دِينِ نَبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّمَ، وعلى مِلَّةِ أبِينا إبراهيمَ، حَنيفًا مُسلِمًا، وما كان مِنَ المُشرِكينَ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  " بسمِ اللهِ الذي لا يَضرُ مع اسمِه شيءٌ في الأرضِ ولا في السماءِ وهو السميعُ العليم .(ثلاث مرات) ِ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "سبحانَ اللَّهِ وبحمدِه لا قوَّةَ إلَّا باللَّهِ/ ما شاءَ اللَّهُ كانَ وما لم يشأ لم يَكن/ أعلمُ أنَّ اللَّهَ على كلِّ شيءٍ قديرٌ وأنَّ اللَّهَ قد أحاطَ بِكلِّ شيءٍ علمًا",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "سبحانَ اللَّهِ وبحمدِهِ مئةَ مرَّةٍ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهمَّ بِكَ أصبَحنا، وبِكَ أمسَينا، وبِكَ نحيا وبِكَ نموتُ وإليكَ المصيرُ، وإذا أمسَى فليقُلْ: اللَّهمَّ بِكَ أمسَينا وبِكَ أصبَحنا وبِكَ نحيا وبِكَ نموتُ وإليكَ النُّشورٍُ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "رَضيتُ باللَّهِ ربًّا، وبالإسلامِ دينًا، وبِمُحمَّدٍ رسولًا، من قالها وجبت له الجنة.",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهمَّ عالِمَ الغَيبِ والشَّهادةِ، فاطرَ السَّمواتِ والأرضِ، رَبَّ كلِّ شيءٍ ومَليكَهُ، أشهدُ أن لا إلَهَ إلَّا أنتَ، أعوذُ بِكَ مِن شرِّ نفسي وشرِّ الشَّيطانِ وشِركِهِ، قلهُ إذا أصبَحتَ، وإذا أمسَيتَ، وإذا أخَذتَ مَضجعَكَ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهمَّ ما أصبحَ بي من نعمةٍ أو بأحدٍ من خلقِكَ فمنكَ وحدَكَ لا شريكَ لكَ فلكَ الحمدُ ولكَ الشُّكرُ. فمن قالها عندما يُصبح فقد أدَّى شكرَ يومِهِ، ومن قالَ مثلَ ذلكَ حينَ يمسي فقد أدَّى شكرَ ليلتِهِ.",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "سُبْحَانَ اللهِ وَبِحَمْدِهِ، عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ، وهي تُقال ثلاث مرات.",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهُمَّ إنِّي أصبَحتُ أُشهِدُك، وأُشهِدُ حَمَلةَ عَرشِكَ، ومَلائِكَتَك، وجميعَ خَلقِكَ: أنَّكَ أنتَ اللهُ لا إلهَ إلَّا أنتَ، وأنَّ مُحمَّدًا عبدُكَ ورسولُكَ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهمَّ ما أصبحَ بي من نعمةٍ أو بأحدٍ من خلقِكَ فمنكَ وحدَكَ لا شريكَ لكَ فلكَ الحمدُ ولكَ الشُّكرُ. فمن قالها عندما يُصبح فقد أدَّى شكرَ يومِهِ، ومن قالَ مثلَ ذلكَ حينَ يمسي فقد أدَّى شكرَ ليلتِهِ.",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ])),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected2 = !selected2;
                          selected=false;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: AnimatedContainer(
                          height: selected2 ? 500.h : 80.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: selected2 == false
                                ? Color(0XFF4C230D)
                                : Color(0XFFF5E2CE),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          duration: Duration(milliseconds: 500),
                          child: selected2 == false
                              ? Row(
                                  children: [
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      color: Colors.white,
                                      size: 24.w,
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "أذكار المساء",
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
                                      Icons.dark_mode_outlined,
                                      color: Colors.white,
                                      size: 24.w,
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                  ],
                                )
                              : SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Center(
                                      child: AutoSizeText(
                                        "أذكار المساء",
                                        style: GoogleFonts.tajawal(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0XFF4C230D),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: SizedBox()),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                AutoSizeText(
                                                  "أذكار المساء المستحبة ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                Center(
                                                  child: Icon(Icons.ac_unit),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                              ],
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "بسمِ اللهِ الذي لا يَضرُ مع اسمِه شيءٌ في الأرضِ ولا في السماءِ وهو السميعُ العليمِ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "رَضِيتُ بِاللهِ رَبًّا، وَبِالْإِسْلَامِ دِينًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا، إِلَّا كَانَ حَقًّا عَلَى اللهِ أَنْ يُرْضِيَهُ يَوْمَ الْقِيَامَةِ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهمَّ بِكَ أمسَينا وبِكَ أصبَحنا وبِكَ نحيا وبِكَ نموتُ وإليكَ المصير",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "سبحانَ اللَّهِ وبحمدِهِ مئةَ مرَّةٍ: لم يأتِ أحدٌ يومَ القيامةِ بأفضلَ ممَّا جاءَ بِهِ، إلَّا أحدٌ قالَ مثلَ ما قالَ، أو زادَ علَيهِ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "سُبْحَانَ اللهِ وَبِحَمْدِهِ، عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهُمَّ إنِّي أمسيت أُشهِدُك، وأُشهِدُ حَمَلةَ عَرشِكَ، ومَلائِكَتَك، وجميعَ خَلقِكَ: أنَّكَ أنتَ اللهُ لا إلهَ إلَّا أنتَ، وأنَّ مُحمَّدًا عبدُكَ ورسولُكَ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 4,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "لا إلهَ إلَّا اللهُ وحدَه لا شريكَ له له الملكُ وله الحمدُ وهو على كلِّ شيءٍ قديرٌ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "أمسَيْنا على فِطرةِ الإسلامِ وعلى كَلِمةِ الإخلاصِ وعلى دينِ نبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّم وعلى مِلَّةِ أبينا إبراهيمَ حنيفًا مسلمًا وما كان مِنَ المشركينَ",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: SizedBox(
                                                width: 300.w,
                                                child: AutoSizeText(
                                                  "اللَّهمَّ ما أصبح بي مِن نعمةٍ أو بأحَدٍ مِن خَلْقِكَ، فمنكَ وحدَكَ لا شريكَ لكَ، فلَكَ الحمدُ ولكَ الشُّكرُ)،[١٣] وفي المساء يُقال: (اللهُمّ ما أمسى...)، فمن قالها فقد أدى شُكْرَ ذلكَ اليومِ.",
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 5,
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/divide.png",
                                              width: 310.w,
                                              height: 20.h,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ])),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
