import 'package:get/get.dart';
import 'package:getx_app/pages/auth/auth_binding.dart';
import 'package:getx_app/pages/auth/auth_page.dart';
import 'package:getx_app/pages/home/home_binding.dart';
import 'package:getx_app/pages/home/home_page.dart';
import 'package:getx_app/pages/main/main_binding.dart';
import 'package:getx_app/pages/main/main_page.dart';
import 'package:getx_app/pages/products/products_page.dart';
import 'package:getx_app/pages/settings/settings_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.initial;

  static final routes = [
    GetPage(
      name: AppRoutes.auth,
      page: () => AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.initial,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.settings,
      page: () => SettingsPage(),
    ),
    GetPage(
      name: AppRoutes.products,
      page: () => ProductsPage(),
    ),
  ];
}
