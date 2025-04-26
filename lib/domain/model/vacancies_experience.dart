import 'dart:convert';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/entity.g.dart';

// part 'vacancies_experience.g.dart';

@JsonSerializable()
class VacanciesExperience {
  late String previewText;
  late String text;

  VacanciesExperience();

  factory VacanciesExperience.fromJson(Map<String, dynamic> json) => $VacanciesExperienceFromJson(json);

  Map<String, dynamic> toJson() => $VacanciesExperienceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
