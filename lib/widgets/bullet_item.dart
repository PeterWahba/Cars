import 'package:flutter/material.dart';

class BulletItem extends StatelessWidget {
  final String label;
  const BulletItem(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Container(
          width: 9.0,
          height: 9.0,
          decoration: const BoxDecoration(
            color: Color(0xFF2769F1),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 5.0),
        Text(
          label,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
    ;
  }
}
