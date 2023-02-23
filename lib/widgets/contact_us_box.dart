import 'package:cars/screens/edit_car.dart';
import 'package:cars/widgets/custon_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsBox extends StatelessWidget {
  const ContactUsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      color: Colors.white,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          textDirection: TextDirection.rtl,
          children: [
            Image.asset('assets/images/help-icon.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                SizedBox(
                  width: 195.0,
                  child: Text(
                    'الدعم والمساعدة',
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
                SizedBox(
                  width: 230.0,
                  child: Text(
                    'إذا كان لديك أي استفسار يمكنك التواصل معنا.',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    softWrap: true,
                    style: TextStyle(
                      color: Color(0xFF7D7D7D),
                      fontFamily: 'Helvetica',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        CustomOutlinedButton(
            onPressed: () {
              Get.toNamed('/EditCar');
            },
            label: 'تواصل معنا'),
      ]),
    );
  }
}
