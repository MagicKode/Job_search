import 'dart:convert';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/entity.g.dart';

// part 'offers_button.g.dart';

@JsonSerializable()
class OffersButton {
  late String text;

  OffersButton();

  factory OffersButton.fromJson(Map<String, dynamic> json) => $OffersButtonFromJson(json);

  Map<String, dynamic> toJson() => $OffersButtonToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}