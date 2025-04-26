import 'dart:convert';

import 'package:job_search_frutter/generated/json/base/json_field.dart';
import 'package:job_search_frutter/generated/json/entity.g.dart';
import 'package:job_search_frutter/domain/model/vacancies.dart';

import 'offers.dart';

export 'package:job_search_frutter/generated/json/entity.g.dart';

// part 'entity.g.dart';

@JsonSerializable()
class Job {
  late List<Offers> offers;
  late List<Vacancies> vacancies;

  Job();

  factory Job.fromJson(Map<String, dynamic> json) =>
      $EntityFromJson(json);

  Map<String, dynamic> toJson() => $EntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
