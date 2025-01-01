import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt indexwidget = 0.obs;

  void changeIndexBottomNav(int index){
    indexwidget.value = index;
    update();
  }
}
