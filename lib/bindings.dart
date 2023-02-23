import 'package:cars/controller/dropdown_controller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.create<DropDownController>(() => DropDownController());
  }
}
