import 'package:get/get.dart';
import 'package:getx_app/pages/home/widgets/user_list/user_list_controller.dart';
import 'package:getx_app/pages/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => UserListController());
  }
}