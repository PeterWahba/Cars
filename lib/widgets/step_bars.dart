import 'package:flutter/material.dart';

class StepBars extends StatelessWidget {
  const StepBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 73.28,
          height: 13.0,
          decoration: BoxDecoration(
            color: Color(0xFFDAE5FD),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        Container(
          width: 73.28,
          height: 13.0,
          decoration: BoxDecoration(
            color: Color(0xFFDAE5FD),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        Container(
          width: 73.28,
          height: 13.0,
          decoration: BoxDecoration(
            color: Color(0xFFDAE5FD),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        Container(
          width: 73.28,
          height: 13.0,
          decoration: BoxDecoration(
            color: Color(0xFF2769F1),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ],
    );
  }
}
