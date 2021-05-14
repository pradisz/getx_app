import 'package:flutter/foundation.dart';

class AppConfig {
  final String? appName;
  final String? flavorName;
  final String? apiBaseUrl;
  final String? languageCode;
  final String? countryCode;

  AppConfig({
    @required this.appName,
    @required this.flavorName,
    @required this.apiBaseUrl,
    this.languageCode,
    this.countryCode,
  });
}
