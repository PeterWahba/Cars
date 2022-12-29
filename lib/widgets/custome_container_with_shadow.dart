import 'package:flutter/material.dart';

class CustomContainerWithShadow extends StatelessWidget {
  final Widget child;
  const CustomContainerWithShadow({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      width: 360,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(17.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF261C4C9F),
            offset: Offset(0.0, 0.0),
            blurRadius: 19.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: child,
    );
  }
}
