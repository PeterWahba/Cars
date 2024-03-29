import 'package:cars/controller/radiobuttons_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRadio extends StatelessWidget {
  CustomRadio({Key? key}) : super(key: key);

  List<RadioModel> radioButtons = [
    RadioModel(false, 'سيارة مستعملة'),
    RadioModel(true, 'سيارة جديدة'),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RadioButtonsController>(
      init: RadioButtonsController(),
      global: false,
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              controller.change(radioButtons, 0);
            },
            child: RadioItem(radioButtons[0]),
          ),
          const SizedBox(width: 11.87),
          InkWell(
            onTap: () {
              controller.change(radioButtons, 1);
            },
            child: RadioItem(radioButtons[1]),
          )
        ],
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.0,
      height: 35.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48.0),
          border: Border.all(
              color: _item.isSelected
                  ? const Color(0xFF327DE3)
                  : const Color(0xFFE0E0E0))),
      child: Center(
          child: Text(
        _item.text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 13.0,
            fontWeight: _item.isSelected ? FontWeight.w700 : FontWeight.w400,
            color: _item.isSelected
                ? const Color(0xFF327DE3)
                : const Color(0xFF000000)),
      )),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String text;

  RadioModel(this.isSelected, this.text);
}
