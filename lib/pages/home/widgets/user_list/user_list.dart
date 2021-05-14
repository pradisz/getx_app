import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_list_controller.dart';

class UserList extends GetWidget<UserListController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => ListView.builder(
        itemCount: state!.length,
        itemBuilder: (context, index) {
          return Text(state[index].name!);
        },
      ),
      onLoading: Center(child: CircularProgressIndicator()),
      onError: (message) => Center(child: Text(message!)),
    );
  }
}
