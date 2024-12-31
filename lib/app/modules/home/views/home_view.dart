import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/widgets/home_widget.dart';
import 'package:myapp/app/modules/home/widgets/profile_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.indexwidget.value,
          children: [
            HomeWidget(),
            ProfileWidget(),
          ],
        )),
        bottomNavigationBar: ConvexAppBar(
          onTap: (index) => controller.indexwidget.value,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
        ),
      );
    });
  }
}
