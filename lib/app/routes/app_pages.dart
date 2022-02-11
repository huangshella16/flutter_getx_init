import 'package:get/get.dart';

import 'package:bagisto/app/modules/home/bindings/home_binding.dart';
import 'package:bagisto/app/modules/home/views/home_view.dart';
import 'package:bagisto/app/modules/index/bindings/index_binding.dart';
import 'package:bagisto/app/modules/index/views/index_view.dart';
import 'package:bagisto/app/modules/me/bindings/me_binding.dart';
import 'package:bagisto/app/modules/me/views/me_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INDEX;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ME,
      page: () => MeView(),
      binding: MeBinding(),
    ),
    GetPage(
      name: _Paths.INDEX,
      page: () => IndexView(),
      binding: IndexBinding(),
    ),
  ];
}
