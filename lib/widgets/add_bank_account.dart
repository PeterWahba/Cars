import 'package:cars/widgets/custome_container_with_shadow.dart';
import 'package:cars/widgets/custon_outlined_button.dart';
import 'package:flutter/material.dart';

class AddBankAccount extends StatelessWidget {
  const AddBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithShadow(
      child: Column(
        children: [
          Image.asset('assets/images/add-bank-account.png'),
          const Text(
            'بإنتظار إضافة حسابك البنكي المصري',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Color(0xFF212121),
              fontFamily: 'Helvetica',
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              'يجب إضافة حساب بنكي مصري خاص بك في خلال سنة كاملة حتى تتمكن من استرداد قيمة سيارتك',
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                height: 1.38,
                fontFamily: 'Helvetica',
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          CustomOutlinedButton(
              onPressed: () {}, label: 'إضافة حسابك البنكي المصري'),
          const SizedBox(height: 28.0),
        ],
      ),
    );
  }
}
