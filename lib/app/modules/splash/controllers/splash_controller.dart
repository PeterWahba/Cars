import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigate();
  }

  navigate() async {
    // Add duration to see the splash screen
    await Future.delayed(const Duration(seconds: 1));
    Get.offNamed(Routes.LANDING);
  }

  @override
  void onReady() {
    super.onReady();
    navigate();
  }
}
