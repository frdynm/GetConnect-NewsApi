import 'package:get/get.dart';

import 'package:berita/app/modules/detail_berita/bindings/detail_berita_binding.dart';
import 'package:berita/app/modules/detail_berita/views/detail_berita_view.dart';
import 'package:berita/app/modules/home/bindings/home_binding.dart';
import 'package:berita/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BERITA,
      page: () => DetailBeritaView(),
      binding: DetailBeritaBinding(),
    ),
  ];
}
