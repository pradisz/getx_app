import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/main/main_controller.dart';
import 'package:getx_app/routes/app_pages.dart';

class MainPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          // if (Get.nestedKey(1)!.currentState!.canPop()) {
          //   Get.nestedKey(1)?.currentState?.pop();
          //   return false;
          // }
          return true;
        },
        child: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.home,
          onGenerateRoute: controller.onGenerateRoute,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeMenu,
        ),
      ),
    );
  }
}
