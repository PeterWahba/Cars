import 'package:flutter/material.dart';

class ImportSteps extends StatelessWidget {
  const ImportSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 16.0, right: 25.0),
            width: 249.0,
            child: const Text(
              'خطوات استيراد سيارة من الخارج في ٤ خطوات',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Color(0xFF212121),
                  fontFamily: 'Helvetica',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  height: 1.5),
            ),
          ),
          const SizedBox(height: 40.0),
          Step(
            image: Image.asset('assets/images/import-step-1.png'),
            head: 'سجل حساب جديد و ادخل بياناتك الشخصية',
            text:
                'قدم على طلب لو أنت من المقيمين في الخارج، و استورد سيارتك من الخارج إلى مصر بخطوات بسيطة.',
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 60.0),
          Step(
            image: Image.asset('assets/images/import-step-2.png'),
            head: 'اختار تفاصيل السيارة و إعرف الرسوم',
            text:
                'يمكنك بخطوات بسيطة حساب تكلفة سيارتك عن طريق إدخال بيانات سيارتك ويمكنك تطبيق إتفاقية بلد المنشأ إن وجدت!',
            textDirection: TextDirection.ltr,
          ),
          const SizedBox(height: 60.0),
          Step(
            image: Image.asset('assets/images/import-step-3.png'),
            head: 'حول الرسوم إلي الحساب البنكي الخاص بوزارة المالية',
            text:
                'يمكنك تحويل رسوم طلبك عن طريق حسابك البنكي الخاص بك أو لأحد أقارب الدرجة الأولى في مدة لا تتعدى الأربعة أشهر بحد أقصى.',
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 60.0),
          Step(
            image: Image.asset('assets/images/import-step-4.png'),
            head: 'اختر المستخلص و مبروك عليك!',
            text:
                'تقدر تتابع طلبك بكل سهولة وتعرف ايه الخطوات القادمة علشان تقدر تستلم سيارتك من الجمارك!',
            textDirection: TextDirection.ltr,
          ),
          const SizedBox(height: 60.0),
        ],
      ),
    );
  }
}

class Step extends StatelessWidget {
  final Image image;
  final String head;
  final String text;
  final TextDirection textDirection;

  const Step({
    Key? key,
    required this.image,
    required this.head,
    required this.text,
    required this.textDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      textDirection: textDirection,
      children: [
        image,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 195.0,
              child: Text(
                head,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: Color(0xFF2A6DDE),
                    fontFamily: 'Helvetica',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    height: 1.35),
              ),
            ),
            SizedBox(
              width: 237.0,
              child: Text(
                text,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                softWrap: true,
                style: const TextStyle(
                  color: Color(0xFF212121),
                  fontFamily: 'Helvetica',
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  height: 1.35,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
