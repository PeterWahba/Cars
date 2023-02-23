// To parse this JSON data, do
//
//     final dropDownModel = dropDownModelFromJson(jsonString);

import 'dart:convert';

DropDownModel dropDownModelFromJson(String str) =>
    DropDownModel.fromJson(json.decode(str));

String dropDownModelToJson(DropDownModel data) => json.encode(data.toJson());

class DropDownModel {
  DropDownModel({
    required this.isSuccess,
    required this.data,
    this.error,
  });

  bool isSuccess;
  DropDownData data;
  dynamic error;

  factory DropDownModel.fromJson(Map<String, dynamic> json) => DropDownModel(
        isSuccess: json["isSuccess"],
        data: DropDownData.fromJson(json["data"]),
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "data": data.toJson(),
        "error": error,
      };
}

class DropDownData {
  DropDownData({
    required this.pageIndex,
    required this.pageSize,
    required this.totalPages,
    required this.totalItems,
    required this.items,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  int pageIndex;
  int pageSize;
  int totalPages;
  int totalItems;
  List<Item> items;
  bool hasPreviousPage;
  bool hasNextPage;

  factory DropDownData.fromJson(Map<String, dynamic> json) => DropDownData(
        pageIndex: json["pageIndex"],
        pageSize: json["pageSize"],
        totalPages: json["totalPages"],
        totalItems: json["totalItems"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        hasPreviousPage: json["hasPreviousPage"],
        hasNextPage: json["hasNextPage"],
      );

  Map<String, dynamic> toJson() => {
        "pageIndex": pageIndex,
        "pageSize": pageSize,
        "totalPages": totalPages,
        "totalItems": totalItems,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "hasPreviousPage": hasPreviousPage,
        "hasNextPage": hasNextPage,
      };
}

class Item {
  Item({
    required this.id,
    required this.name,
    required this.logo,
    required this.carModels,
  });

  int id;
  String name;
  String logo;
  List<CarModel> carModels;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
        carModels: List<CarModel>.from(
            json["carModels"].map((x) => CarModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
        "carModels": List<dynamic>.from(carModels.map((x) => x.toJson())),
      };
}

class CarModel {
  CarModel({
    required this.id,
    required this.name,
    required this.engineTypes,
  });

  int id;
  String name;
  List<EngineType> engineTypes;

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        id: json["id"],
        name: json["name"],
        engineTypes: List<EngineType>.from(
            json["engineTypes"].map((x) => EngineType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "engineTypes": List<dynamic>.from(engineTypes.map((x) => x.toJson())),
      };
}

class EngineType {
  EngineType({
    required this.id,
    required this.name,
    required this.engineCapacityRanges,
  });

  int id;
  Name name;
  List<EngineCapacityRange> engineCapacityRanges;

  factory EngineType.fromJson(Map<String, dynamic> json) => EngineType(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        engineCapacityRanges: List<EngineCapacityRange>.from(
            json["engineCapacityRanges"]
                .map((x) => EngineCapacityRange.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "engineCapacityRanges":
            List<dynamic>.from(engineCapacityRanges.map((x) => x.toJson())),
      };
}

class EngineCapacityRange {
  EngineCapacityRange({
    required this.id,
    required this.name,
    required this.manufactureYearsForNew,
    required this.manufactureYearsForUsed,
  });

  int id;
  String name;
  List<ManufactureYearsFor> manufactureYearsForNew;
  List<ManufactureYearsFor> manufactureYearsForUsed;

  factory EngineCapacityRange.fromJson(Map<String, dynamic> json) =>
      EngineCapacityRange(
        id: json["id"],
        name: json["name"],
        manufactureYearsForNew: List<ManufactureYearsFor>.from(
            json["manufactureYearsForNew"]
                .map((x) => ManufactureYearsFor.fromJson(x))),
        manufactureYearsForUsed: List<ManufactureYearsFor>.from(
            json["manufactureYearsForUsed"]
                .map((x) => ManufactureYearsFor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "manufactureYearsForNew":
            List<dynamic>.from(manufactureYearsForNew.map((x) => x.toJson())),
        "manufactureYearsForUsed":
            List<dynamic>.from(manufactureYearsForUsed.map((x) => x.toJson())),
      };
}

class ManufactureYearsFor {
  ManufactureYearsFor({
    required this.year,
    required this.feeTypes,
  });

  int year;
  List<int> feeTypes;

  factory ManufactureYearsFor.fromJson(Map<String, dynamic> json) =>
      ManufactureYearsFor(
        year: json["year"],
        feeTypes: List<int>.from(json["feeTypes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "feeTypes": List<dynamic>.from(feeTypes.map((x) => x)),
      };
}

enum Name { EMPTY, NAME, PURPLE }

final nameValues = EnumValues({
  "محرك بنزين": Name.EMPTY,
  "محرك بنزين وكهربائي": Name.NAME,
  "محرك كهربائي": Name.PURPLE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
