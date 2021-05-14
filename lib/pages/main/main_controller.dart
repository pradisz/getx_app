import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/home/home_page.dart';
import 'package:getx_app/pages/settings/settings_page.dart';
import 'package:getx_app/routes/app_pages.dart';

class MainController extends GetxController {
  static MainController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>[AppRoutes.home, AppRoutes.settings];

  void changeMenu(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return GetPageRoute(
          settings: settings,
          page: () => HomePage(),
        );
      case AppRoutes.settings:
        return GetPageRoute(
          settings: settings,
          page: () => SettingsPage(),
        );
      default:
        return null;
    }
  }
}
