import 'dart:convert';

import 'package:job_search_frutter/domain/model/vacancies-address.dart';
import 'package:job_search_frutter/domain/model/vacancies_experience.dart';
import 'package:job_search_frutter/domain/model/vacancies_salary.dart';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/entity.g.dart';

// part 'vacancies.g.dart';

@JsonSerializable()
class Vacancies {
  late String id;
  late int lookingNumber;
  late String title;
  late VacanciesAddress address;
  late String company;
  late VacanciesExperience experience;
  late String publishedDate;
  late bool isFavorite;
  late VacanciesSalary salary;
  late List<String> schedules;
  late int appliedNumber;
  late String description;
  late String responsibilities;
  late List<String> questions;

  Vacancies();

  factory Vacancies.fromJson(Map<String, dynamic> json) => $VacanciesFromJson(json);

  Map<String, dynamic> toJson() => $VacanciesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}