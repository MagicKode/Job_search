import 'dart:convert';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/entity.g.dart';

// part 'vacancies_address.g.dart';

@JsonSerializable()
class VacanciesAddress {
  late String town;
  late String street;
  late String house;

  VacanciesAddress();

  factory VacanciesAddress.fromJson(Map<String, dynamic> json) => $VacanciesAddressFromJson(json);

  Map<String, dynamic> toJson() => $VacanciesAddressToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}