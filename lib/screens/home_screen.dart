import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran1/pref/shared_pref_controller.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../controller/savePageController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.drawerController});

  // ignore: prefer_typing_uninitialized_variables
  final drawerController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Save Page
  //Oration
  //Alignment Application
  //الانتقال الي العلامة
  //save pages
  //دعاء ختم المصحف
  // مشاركة

  HomeController controller = Get.put(HomeController(), permanent: true);

  late int pageIndex;
  late PageController _pageController;
  late ScrollController scrollController;
  late PageController _pageControllerListView;
  late int counterSurah;
  bool _showAppBar=false;



  @override
  void initState() {
    // TODO: implement initState
    if (SharedPrefController().getValue(PrefKeys.pageViewSaves.name) > 0) {
      _pageController = PageController(
          initialPage:
              SharedPrefController().getValue(PrefKeys.pageViewSaves.name) - 1);
      pageIndex = SharedPrefController().getValue(PrefKeys.pageViewSaves.name);
      _pageControllerListView= PageController(initialPage: SharedPrefController().getValue(PrefKeys.pageViewSaves.name) - 1);
      counterSurah = SharedPrefController().getValue(PrefKeys.pageViewSaves.name);
      print(pageIndex);
    } else {
      _pageController = PageController(initialPage: 0);
      pageIndex = 1;
      counterSurah = 0;
      print(pageIndex);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<String> SurahPages = [
      "الفاتحة", //1
      "البقرة", //2
      "البقرة", //3
      "البقرة", //4
      "البقرة", //5
      "البقرة", //6
      "البقرة", //7
      "البقرة", //8
      "البقرة", //9
      "البقرة", //10
      "البقرة", //11
      "البقرة", //12
      "البقرة", //13
      "البقرة", //14
      "البقرة", //15
      "البقرة", //16
      "البقرة", //17
      "البقرة", //18
      "البقرة", //19
      "البقرة", //20
      "البقرة", //21
      "البقرة", //22
      "البقرة", //23
      "البقرة", //24
      "البقرة", //25
      "البقرة", //26
      "البقرة", //27
      "البقرة", //28
      "البقرة", //29
      "البقرة", //30
      "البقرة", //31
      "البقرة", //32
      "البقرة", //33
      "البقرة", //34
      "البقرة", //35
      "البقرة", //36
      "البقرة", //37
      "البقرة", //38
      "البقرة", //39
      "البقرة", //40
      "البقرة", //41
      "البقرة", //42
      "البقرة", //43
      "البقرة", //44
      "البقرة", //45
      "البقرة", //46
      "البقرة", //47
      "البقرة", //48
      "البقرة", //49
      "ال عمران", //50
      "ال عمران", //51
      "ال عمران", //52
      "ال عمران", //53
      "ال عمران", //54
      "ال عمران", //55
      "ال عمران", //56
      "ال عمران", //57
      "ال عمران", //58
      "ال عمران", //59
      "ال عمران", //60
      "ال عمران", //61
      "ال عمران", //62
      "ال عمران", //63
      "ال عمران", //64
      "ال عمران", //65
      "ال عمران", //66
      "ال عمران", //67
      "ال عمران", //68
      "ال عمران", //69
      "ال عمران", //70
      "ال عمران", //71
      "ال عمران", //72
      "ال عمران", //73
      "ال عمران", //74
      "ال عمران", //75
      "ال عمران", //76
      "النساء", //77
      "النساء", //78
      "النساء", //79
      "النساء", //80
      "النساء", //81
      "النساء", //82
      "النساء", //83
      "النساء", //84
      "النساء", //85
      "النساء", //86
      "النساء", //87
      "النساء", //88
      "النساء", //89
      "النساء", //90
      "النساء", //91
      "النساء", //92
      "النساء", //93
      "النساء", //94
      "النساء", //95
      "النساء", //96
      "النساء", //97
      "النساء", //98
      "النساء", //99
      "النساء", //100
      "النساء", //101
      "النساء", //102
      "النساء", //103
      "النساء", //104
      "النساء", //105
      "المائدة", //106
      "المائدة", //107
      "المائدة", //108
      "المائدة", //109
      "المائدة", //110
      "المائدة", //111
      "المائدة", //112
      "المائدة", //113
      "المائدة", //114
      "المائدة", //115
      "المائدة", //116
      "المائدة", //117
      "المائدة", //118
      "المائدة", //119
      "المائدة", //120
      "المائدة", //121
      "المائدة", //122
      "المائدة", //123
      "المائدة", //124
      "المائدة", //125
      "المائدة", //126
      "المائدة", //127
      "الأنعام", //128
      "الأنعام", //129
      "الأنعام", //130
      "الأنعام", //131
      "الأنعام", //132
      "الأنعام", //133
      "الأنعام", //134
      "الأنعام", //135
      "الأنعام", //136
      "الأنعام", //137
      "الأنعام", //138
      "الأنعام", //139
      "الأنعام", //140
      "الأنعام", //141
      "الأنعام", //142
      "الأنعام", //143
      "الأنعام", //144
      "الأنعام", //145
      "الأنعام", //146
      "الأنعام", //147
      "الأنعام", //148
      "الأنعام", //149
      "الأنعام", //150
      "الأنعام", //151
      "الأعراف", //152
      "الأعراف", //153
      "الأعراف", //154
      "الأعراف", //155
      "الأعراف", //156
      "الأعراف", //157
      "الأعراف", //158
      "الأعراف", //159
      "الأعراف", //160
      "الأعراف", //161
      "الأعراف", //162
      "الأعراف", //163
      "الأعراف", //164
      "الأعراف", //165
      "الأعراف", //166
      "الأعراف", //167
      "الأعراف", //168
      "الأعراف", //169
      "الأعراف", //170
      "الأعراف", //171
      "الأعراف", //172
      "الأعراف", //173
      "الأعراف", //174
      "الأعراف", //175
      "الأعراف", //176
      "الانفال", //177
      "الانفال", //178
      "الانفال", //179
      "الانفال", //180
      "الانفال", //181
      "الانفال", //182
      "الانفال", //183
      "الانفال", //184
      "الانفال", //185
      "الانفال", //186
      "التوبة", //187
      "التوبة", //188
      "التوبة", //189
      "التوبة", //190
      "التوبة", //191
      "التوبة", //192
      "التوبة", //193
      "التوبة", //194
      "التوبة", //195
      "التوبة", //196
      "التوبة", //197
      "التوبة", //198
      "التوبة", //199
      "التوبة", //200
      "التوبة", //201
      "التوبة", //202
      "التوبة", //203
      "التوبة", //204
      "التوبة", //205
      "التوبة", //206
      "التوبة", //207
      "يونس", //208
      "يونس", //209
      "يونس", //210
      "يونس", //211
      "يونس", //212
      "يونس", //213
      "يونس", //214
      "يونس", //215
      "يونس", //216
      "يونس", //217
      "يونس", //218
      "يونس", //219
      "يونس", //220
      "هود", //221
      "هود", //222
      "هود", //223
      "هود", //224
      "هود", //225
      "هود", //226
      "هود", //227
      "هود", //228
      "هود", //229
      "هود", //230
      "هود", //231
      "هود", //232
      "هود", //233
      "هود", //234
      "يوسف", //235
      "يوسف", //236
      "يوسف", //237
      "يوسف", //238
      "يوسف", //239
      "يوسف", //240
      "يوسف", //241
      "يوسف", //242
      "يوسف", //243
      "يوسف", //244
      "يوسف", //245
      "يوسف", //246
      "يوسف", //247
      "يوسف", //248
      "الرعد", //249
      "الرعد", //250
      "الرعد", //251
      "الرعد", //252
      "الرعد", //253
      "الرعد", //254
      "إبراهيم", //255
      "إبراهيم", //256
      "إبراهيم", //257
      "إبراهيم", //258
      "إبراهيم", //259
      "إبراهيم", //260
      "إبراهيم", //261
      "الحجر", //262
      "الحجر", //263
      "الحجر", //264
      "الحجر", //265
      "الحجر", //266
      "النحل", //267
      "النحل", //268
      "النحل", //269
      "النحل", //270
      "النحل", //271
      "النحل", //272
      "النحل", //273
      "النحل", //274
      "النحل", //275
      "النحل", //276
      "النحل", //277
      "النحل", //278
      "النحل", //279
      "النحل", //280
      "النحل", //281
      "الإسراء", //282
      "الإسراء", //283
      "الإسراء", //284
      "الإسراء", //285
      "الإسراء", //286
      "الإسراء", //287
      "الإسراء", //288
      "الإسراء", //289
      "الإسراء", //290
      "الإسراء", //291
      "الإسراء", //292
      "الكهف", //293
      "الكهف", //294
      "الكهف", //295
      "الكهف", //296
      "الكهف", //297
      "الكهف", //298
      "الكهف", //299
      "الكهف", //300
      "الكهف", //301
      "الكهف", //302
      "الكهف", //303
      "الكهف", //304
      "مريم", //305
      "مريم", //306
      "مريم", //307
      "مريم", //308
      "مريم", //309
      "مريم", //310
      "مريم", //311
      "طه", //312
      "طه", //313
      "طه", //314
      "طه", //315
      "طه", //316
      "طه", //317
      "طه", //318
      "طه", //319
      "طه", //320
      "طه", //321
      "الأنبياء", //322
      "الأنبياء", //323
      "الأنبياء", //324
      "الأنبياء", //325
      "الأنبياء", //326
      "الأنبياء", //327
      "الأنبياء", //328
      "الأنبياء", //329
      "الأنبياء", //330
      "الأنبياء", //331
      "الحج", //332
      "الحج", //333
      "الحج", //334
      "الحج", //335
      "الحج", //336
      "الحج", //337
      "الحج", //338
      "الحج", //339
      "الحج", //340
      "الحج", //341
      "المؤمنون", //342
      "المؤمنون", //343
      "المؤمنون", //344
      "المؤمنون", //345
      "المؤمنون", //346
      "المؤمنون", //347
      "المؤمنون", //348
      "المؤمنون", //349
      "النور", //350
      "النور", //351
      "النور", //352
      "النور", //353
      "النور", //354
      "النور", //355
      "النور", //356
      "النور", //357
      "النور", //358
      "الفرقان", //359
      "الفرقان", //360
      "الفرقان", //361
      "الفرقان", //362
      "الفرقان", //363
      "الفرقان", //364
      "الفرقان", //365
      "الفرقان", //366
      "الشعراء", //367
      "الشعراء", //368
      "الشعراء", //369
      "الشعراء", //370
      "الشعراء", //371
      "الشعراء", //372
      "الشعراء", //373
      "الشعراء", //374
      "الشعراء", //375
      "الشعراء", //376
      "النمل", //377
      "النمل", //378
      "النمل", //379
      "النمل", //380
      "النمل", //381
      "النمل", //382
      "النمل", //383
      "النمل", //384
      "القصص", //385
      "القصص", //386
      "القصص", //387
      "القصص", //388
      "القصص", //389
      "القصص", //390
      "القصص", //391
      "القصص", //392
      "القصص", //393
      "القصص", //394
      "القصص", //395
      "العنكبوت", //396
      "العنكبوت", //397
      "العنكبوت", //398
      "العنكبوت", //399
      "العنكبوت", //400
      "العنكبوت", //401
      "العنكبوت", //402
      "العنكبوت", //403
      "الروم", //404
      "الروم", //405
      "الروم", //406
      "الروم", //407
      "الروم", //408
      "الروم", //409
      "الروم", //410
      "لقمان", //411
      "لقمان", //412
      "لقمان", //413
      "لقمان", //414
      "السجدة", //415
      "السجدة", //416
      "السجدة", //417
      "الأحزاب", //418
      "الأحزاب", //419
      "الأحزاب", //420
      "الأحزاب", //421
      "الأحزاب", //422
      "الأحزاب", //423
      "الأحزاب", //424
      "الأحزاب", //425
      "الأحزاب", //426
      "الأحزاب", //427
      "سبأ", //428
      "سبأ", //429
      "سبأ", //430
      "سبأ", //431
      "سبأ", //432
      "سبأ", //433
      "فاطر", //434
      "فاطر", //435
      "فاطر", //436
      "فاطر", //437
      "فاطر", //438
      "فاطر", //439
      "يس", //440
      "يس", //441
      "يس", //442
      "يس", //443
      "يس", //444
      "يس", //445
      "الصافات", //446
      "الصافات", //447
      "الصافات", //448
      "الصافات", //449
      "الصافات", //450
      "الصافات", //451
      "الصافات", //452
      "ص", //453
      "ص", //454
      "ص", //455
      "ص", //456
      "ص", //457
      "الزمر", //458
      "الزمر", //459
      "الزمر", //460
      "الزمر", //461
      "الزمر", //462
      "الزمر", //463
      "الزمر", //464
      "الزمر", //465
      "الزمر", //466
      "غافر", //467
      "غافر", //468
      "غافر", //469
      "غافر", //470
      "غافر", //471
      "غافر", //472
      "غافر", //473
      "غافر", //474
      "غافر", //475
      "غافر", //476
      "فصلت", //477
      "فصلت", //478
      "فصلت", //479
      "فصلت", //480
      "فصلت", //481
      "فصلت", //482
      "الشورى", //483
      "الشورى", //484
      "الشورى", //485
      "الشورى", //486
      "الشورى", //487
      "الشورى", //488
      "الزخرف", //489
      "الزخرف", //490
      "الزخرف", //491
      "الزخرف", //492
      "الزخرف", //493
      "الزخرف", //494
      "الزخرف", //495
      "الدخان", //496
      "الدخان", //497
      "الدخان", //498
      "الجاثية", //499
      "الجاثية", //500
      "الجاثية", //501
      "الاحقاف", //502
      "الاحقاف", //503
      "الاحقاف", //504
      "الاحقاف", //505
      "الاحقاف", //506
      "محمد", //507
      "محمد", //508
      "محمد", //509
      "محمد", //510
      "الفتح", //511
      "الفتح", //512
      "الفتح", //513
      "الفتح", //514
      "الحجرات", //515
      "الحجرات", //516
      "الحجرات", //517
      "ق", //518
      "ق", //519
      "الذاريات", //520
      "الذاريات", //521
      "الذاريات", //522
      "الطور", //523
      "الطور", //524
      "الطور", //525
      "النجم", //526
      "النجم", //527
      "القمر", //528
      "القمر", //529
      "القمر", //530
      "الرحمن", //531
      "الرحمن", //532
      "الرحمن", //533
      "الواقعة", //534
      "الواقعة", //535
      "الواقعة", //536
      "الحديد", //537
      "الحديد", //538
      "الحديد", //539
      "الحديد", //540
      "الحديد", //541
      "المجادلة", //542
      "المجادلة", //543
      "المجادلة", //544
      "الحشر", //545
      "الحشر", //546
      "الحشر", //547
      "الحشر", //548
      "الممتحنة", //549
      "الممتحنة", //550
      "الصف", //551
      "الصف", //552
      "الجمعة", //553
      "المنافقون", //554
      "المنافقون", //555
      "التغابن", //556
      "التغابن", //557
      "الطلاق", //558
      "الطلاق", //559
      "التحريم", //560
      "التحريم", //561
      "الملك", //562
      "الملك", //563
      "القلم", //564
      "القلم", //565
      "الحاقة", //566
      "الحاقة", //567
      "المعارج", //568
      "المعارج", //569
      "نوح", //570
      "نوح", //571
      "الجن", //572
      "الجن", //573
      "المزمل", //574
      "المدثر", //575
      "المدثر", //576
      "القيامة", //577
      "الإنسان", //578
      "الإنسان", //579
      "المرسلات", //580
      "المرسلات", //581
      "النبأ", //582
      "النازعات", //583
      "النازعات", //584
      "عبس", //585
      "التكوير", //586
      "الانفطار", //587
      "المطففبن", //588
      "الانشقاق", //589
      "البروج", //590
      "الطارق", //591
      "الغاشية", //592
      "الفجر", //593
      "البلد", //594
      "الشمس", //595
      "الضحى", //596
      "التين", //597
      "القدر", //598
      "الزلزلة", //599
      "القارعة", //600
      "العصر", //601
      "قريش", //602
      "الكافرون", //603
      "الإخلاص", //604
    ];
    final controller1= AutoScrollController(
      //add this for advanced viewport boundary. e.g. SafeArea
        viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),

        //choose vertical/horizontal
        axis: Axis.vertical,

        //this given value will bring the scroll offset to the nearest position in fixed row height case.
        //for variable row height case, you can still set the average height, it will try to get to the relatively closer offset
        //and then start searching.
        suggestedRowHeight: 200
    );
    print(controller1.scrollToIndex(1));


    return Scaffold(
        appBar: _showAppBar ? AppBar(
          backgroundColor: const Color(0XFF4C230D),
          centerTitle: true,
          elevation: 0,
          leading: SizedBox(
            height: 32.h,
            width: 32.w,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: AutoSizeText(
                      "$pageIndex",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      maxFontSize: 14,
                      minFontSize: 1,
                      maxLines: 1,
                    ),
                  ),
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/numberPageImage.svg",
                    height: 32.h,
                    width: 32.w,
                    fit: BoxFit.fitWidth,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          title: AutoSizeText(
            SurahPages[pageIndex == 0 ? 0 : pageIndex - 1],
            style: GoogleFonts.tajawal(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white),
            maxFontSize: 16,
            minFontSize: 1,
          ),
          actions: [
            IconButton(
              onPressed: () {
                widget.drawerController.toggle();
              },
              icon: const Icon(
                Icons.menu_open_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ) : null,
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: 604,
                      controller: _pageController,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (value) {
                        setState(() {
                          pageIndex = value + 1;
                          SharedPrefController()
                              .setValue(PrefKeys.pageViewSaves.name, pageIndex);
                          _pageControllerListView=PageController(initialPage: pageIndex);
                        });
                      },
                      itemBuilder: (context, index) {
                        return Center(
                          child: GestureDetector(
                            onTap: () {
                              // _showBottomSheet(context, pageIndex + 1);
                              setState(() {
                                _showAppBar=!_showAppBar;
                                print(_pageController);

                              });
                            },
                            child: SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/quran/${index + 1}.png",
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                  GetBuilder<HomeController>(
                                    builder: (controller) => pageIndex ==
                                            SharedPrefController().getValue(
                                                PrefKeys.pageSaveFromUser.name)
                                        ? Opacity(
                                            opacity: 0.5,
                                            child: Image.asset(
                                              "assets/bookmark.png",
                                              height: 60.h,
                                              width: 45.w,
                                              fit: BoxFit.fill,
                                            ),
                                          )
                                        : SizedBox(
                                            height: 60.h,
                                            width: 45.w,
                                          ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 604,
                      controller: _pageController,
                      physics: _showAppBar? NeverScrollableScrollPhysics():BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return AutoScrollTag(
                            key: ValueKey(index),
                            controller: controller1,
                            index: index,
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // print(_pageController.animateTo(2, duration: Duration(microseconds: 1000), curve: Curves.bounceIn));
                                    pageIndex=index+1;
                                    _showAppBar=!_showAppBar;
                                    SharedPrefController().setValue(
                                        PrefKeys.pageViewSaves.name, index + 1);
                                  });
                                  // _showBottomSheet(context, index + 1);

                                  // pageIndex = index;
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/quran/${index+1}.png",
                                      width: 800.w,
                                      fit: BoxFit.fill,
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      color: Color(0XFF4C230D),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        }));
  }

  void _showBottomSheet(BuildContext context, int numberPageIndex) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 305.h,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 6.h,
                        width: 49.w,
                        decoration: BoxDecoration(
                          color: const Color(0XFF4C230D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Center(
                        child: SvgPicture.asset(
                          "assets/logo.svg",
                          width: 104.w,
                          height: 96.h,
                          fit: BoxFit.contain,
                        ),
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
                              backgroundColor: const Color(0XFF4C230D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              minimumSize: Size(311.w, 56.h)),
                          onPressed: () {
                            SharedPrefController().setValue(
                                PrefKeys.pageSaveFromUser.name,
                                numberPageIndex - 1);
                            controller.updateSavePage(SharedPrefController()
                                .getValue(PrefKeys.pageSaveFromUser.name));
                            Navigator.pop(context);
                          },
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
}

// items.contain()
// items.startWidth()