import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(
                controller.navPages[controller.navIndex.value].lable,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )),
          centerTitle: true,
        ),
        body: Obx(() => controller.navPages[controller.navIndex.value].view),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.navIndex.value,
            onTap: (value) => controller.navIndex.value = value,
            items: controller.navPages
                .map(
                  (e) => BottomNavigationBarItem(
                      icon: Icon(e.icon), label: e.lable),
                )
                .toList(),
          ),
        ));
  }
}
