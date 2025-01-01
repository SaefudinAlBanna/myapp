import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  HomepageView({super.key});
  final pageC = Get.find<HomepageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => controller.myWidgets.elementAt(controller.indexWidget.value),
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.fixedCircle,
          backgroundColor: Colors.red,
          items: [
            TabItem(icon: Icons.newspaper_outlined, title: 'News'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: pageC.indexWidget.value,
          onTap: (value) => controller.changeIndexBottomNavigation(value),
        ));
  }
}
