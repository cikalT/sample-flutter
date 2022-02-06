import 'package:get/get.dart';
import 'package:sample/pages/detail/detail_page.dart';
import 'package:sample/pages/home/home_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.homePage, page: () => const HomePage()),
    GetPage(name: AppRoutes.detailPage, page: () => const DetailPage()),
  ];
}
