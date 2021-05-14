import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:getx_app/services/api_service.dart';
import 'package:getx_app/services/settings_service.dart';

Future<void> initServices() async {
  print('Starting services...');

  await GetStorage.init();
  await initializeDateFormatting();

  Get.put(SettingsService());
  Get.put(ApiService());

  print('All services started...');
}
