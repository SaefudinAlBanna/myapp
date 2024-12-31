import 'package:get/get.dart';
import 'package:myapp/app/modules/home/widgets/home_widget.dart';
import 'package:myapp/app/modules/home/widgets/profile_widget.dart';
import '../routes/app_pages.dart';

class PageIndexController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changePage(int i) async {
    print('click index=$i');

    switch (i) {
      case 1:
      Get.to(HomeWidget());
      break;
      case 2:
      Get.to(ProfileWidget());
      break;
      default:
      Get.offAllNamed(Routes.HOMEPAGE);
    }
    }
  }
