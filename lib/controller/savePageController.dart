import 'package:get/get.dart';
import 'package:quran1/pref/shared_pref_controller.dart';

class HomeController extends GetxController{
  int savePage=SharedPrefController().getValue(PrefKeys.pageSaveFromUser.name);
  void updateSavePage (int newPage){
    SharedPrefController().setValue(PrefKeys.pageSaveFromUser.name,newPage);
    savePage=SharedPrefController().getValue(PrefKeys.pageSaveFromUser.name);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("init HomeController");
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("Ready HomeController");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("close HomeController");
    super.onClose();
  }

}