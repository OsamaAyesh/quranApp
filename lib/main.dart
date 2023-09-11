import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran1/pref/shared_pref_controller.dart';
import 'controller/my_draer_controller.dart';
import 'core/launch_screen/launch_screen.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<MyDrawerController>(MyDrawerController());
  await SharedPrefController().initPreferences();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {


    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/launch_screen",
          getPages: [
            GetPage(name: "/launch_screen", page: ()=>const LaunchScreen()),
          ],
        );
      },
    );


  }
}
