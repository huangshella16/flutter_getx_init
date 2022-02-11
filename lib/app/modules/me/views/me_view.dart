import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/me_controller.dart';

class MeView extends GetView<MeController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'MeView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
