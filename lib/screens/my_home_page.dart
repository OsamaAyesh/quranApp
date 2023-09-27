import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:quran1/pref/shared_pref_controller.dart';
import 'package:quran1/screens/aduio_quran/quran_audio_screen.dart';
import 'package:quran1/screens/azkar/azkar_screen.dart';
import 'package:quran1/screens/contents/contents_screen.dart';
import 'package:quran1/screens/home_screen.dart';
import 'package:quran1/screens/qiplah/qiplah_screen.dart';
import 'package:quran1/screens/time_salah/time_salah.dart';

import 'menu_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: prefer_typing_uninitialized_variables
  late final drawerController ;
  @override
  void initState() {
    // TODO: implement initState
    drawerController= ZoomDrawerController();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
    int currentIndex = 0;
  // List<Widget> widgetsScreen=[
  //   HomeScreen(),
  //   QiblahCompass(),
  //   AudioQuranScreen(),
  //   TimeSalah(),
  //   AzkarScreen(),
  // ];
  @override
  Widget build(BuildContext context) {

    // setState(() {
    //   SharedPrefController().getValue(PrefKeys.screeNumber.name);
    // });
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerController,
        menuScreen: MenuScreen(setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },),
        mainScreen: currentScreen(),
        borderRadius: 24,
          showShadow: true,
        shadowLayer1Color: const Color(0XFF4C230D),
        shadowLayer2Color: const Color(0XFF9F8876),
        drawerShadowsBackgroundColor: const Color(0XFFF2EFE0),
        menuBackgroundColor: const Color(0XFFF2EFE0),
        moveMenuScreen: true,
        slideWidth: MediaQuery.of(context).size.width*0.65,
        style: DrawerStyle.defaultStyle,
        isRtl: true,
        angle: 0,
        duration: const Duration(milliseconds: 500),
        menuScreenOverlayColor: const Color(0XFF9F8876),
      ),
    );
  }
  Widget currentScreen() {
    switch(currentIndex) {
      case 0:
        return HomeScreen(drawerController: drawerController,);
      case 1:
        return QiblahCompass(drawerController:drawerController ,);
      case 2:
        return ContentScreen(drawerController: drawerController,);
      case 3:
        return const AudioQuranScreen();
      case 4:
        return const TimeSalah();
      default:
        return AzkarScreen(drawerController: drawerController,);
    }
  }

}
