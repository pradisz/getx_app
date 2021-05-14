import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_app/services/settings_service.dart';

class SettingsPage extends StatelessWidget {
  final SettingsService _settings = Get.find();
  final GetStorage _storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _settings.changeLocale(Locale('en', 'US'));
                },
                child: Text('English'),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  _settings.changeLocale(Locale('id', 'ID'));
                },
                child: Text('Bahasa'),
              ),
              SizedBox(height: 24),
              Text(
                  '${_storage.read('languageCode')}_${_storage.read('countryCode')}'),
              SizedBox(height: 24),
              InkWell(
                onTap: () {
                  _storage.erase();
                },
                child: Text('Clear Storage'),
              ),
              SizedBox(height: 24),
              InkWell(
                onTap: () {
                  _settings.changeThemeMode(ThemeMode.light);
                },
                child: Text('Change theme light'),
              ),
              SizedBox(height: 24),
              InkWell(
                onTap: () {
                  _settings.changeThemeMode(ThemeMode.dark);
                },
                child: Text('Change theme dark'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
