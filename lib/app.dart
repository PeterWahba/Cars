import 'package:cars/bindings.dart';
import 'package:cars/controller/dropdown_controller.dart';
import 'package:cars/screens/edit_car.dart';
import 'package:cars/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends GetView<DropDownController> {
  App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LandingPage(),
      ),
      getPages: [
        GetPage(
          name: '/LandingPage',
          page: () => LandingPage(),
          binding: MyBindings(),
        ),
        GetPage(name: '/EditCar', page: () => EditCar()),
      ],
      onInit: () => controller.getData(),
      initialBinding: MyBindings(),
    );
  }
}
