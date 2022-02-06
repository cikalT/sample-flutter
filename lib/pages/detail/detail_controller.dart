import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample/models/test_mode.dart';

class DetailController extends GetxController {
  TestModel? testModel;
  String? greeting;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() async {
    super.onClose();
  }

  @override
  void onReady() async {
    if (Get.arguments != null) {
      testModel = Get.arguments as TestModel?;
      greeting = testModel?.greeting ?? '';
    }
    update();
    super.onReady();
  }
}
