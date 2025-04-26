import 'package:job_search_frutter/generated/json/base/json_convert_content.dart';

import '../../domain/model/job.dart';
import '../../domain/model/offers.dart';
import '../../domain/model/offers_button.dart';
import '../../domain/model/vacancies-address.dart';
import '../../domain/model/vacancies.dart';
import '../../domain/model/vacancies_experience.dart';
import '../../domain/model/vacancies_salary.dart';

Job $EntityFromJson(Map<String, dynamic> json) {
  final Job entity = Job();
  final List<Offers>? offers = (json['offers'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<Offers>(e) as Offers).toList();
  if (offers != null) {
    entity.offers = offers;
  }
  final List<Vacancies>? vacancies = (json['vacancies'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<Vacancies>(e) as Vacancies)
      .toList();
  if (vacancies != null) {
    entity.vacancies = vacancies;
  }
  return entity;
}

Map<String, dynamic> $EntityToJson(Job entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['offers'] = entity.offers.map((v) => v.toJson()).toList();
  data['vacancies'] = entity.vacancies.map((v) => v.toJson()).toList();
  return data;
}

extension EnityEntityExtension on Job {
  Job copyWith({
    List<Offers>? offers,
    List<Vacancies>? vacancies,
  }) {
    return Job()
      ..offers = offers ?? this.offers
      ..vacancies = vacancies ?? this.vacancies;
  }
}

Offers $OffersFromJson(Map<String, dynamic> json) {
  final Offers offers = Offers();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    offers.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    offers.title = title;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    offers.link = link;
  }
  final OffersButton? button = jsonConvert.convert<OffersButton>(
      json['button']);
  if (button != null) {
    offers.button = button;
  }
  return offers;
}

Map<String, dynamic> $OffersToJson(Offers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['link'] = entity.link;
  data['button'] = entity.button.toJson();
  return data;
}

extension EnityOffersExtension on Offers {
  Offers copyWith({
    String? id,
    String? title,
    String? link,
    OffersButton? button,
  }) {
    return Offers()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..link = link ?? this.link
      ..button = button ?? this.button;
  }
}

OffersButton $OffersButtonFromJson(Map<String, dynamic> json) {
  final OffersButton offersButton = OffersButton();
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    offersButton.text = text;
  }
  return offersButton;
}

Map<String, dynamic> $OffersButtonToJson(OffersButton entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['text'] = entity.text;
  return data;
}

extension EnityOffersButtonExtension on OffersButton {
  OffersButton copyWith({
    String? text,
  }) {
    return OffersButton()
      ..text = text ?? this.text;
  }
}

Vacancies $VacanciesFromJson(Map<String, dynamic> json) {
  final Vacancies vacancies = Vacancies();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    vacancies.id = id;
  }
  final int? lookingNumber = jsonConvert.convert<int>(json['lookingNumber']);
  if (lookingNumber != null) {
    vacancies.lookingNumber = lookingNumber;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    vacancies.title = title;
  }
  final VacanciesAddress? address = jsonConvert.convert<
      VacanciesAddress>(json['address']);
  if (address != null) {
    vacancies.address = address;
  }
  final String? company = jsonConvert.convert<String>(json['company']);
  if (company != null) {
    vacancies.company = company;
  }
  final VacanciesExperience? experience = jsonConvert.convert<
      VacanciesExperience>(json['experience']);
  if (experience != null) {
    vacancies.experience = experience;
  }
  final String? publishedDate = jsonConvert.convert<String>(
      json['publishedDate']);
  if (publishedDate != null) {
    vacancies.publishedDate = publishedDate;
  }
  final bool? isFavorite = jsonConvert.convert<bool>(json['isFavorite']);
  if (isFavorite != null) {
    vacancies.isFavorite = isFavorite;
  }
  final VacanciesSalary? salary = jsonConvert.convert<
      VacanciesSalary>(json['salary']);
  if (salary != null) {
    vacancies.salary = salary;
  }
  final List<String>? schedules = (json['schedules'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (schedules != null) {
    vacancies.schedules = schedules;
  }
  final int? appliedNumber = jsonConvert.convert<int>(json['appliedNumber']);
  if (appliedNumber != null) {
    vacancies.appliedNumber = appliedNumber;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    vacancies.description = description;
  }
  final String? responsibilities = jsonConvert.convert<String>(
      json['responsibilities']);
  if (responsibilities != null) {
    vacancies.responsibilities = responsibilities;
  }
  final List<String>? questions = (json['questions'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (questions != null) {
    vacancies.questions = questions;
  }
  return vacancies;
}

Map<String, dynamic> $VacanciesToJson(Vacancies entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['lookingNumber'] = entity.lookingNumber;
  data['title'] = entity.title;
  data['address'] = entity.address.toJson();
  data['company'] = entity.company;
  data['experience'] = entity.experience.toJson();
  data['publishedDate'] = entity.publishedDate;
  data['isFavorite'] = entity.isFavorite;
  data['salary'] = entity.salary.toJson();
  data['schedules'] = entity.schedules;
  data['appliedNumber'] = entity.appliedNumber;
  data['description'] = entity.description;
  data['responsibilities'] = entity.responsibilities;
  data['questions'] = entity.questions;
  return data;
}

extension EnityVacanciesExtension on Vacancies {
  Vacancies copyWith({
    String? id,
    int? lookingNumber,
    String? title,
    VacanciesAddress? address,
    String? company,
    VacanciesExperience? experience,
    String? publishedDate,
    bool? isFavorite,
    VacanciesSalary? salary,
    List<String>? schedules,
    int? appliedNumber,
    String? description,
    String? responsibilities,
    List<String>? questions,
  }) {
    return Vacancies()
      ..id = id ?? this.id
      ..lookingNumber = lookingNumber ?? this.lookingNumber
      ..title = title ?? this.title
      ..address = address ?? this.address
      ..company = company ?? this.company
      ..experience = experience ?? this.experience
      ..publishedDate = publishedDate ?? this.publishedDate
      ..isFavorite = isFavorite ?? this.isFavorite
      ..salary = salary ?? this.salary
      ..schedules = schedules ?? this.schedules
      ..appliedNumber = appliedNumber ?? this.appliedNumber
      ..description = description ?? this.description
      ..responsibilities = responsibilities ?? this.responsibilities
      ..questions = questions ?? this.questions;
  }
}

VacanciesAddress $VacanciesAddressFromJson(
    Map<String, dynamic> json) {
  final VacanciesAddress vacanciesAddress = VacanciesAddress();
  final String? town = jsonConvert.convert<String>(json['town']);
  if (town != null) {
    vacanciesAddress.town = town;
  }
  final String? street = jsonConvert.convert<String>(json['street']);
  if (street != null) {
    vacanciesAddress.street = street;
  }
  final String? house = jsonConvert.convert<String>(json['house']);
  if (house != null) {
    vacanciesAddress.house = house;
  }
  return vacanciesAddress;
}

Map<String, dynamic> $VacanciesAddressToJson(
    VacanciesAddress entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['town'] = entity.town;
  data['street'] = entity.street;
  data['house'] = entity.house;
  return data;
}

extension EnityVacanciesAddressExtension on VacanciesAddress {
  VacanciesAddress copyWith({
    String? town,
    String? street,
    String? house,
  }) {
    return VacanciesAddress()
      ..town = town ?? this.town
      ..street = street ?? this.street
      ..house = house ?? this.house;
  }
}

VacanciesExperience $VacanciesExperienceFromJson(
    Map<String, dynamic> json) {
  final VacanciesExperience vacanciesExperience = VacanciesExperience();
  final String? previewText = jsonConvert.convert<String>(json['previewText']);
  if (previewText != null) {
    vacanciesExperience.previewText = previewText;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    vacanciesExperience.text = text;
  }
  return vacanciesExperience;
}

Map<String, dynamic> $VacanciesExperienceToJson(
    VacanciesExperience entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['previewText'] = entity.previewText;
  data['text'] = entity.text;
  return data;
}

extension EnityVacanciesExperienceExtension on VacanciesExperience {
  VacanciesExperience copyWith({
    String? previewText,
    String? text,
  }) {
    return VacanciesExperience()
      ..previewText = previewText ?? this.previewText
      ..text = text ?? this.text;
  }
}

VacanciesSalary $VacanciesSalaryFromJson(Map<String, dynamic> json) {
  final VacanciesSalary vacanciesSalary = VacanciesSalary();
  final String? full = jsonConvert.convert<String>(json['full']);
  if (full != null) {
    vacanciesSalary.full = full;
  }
  return vacanciesSalary;
}

Map<String, dynamic> $VacanciesSalaryToJson(VacanciesSalary entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['full'] = entity.full;
  return data;
}

extension EnityVacanciesSalaryExtension on VacanciesSalary {
  VacanciesSalary copyWith({
    String? full,
  }) {
    return VacanciesSalary()
      ..full = full ?? this.full;
  }
}