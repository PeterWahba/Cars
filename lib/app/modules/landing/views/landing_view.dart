import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/add_bank_account.dart';
import '../../../../widgets/calculate_fees.dart';
import '../../../../widgets/complete_account.dart';
import '../../../../widgets/contact_us_box.dart';
import '../../../../widgets/import_steps.dart';
import '../../../../widgets/newly_added_cars.dart';
import '../../../../widgets/user_button.dart';
import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  final TrackingScrollController scrollController = TrackingScrollController();

  LandingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xFF327DE3),
                        Color(0xFF1A4CD5),
                      ])),
                  height: 691.0,
                ),
                Image.asset('assets/images/Rectangle-1.png'),
                Transform.translate(
                  offset: const Offset(50.0, 20.0),
                  child: Image.asset('assets/images/Rectangle-2.png'),
                ),
                Transform.scale(
                  scale: 1.7,
                  child: Container(
                    margin: const EdgeInsets.only(top: 305.0),
                    height: 564.0,
                    width: 548.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFAFAFA),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 60, left: 20, right: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UserButton(),
                      Image.asset('assets/images/cars-logo.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 145.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 70.0, right: 70.0),
                        child: Text(
                          'استورد سيارتك من الخارج دلوقتي بخطوات بسيطة!',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Helvetica',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              height: 1.25),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 15, right: 50, left: 50, bottom: 15.0),
                        child: Text(
                          'قدم على طلب لو انت من المقيمين في الخارج، و استورد سيارتك من الخارج إلى مصر بخطوات بسيطة.',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Helvetica',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                              height: 1.38),
                        ),
                      ),
                      Image.asset(
                        'assets/images/landing-page-main-icon.png',
                        scale: 0.9,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 25, right: 20, bottom: 25),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'احسب رسومك هنا لتسجيل طلبك',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontFamily: 'Helvetica',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      CalculateFees(),
                      const SizedBox(height: 35.0),
                      const CompleteAccount(),
                      const SizedBox(height: 16.0),
                      const AddBankAccount(),
                      const SizedBox(height: 16.0),
                      const ImportSteps(),
                      const SizedBox(height: 16.0),
                      const ContactUsBox(),
                      const SizedBox(height: 16.0),
                      NewlyAddedCars(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








// CustomScrollView(
//   slivers: [
//     Directionality(
//       textDirection: TextDirection.rtl,
//       child: SliverAppBar(
//         backgroundColor: Color(0xFF327DE3),
//         floating: true,
//         title: Image.asset('assets/images/cars-logo.png'),
//         actions: [
//           Padding(
//               padding: EdgeInsets.only(left: 20.0),
//               child: Center(child: UserButton())),
//         ],
//       ),
//     ),
//     const SliverToBoxAdapter(
//       child: Padding(
//         padding: EdgeInsets.only(top: 30, right: 70, left: 70),
//         child: Text(
//           'استورد سيارتك من الخارج دلوقتي بخطوات بسيطة!',
//           textDirection: TextDirection.rtl,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               color: Color(0xFFFFFFFF),
//               fontFamily: 'Helvetica',
//               fontSize: 24.0,
//               fontWeight: FontWeight.w700,
//               height: 1.25),
//         ),
//       ),
//     ),
//     const SliverToBoxAdapter(
//       child: Padding(
//         padding:
//             EdgeInsets.only(top: 10, right: 50, left: 50, bottom: 15.0),
//         child: Text(
//           'قدم على طلب لو انت من المقيمين في الخارج، و استورد سيارتك من الخارج إلى مصر بخطوات بسيطة.',
//           textDirection: TextDirection.rtl,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               color: Color(0xFFFFFFFF),
//               fontFamily: 'Helvetica',
//               fontSize: 13.0,
//               fontWeight: FontWeight.w400,
//               height: 1.38),
//         ),
//       ),
//     ),
//     SliverToBoxAdapter(
//         child: Image.asset(
//       'assets/images/landing-page-main-icon.png',
//       height: 125,
//     )),
//     const SliverToBoxAdapter(
//       child: Padding(
//         padding: EdgeInsets.only(top: 30, right: 20, bottom: 25),
//         child: Text(
//           'احسب رسومك هنا لتسجيل طلبك',
//           textDirection: TextDirection.rtl,
//           textAlign: TextAlign.right,
//           style: TextStyle(
//             color: Color(0xFF212121),
//             fontFamily: 'Helvetica',
//             fontSize: 18.0,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//     ),
//     SliverToBoxAdapter(
//       child: Stack(
//         children: [
//           Center(
//             child: Container(
//               width: 350,
//               height: 85,
//               padding: const EdgeInsets.only(top: 10.0),
//               decoration: BoxDecoration(
//                 color: const Color(0xFFE5EDFD),
//                 borderRadius: BorderRadius.circular(11.0),
//               ),
//               child: const Text(
//                 'الزمن المتبقي لدفع رسوم الخدمة ٤ أشهر : ٠ أيام',
//                 textAlign: TextAlign.center,
//                 textDirection: TextDirection.rtl,
//                 style: TextStyle(
//                   color: Color(0xFF2A6DDE),
//                   fontFamily: 'Helvetica',
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ),
//           Center(
//             child: Container(
//               margin: const EdgeInsets.only(top: 55.0),
//               padding: const EdgeInsets.only(
//                 top: 20.0,
//               ),
//               width: 360,
//               height: 565,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFFFFFFF),
//                 borderRadius: BorderRadius.circular(17.0),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Color(0xFF261C4C9F),
//                     offset: Offset(0.0, 0.0),
//                     blurRadius: 19.0,
//                     spreadRadius: 2.0,
//                   ),
//                   BoxShadow(
//                     color: Color(0xFF261C4C9F),
//                     offset: Offset(0.0, 0.0),
//                     blurRadius: 19.0,
//                     spreadRadius: 2.0,
//                   ),
//                   BoxShadow(
//                     color: Color(0xFF261C4C9F),
//                     offset: Offset(0.0, 0.0),
//                     blurRadius: 19.0,
//                     spreadRadius: 2.0,
//                   ),
//                   BoxShadow(
//                     color: Color(0xFF261C4C9F),
//                     offset: Offset(0.0, 0.0),
//                     blurRadius: 19.0,
//                     spreadRadius: 2.0,
//                   ), //BoxShadow
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   DoubleDropdownContainer(
//                     dropdownItemsList1: carMakeDropdownMenuItems,
//                     dropdownItemsList2: carModelDropdownMenuItems,
//                     label1: 'اختر الماركة',
//                     label2: 'اختر الموديل',
//                     hint1: 'كل الماركات',
//                     hint2: 'كل الموديلات',
//                   ),
//                   const SizedBox(height: 16.0),
//                   DoubleDropdownContainer(
//                     dropdownItemsList1: carMakeDropdownMenuItems,
//                     dropdownItemsList2: carModelDropdownMenuItems,
//                     label1: 'نوع المحرك',
//                     label2: 'سعة المحرك',
//                     hint1: 'اختر نوع المحرك',
//                     hint2: 'ادخل سعة المحرك',
//                   ),
//                   const SizedBox(height: 16.0),
//                   DoubleDropdownContainer(
//                     dropdownItemsList1: carMakeDropdownMenuItems,
//                     dropdownItemsList2: carModelDropdownMenuItems,
//                     label1: 'بلد الاقامة',
//                     label2: 'بلد المنشأ',
//                     hint1: 'اختر البلد',
//                     hint2: 'اختر البلد',
//                   ),
//                   const SizedBox(height: 24.0),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 36.0),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text('نوع السيارة',
//                           style: TextStyle(
//                               fontFamily: 'Helvetica',
//                               fontSize: 15.0,
//                               fontWeight: FontWeight.w400)),
//                     ),
//                   ),
//                   const SizedBox(height: 10.0),
//                   const CustomRadio(),
//                   const SizedBox(height: 26.0),
//                   CustomElevatedButton(
//                       onPressed: () {}, child: Text(' احسب الرسوم'))
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
