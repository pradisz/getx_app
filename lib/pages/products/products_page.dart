import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/main/main_controller.dart';
import 'package:getx_app/routes/app_pages.dart';

class ProductsPage extends StatelessWidget {
  final mainController = MainController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('Products Page'),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Get.offAllNamed(AppRoutes.initial);
                mainController.changeMenu(1);
              },
              child: Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
