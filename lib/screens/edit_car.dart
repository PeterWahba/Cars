import 'package:cars/widgets/custom_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:cars/widgets/custom_radio_buttons.dart';
import 'package:cars/widgets/terms_conditions.dart';
import 'package:get/get.dart';

class EditCar extends StatelessWidget {
  const EditCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 37.64),
            Padding(
              padding: EdgeInsets.only(left: 21.64),
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.red,
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const SizedBox(height: 11.64),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Stack(
                    children: [
                      Center(child: Image.asset('assets/images/Ellipse.png')),
                      Center(
                          child: Image.asset(
                              'assets/images/edit-car-main-icon.png')),
                    ],
                  ),
                ),
                const Text(
                  'تعديل الطلب وتغيير السيارة',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF327DE3),
                  ),
                ),
                const Text(
                  'السيارة المراد شحنها غير مطابقة للبيانات',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 45.0),
                // DoubleDropdownContainer(
                //   dropdownItemsList1: carModelDropdownMenuItems,
                //   dropdownItemsList2: carModelDropdownMenuItems,
                //   label1: 'اختر الماركة',
                //   label2: 'اختر الموديل',
                //   hint1: 'كل الماركات',
                //   hint2: 'كل الموديلات',
                // ),
                // const SizedBox(height: 16.0),
                // DoubleDropdownContainer(
                //   dropdownItemsList1: engineCapacity,
                //   dropdownItemsList2: engineType,
                //   label1: 'نوع المحرك',
                //   label2: 'سعة المحرك',
                //   hint1: 'اختر نوع المحرك',
                //   hint2: 'ادخل سعة المحرك',
                // ),
                // const SizedBox(height: 16.0),
                // DoubleDropdownContainer(
                //   dropdownItemsList1: residenceCountry,
                //   dropdownItemsList2: makeCountry,
                //   label1: 'بلد الاقامة',
                //   label2: 'بلد المنشأ',
                //   hint1: 'اختر البلد',
                //   hint2: 'اختر البلد',
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'يمكنك الاستيراد من أي دولة تابعة للاتحاد الأوروبي',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
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
                TermsAndConditions(),
                const SizedBox(height: 26.0),
                CustomGradientButton(onPressed: () {}, label: 'التالي'),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
