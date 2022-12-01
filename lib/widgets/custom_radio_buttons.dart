import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({Key? key}) : super(key: key);

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  List<RadioModel> radioButtons = [
    RadioModel(false, 'سيارة جديدة'),
    RadioModel(false, 'سيارة مستعملة')
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              radioButtons.forEach((element) => element.isSelected = false);
              radioButtons[0].isSelected = true;
            });
          },
          child: RadioItem(radioButtons[0]),
        ),
        const SizedBox(width: 11.87),
        InkWell(
          onTap: () {
            setState(() {
              radioButtons.forEach((element) => element.isSelected = false);
              radioButtons[1].isSelected = true;
            });
          },
          child: RadioItem(radioButtons[1]),
        )
      ],
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
