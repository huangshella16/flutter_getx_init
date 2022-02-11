import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../models/nav_model.dart';
import '../../home/views/home_view.dart';
import '../../me/views/me_view.dart';

class IndexController extends GetxController {
  final navPages = [
    NavModel(
      view: HomeView(),
      icon: CupertinoIcons.bubble_left_bubble_right_fill,
      lable: 'Home'.tr,
    ),
    NavModel(
      view: MeView(),
      icon: CupertinoIcons.person_fill,
      lable: 'Me'.tr,
    ),
  ];

  final navIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
