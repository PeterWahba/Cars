import 'package:flutter/material.dart';

class DoubleDropdownContainer extends StatelessWidget {
  List<DropdownMenuItem<String>> dropdownItemsList1;
  List<DropdownMenuItem<String>> dropdownItemsList2;
  String label1;
  String label2;
  DoubleDropdownContainer({
    Key? key,
    required this.dropdownItemsList1,
    required this.dropdownItemsList2,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
                  child: Text(label1,
                      style: const TextStyle(
                          fontFamily: 'Dubai',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400)),
                ),
                Text(label2,
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Container(
            width: 325.0,
            height: 45.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48.0),
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
                      value: '1',
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
                      value: '1',
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
