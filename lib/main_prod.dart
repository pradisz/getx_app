import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/common/app_config.dart';
import 'package:getx_app/common/app_constants.dart';
import 'package:getx_app/main.dart';
import 'package:getx_app/services/init_services.dart';

Future<void> main() async {
  Get.put(AppConfig(
    appName: AppConstants.APP_NAME_PROD,
    flavorName: 'prod',
    apiBaseUrl: AppConstants.BASE_URL_PROD,
    languageCode: 'id',
    countryCode: 'ID',
  ));

  await initServices();
  runApp(GetxApp());
}
