import 'package:cars/widgets/custom_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:cars/widgets/custom_radio_buttons.dart';
import 'package:cars/widgets/double_dropdown_container.dart';
import 'package:cars/widgets/terms_conditions.dart';
import '../data/dropdown_data.dart';

class EditCar extends StatelessWidget {
  const EditCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 37.64),
          const Padding(
            padding: EdgeInsets.only(left: 21.64),
            child: Icon(Icons.close, color: Colors.red),
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
              DoubleDropdownContainer(
                dropdownItemsList1: carMakeDropdownMenuItems,
                dropdownItemsList2: carModelDropdownMenuItems,
                label1: 'اختر الماركة',
                label2: 'اختر الموديل',
                value1: '1',
                value2: '1',
              ),
              const SizedBox(height: 16),
              DoubleDropdownContainer(
                dropdownItemsList1: engineCapacity,
                dropdownItemsList2: engineType,
                label1: 'سعة المحرك',
                label2: 'نوع المحرك',
                value1: '1',
                value2: '1',
              ),
              const SizedBox(height: 16),
              DoubleDropdownContainer(
                dropdownItemsList1: residenceCountry,
                dropdownItemsList2: makeCountry,
                label1: 'بلد الإقامة',
                label2: 'بلد المنشأ',
                value1: '1',
                value2: '1',
              ),
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
              const CustomRadio(),
              const SizedBox(height: 26.0),
              TermsAndConditions(),
              const SizedBox(height: 26.0),
              CustomGradientButton(onPressed: () {}, label: 'التالي'),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}
