import 'package:flutter/material.dart';

class DoubleDropdownContainer extends StatelessWidget {
  final List<DropdownMenuItem<String>> dropdownItemsList1;
  final List<DropdownMenuItem<String>> dropdownItemsList2;
  final String label1;
  final String label2;
  final String hint1;
  final String hint2;
  final String value1;
  final String value2;
  DoubleDropdownContainer({
    Key? key,
    required this.dropdownItemsList1,
    required this.dropdownItemsList2,
    required this.label1,
    required this.label2,
    this.hint1 = '',
    this.hint2 = '',
    this.value1 = '',
    this.value2 = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          SizedBox(
            width: 325.0,
            child: Row(
              children: [
                SizedBox(
                  width: 325.0 / 2,
                  child: Text(
                    label1,
                    style: const TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  label2,
                  style: const TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4.0),
            width: 325.0,
            height: 45.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                border: Border.all(color: const Color(0xFFE0E0E0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 140,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      onChanged: (_) {},
                      items: dropdownItemsList1,
                      value: value1 == '' ? null : value1,
                      hint: Text(
                        hint1,
                        style: const TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF7D7D7D),
                        ),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  width: 1.0,
                  color: const Color(0xFFE0E0E0),
                ),
                SizedBox(
                  width: 140,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: dropdownItemsList2,
                      onChanged: (_) {},
                      value: value2 == '' ? null : value2,
                      hint: Text(
                        hint2,
                        style: const TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF7D7D7D),
                        ),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
