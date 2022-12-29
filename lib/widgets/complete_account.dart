import 'package:cars/widgets/bullet_item.dart';
import 'package:cars/widgets/custome_container_with_shadow.dart';
import 'package:cars/widgets/custon_outlined_button.dart';
import 'package:cars/widgets/step_bars.dart';
import 'package:flutter/material.dart';

class CompleteAccount extends StatelessWidget {
  const CompleteAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithShadow(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'برجاء استكمال حسابك',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Color(0xFF212121),
                fontFamily: 'Helvetica',
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25.0),
            const StepBars(),
            const SizedBox(height: 16.0),
            const Text(
              'برجاء رفع المستندات المطلوبة لاستكمال حسابك',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const BulletItem('مستند إثبات الإقامة'),
            const BulletItem('سجل حساب البنك من دولة الإقامة'),
            CustomOutlinedButton(onPressed: () {}, label: 'استكمال الحساب'),
            const SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}
