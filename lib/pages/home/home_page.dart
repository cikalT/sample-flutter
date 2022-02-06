import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sample/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('App Bar'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('test'),
                  TextField(
                    controller: controller.textFieldController,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.tapToDetailPage();
                    },
                    style: ButtonStyle(),
                    child: Text('ngehe'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
