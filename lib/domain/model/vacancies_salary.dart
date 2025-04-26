
import 'dart:convert';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/entity.g.dart';

// part 'vacancies_salary.g.dart';

@JsonSerializable()
class VacanciesSalary {
  late String full;

  VacanciesSalary();

  factory VacanciesSalary.fromJson(Map<String, dynamic> json) => $VacanciesSalaryFromJson(json);

  Map<String, dynamic> toJson() => $VacanciesSalaryToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}