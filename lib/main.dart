import 'package:bagisto/generated/locales.g.dart';
import 'package:bagisto/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  final appTheme = AppTheme();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.light,
      darkTheme: appTheme.dark,
      themeMode: ThemeMode.light,
      translationsKeys: AppTranslation.translations,
      locale: Locale('zh', 'CN'),
      fallbackLocale: Locale('en'),
      title: "AppName".tr,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
