import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_app/common/app_config.dart';
import 'package:getx_app/common/app_key.dart';

class SettingsService extends GetxService {
  AppConfig _config = Get.find();
  GetStorage _storage = GetStorage();

  Locale get locale {
    if (_storage.hasData(AppKey.languageCode) &&
        _storage.hasData(AppKey.languageCode)) {
      return Locale(
        _storage.read(AppKey.languageCode),
        _storage.read(AppKey.countryCode),
      );
    }
    return Locale(_config.languageCode!, _config.countryCode!);
  }

  ThemeMode get themeMode {
    if (_storage.hasData(AppKey.themeMode)) {
      switch (_storage.read(AppKey.themeMode)) {
        case 'light':
          return ThemeMode.light;
        case 'dark':
          return ThemeMode.dark;
      }
    }
    return ThemeMode.light;
  }

  void changeLocale(Locale locale) {
    Get.updateLocale(locale);

    _storage.write(AppKey.languageCode, locale.languageCode);
    _storage.write(AppKey.countryCode, locale.countryCode);
  }

  void changeThemeMode(ThemeMode themeMode) {
    Get.changeThemeMode(themeMode);

    switch (themeMode) {
      case ThemeMode.light:
        _storage.write(AppKey.themeMode, 'light');
        break;
      case ThemeMode.dark:
        _storage.write(AppKey.themeMode, 'dark');
        break;
      default:
    }
  }
}
