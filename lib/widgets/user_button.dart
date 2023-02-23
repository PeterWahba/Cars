import 'package:cars/screens/edit_car.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: PopupMenuButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              size: 24.0,
              Icons.keyboard_arrow_down,
              color: Color(0xFF2A6DDE),
            ),
            const Text('حسابي',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2A6DDE),
                )),
            Image.asset(
              'assets/images/user-icon.png',
              width: 24.0,
              height: 24.0,
            ),
          ],
        ),
        itemBuilder: (context) {
          return const [
            PopupMenuItem(child: Text('Hi')),
            PopupMenuItem(child: Text('Hi')),
            PopupMenuItem(child: Text('Hi')),
          ];
        },
      ),
    );
  }
}
