import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> carMakeDropdownMenuItems = [
  DropdownMenuItem(
    value: '1',
    child: Row(
      children: [
        Image.asset(
          'assets/images/mercedes.png',
          width: 28.27,
        ),
        const SizedBox(width: 4.0),
        const Text('MERCEDES'),
      ],
    ),
  )
];

List<DropdownMenuItem<String>> carModelDropdownMenuItems = [
  DropdownMenuItem(
    value: '1',
    child: Row(
      children: const [
        Text('G-CLASS SEDAN'),
      ],
    ),
  )
];

List<DropdownMenuItem<String>> engineCapacity = [
  DropdownMenuItem(
    value: '1',
    child: Row(
      children: const [
        Text('1600 سي سي'),
      ],
    ),
  )
];

List<DropdownMenuItem<String>> engineType = [
  DropdownMenuItem(
    value: '1',
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
];

List<DropdownMenuItem<String>> residenceCountry = [
  DropdownMenuItem(
    value: '1',
    child: Row(
      children: [
        Image.asset('assets/images/germany.png'),
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
