import 'package:cars/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
