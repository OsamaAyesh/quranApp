import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran1/pref/shared_pref_controller.dart';
import 'package:quran1/screens/home_screen.dart';
import '../../screens/my_home_page.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 4), () {
      // SharedPrefController().save(pageSaves: 1,pageViewSaves: 1,screenNumber: 1);
      SharedPrefController().setValue(PrefKeys.pageSaveFromUser.name, 1);
      Get.offAll(() => MyHomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/logo.svg",
              height: 189.h,
              width: 188.w,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
        ],
      ),
    );
  }
}
