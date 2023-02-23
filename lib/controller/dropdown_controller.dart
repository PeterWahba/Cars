import 'package:cars/data/dropdown_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownController extends GetxController {
  RxString initValue1 = '1'.obs;
  RxString initValue2 = '1'.obs;

  var dropDownData;
  int length = 0;

  RxList<DropdownMenuItem<RxString>> carMakeDropdownMenuItems = [
    DropdownMenuItem<RxString>(
      value: '1'.obs,
      child: Row(
        children: const [
          Text('G-CLASS SEDAN'),
        ],
      ),
    ),
    DropdownMenuItem<RxString>(
      value: '2'.obs,
      child: Row(
        children: const [
          Text('G-CLASS Hatch'),
        ],
      ),
    )
  ].obs;
  List<DropdownMenuItem<RxString>> carModelDropdownMenuItems = [
    DropdownMenuItem(
      value: '1'.obs,
      child: Row(
        children: const [
          Text('G-CLASS SEDAN'),
        ],
      ),
    ),
    DropdownMenuItem<RxString>(
      value: '2'.obs,
      child: Row(
        children: const [
          Text('G-CLASS Hatch'),
        ],
      ),
    )
  ].obs;

  List<DropdownMenuItem<RxString>> engineCapacity = [
    DropdownMenuItem<RxString>(
      value: '1'.obs,
      child: Row(
        children: const [
          Text('1600 سي سي'),
        ],
      ),
    ),
    DropdownMenuItem<RxString>(
      value: '2'.obs,
      child: Row(
        children: const [
          Text('1400 سي سي'),
        ],
      ),
    )
  ].obs;

  List<DropdownMenuItem<RxString>> engineType = [
    DropdownMenuItem<RxString>(
      value: '1'.obs,
      child: Row(
        children: [
          Image.asset(
            'assets/images/benzine.png',
            width: 28.27,
          ),
          const SizedBox(width: 4.0),
          const Text('محرك بنزين'),
        ],
      ),
    )
  ].obs;

  List<DropdownMenuItem<String>> residenceCountry = [
    DropdownMenuItem(
      value: '1',
      child: Row(
        children: [
          Image.asset('assets/images/germany.png'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: '2',
      child: Row(
        children: [
          Image.asset('assets/images/england.png'),
        ],
      ),
    )
  ];

  List<DropdownMenuItem<String>> makeCountry = [
    DropdownMenuItem(
      value: '1',
      child: Row(
        children: [
          Image.asset('assets/images/england.png'),
        ],
      ),
    )
  ];

  getData() async {
    dropDownData = await DropDownDataProvider().fetchData();
    print(dropDownData.runtimeType);
    if (dropDownData != null) {
      length = dropDownData.data.items.length;
      print(length);
      buildCarMakeList();
    } else {
      print(length);
    }
  }

  buildCarMakeList() {
    print('Building List');
    carMakeDropdownMenuItems =
        List<DropdownMenuItem<RxString>>.generate(length, (index) {
      print('${dropDownData.data.items[index].name}');
      return DropdownMenuItem(
        value: '${index + 1}'.obs,
        child: Row(
          children: [
            SizedBox(
              width: 20.0,
              child: Image.network(
                dropDownData.data.items[index].logo,
                errorBuilder: (context, error, stackTrace) => Container(),
              ),
            ),
            const SizedBox(width: 4.0),
            Text('${dropDownData.data.items[index].name}'),
          ],
        ),
      );
    }, growable: true)
            .obs;
  }

  void changeRightDropDown(newValue) {
    initValue1.value = newValue.value;
  }

  void changeLeftDropDown(newValue) {
    initValue2.value = newValue.value;
  }
}
