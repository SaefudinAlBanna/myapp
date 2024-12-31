import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/widgets/home_widget.dart';
import 'package:myapp/app/modules/home/widgets/news_widgets.dart';
import 'package:myapp/app/modules/home/widgets/profile_widget.dart';

class HomepageController extends GetxController {
  RxInt indexWidget = 1.obs;

  void changeIndexBottomNavigation(int index){
    indexWidget.value = index;
  }
  List<Widget> myWidgets = [
    
    NewsWidgets(),
    HomeWidget(),
    ProfileWidget(),
  ];
}
