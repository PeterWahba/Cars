import 'package:cars/models/DropDownModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownDataProvider {
  final _connect = GetConnect();

  fetchData() async {
    final response = await _connect.get(
        'https://betamob2.abroad.cars.gov.eg/carimport/App/CarMakesWithFees');
    // final data = json.decode(response.body);
    print(response.runtimeType);
    return DropDownModel.fromJson(response.body);
  }
}
