import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/common/app_config.dart';
import 'package:getx_app/common/app_translation.dart';
import 'package:getx_app/pages/main/main_binding.dart';

import 'package:getx_app/routes/app_pages.dart';
import 'package:getx_app/services/settings_service.dart';
import 'package:getx_app/themes/app_theme.dart';

class GetxApp extends StatelessWidget {
  static AppConfig _config = Get.find();
  static SettingsService _settings = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _config.appName!,
      initialRoute: AppPages.INITIAL,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      initialBinding: MainBinding(),
      locale: _settings.locale,
      translations: AppTranslation(),
      themeMode: _settings.themeMode,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
