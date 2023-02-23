import 'package:get/get.dart';

import '../app/modules/landing/bindings/landing_binding.dart';
import '../app/modules/landing/views/landing_view.dart';
import '../app/modules/splash/bindings/splash_binding.dart';
import '../app/modules/splash/views/splash_view.dart';
import '../screens/edit_car.dart';
import '../screens/landing_page.dart';
import 'app_routes.dart';

// ignore_for_file: constant_identifier_names

class AppPages {
  static const INITIAL = Routes.SPLASH;
  static final routes = [
    // GetPage(name: Routes.EDIT_CAR, page: () => EditCar()),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => LandingView(),
      binding: LandingBinding(),
    ),
  ];
}
