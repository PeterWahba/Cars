import 'package:cars/widgets/custom_gradient_button.dart';
import 'package:cars/widgets/custom_radio_buttons.dart';
import 'package:cars/widgets/custome_container_with_shadow.dart';
import 'package:cars/widgets/double_dropdown_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/modules/landing/controllers/landing_controller.dart';

class CalculateFees extends GetView<LandingController> {
  const CalculateFees({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 350,
            height: 85,
            padding: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: const Color(0xFFE5EDFD),
              borderRadius: BorderRadius.circular(11.0),
            ),
            child: const Text(
              'الزمن المتبقي لدفع رسوم الخدمة ٤ أشهر : ٠ أيام',
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Color(0xFF2A6DDE),
                fontFamily: 'Helvetica',
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0),
            child: CustomContainerWithShadow(
              child: Column(
                children: [
                  // FutureBuilder(
                  //     future: controller.buildCarMakeList(),
                  //     builder: (context, AsyncSnapshot snapshot) {
                  //       print(snapshot.data);
                  //       return snapshot.data;
                  //     }),
                  Obx(
                    () => DoubleDropdownContainer(
                      dropdownItemsList1: controller.carMakeDropdownMenuItems(),
                      dropdownItemsList2: controller.carModelDropdownMenuItems,
                      label1: controller.testText,
                      label2: 'اختر الموديل',
                      hint1: 'كل الماركات',
                      hint2: 'كل الموديلات',
                      value1: controller.initValue1(),
                      value2: controller.initValue2(),
                      onChange1: (newValue) {
                        controller.changeRightDropDown(newValue as RxString);
                      },
                      onChange2: (newValue) {
                        controller.changeLeftDropDown(newValue as RxString);
                      },
                    ),
                  ),

                  const SizedBox(height: 16.0),
                  DoubleDropdownContainer(
                    dropdownItemsList1: controller.carMakeDropdownMenuItems(),
                    dropdownItemsList2: controller.carModelDropdownMenuItems,
                    label1: 'نوع المحرك',
                    label2: 'سعة المحرك',
                    hint1: 'اختر نوع المحرك',
                    hint2: 'ادخل سعة المحرك',
                    value1: controller.initValue1(),
                    value2: controller.initValue2(),
                    onChange1: (val) {},
                    onChange2: (val) {},
                  ),
                  const SizedBox(height: 16.0),
                  DoubleDropdownContainer(
                    dropdownItemsList1: controller.carMakeDropdownMenuItems(),
                    dropdownItemsList2: controller.carModelDropdownMenuItems,
                    label1: 'بلد الاقامة',
                    label2: 'بلد المنشأ',
                    hint1: 'اختر البلد',
                    hint2: 'اختر البلد',
                    value1: controller.initValue1(),
                    value2: controller.initValue2(),
                    onChange1: (val) {},
                    onChange2: (val) {},
                  ),
                  const SizedBox(height: 24.0),
                  const Padding(
                    padding: EdgeInsets.only(right: 36.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('نوع السيارة',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  CustomRadio(),
                  const SizedBox(height: 26.0),
                  CustomGradientButton(onPressed: () {}, label: 'إحسب الرسوم'),
                  const SizedBox(height: 36.0),
                  const Text('لم تجد السيارة التي ترغب باستيرادها؟',
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(height: 10.0),
                  const Text('استعلم عن امكانية استيراد سيارتك',
                      style: TextStyle(
                          letterSpacing: -0.4,
                          color: Color(0xFF2769F1),
                          fontFamily: 'Helvetica',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 25.0),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
