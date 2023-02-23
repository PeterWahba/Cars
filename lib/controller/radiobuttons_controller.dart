import 'package:cars/widgets/custom_radio_buttons.dart';
import 'package:get/get.dart';

class RadioButtonsController extends GetxController {
  void change(List<RadioModel> radios, int item) {
    radios.forEach((element) => element.isSelected = false);
    radios[item].isSelected = true;
    update();
  }
}
