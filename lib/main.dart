import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:myapp/app/controllers/page_index_controller.dart';
import 'package:myapp/app/modules/homepage/controllers/homepage_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  final pageC = Get.put(HomepageController(), permanent: true);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.login,
      getPages: AppPages.routes,
    ),
  );
}
