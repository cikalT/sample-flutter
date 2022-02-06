import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample/models/test_mode.dart';
import 'package:sample/routes/index.dart';

class HomeController extends GetxController {
  TestModel? testModel;
  String? valueTextField;
  final textFieldController = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
    textFieldController.text = 'feijdei';
  }

  tapToDetailPage() {
    testModel = TestModel();
    testModel?.greeting = textFieldController.text;
    // valueTextField = textFieldController.text ?? '';
    Get.toNamed(AppRoutes.detailPage, arguments: testModel);
  }
}
