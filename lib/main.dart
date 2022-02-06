import 'package:flutter/material.dart';
import 'package:sample/pages/home/home_page.dart';
import 'package:sample/routes/index.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        defaultTransition: Transition.fadeIn,
        home: const HomePage(),
        getPages: AppPages.pages,
      );
    }),
  );
}
