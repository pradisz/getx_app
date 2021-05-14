import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:getx_app/models/user.dart';

import 'package:getx_app/models/user_response.dart';
import 'package:getx_app/services/api_service.dart';

class UserListController extends GetxController with StateMixin<List<User>> {
  ApiService _client = Get.find();

  @override
  void onInit() {
    super.onInit();

    fetchUsers();
  }

  void fetchUsers() async {
    try {
      UserResponse result = await _client.getUsers();
      change(result.data, status: RxStatus.success());
    } on Response catch (e) {
      change(null, status: RxStatus.error(e.statusMessage));
      Get.snackbar('${e.statusCode}', e.statusMessage!);
    }
  }
}
