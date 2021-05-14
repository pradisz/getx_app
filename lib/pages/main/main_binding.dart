import 'package:get/get.dart';
import 'package:getx_app/pages/home/home_controller.dart';
import 'package:getx_app/pages/home/widgets/user_list/user_list_controller.dart';
import 'package:getx_app/pages/main/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController(), permanent: true);
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => UserListController());
  }
}
