import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:getx_app/common/app_config.dart';
import 'package:getx_app/pages/home/widgets/widgets.dart';
import 'package:getx_app/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  final AppConfig _config = Get.find();

  @override
  Widget build(BuildContext context) {
    String _today = DateFormat('dd MMM yyyy', Get.locale!.languageCode)
        .format(DateTime.now());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('halo'.tr),
              SizedBox(height: 8),
              Text(
                '${_config.appName}',
              ),
              SizedBox(height: 8),
              Text(
                '${_config.apiBaseUrl}',
              ),
              SizedBox(height: 8),
              Text(
                _today,
              ),
              SizedBox(height: 8),
              TextButton(onPressed: () {
                Get.toNamed(AppRoutes.products);
              }, child: Text('Go To Products')),
              SizedBox(height: 24),
              Expanded(child: Center(child: UserList())),
            ],
          ),
        ),
      ),
    );
  }
}
