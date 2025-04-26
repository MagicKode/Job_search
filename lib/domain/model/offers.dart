import 'dart:convert';

import '../../generated/json/base/json_field.dart';
import '../../generated/json/entity.g.dart';
import 'offers_button.dart';

// part 'offers.g.dart';

@JsonSerializable()
class Offers {
  late String id;
  late String title;
  late String link;
  late OffersButton button;

  Offers();

  factory Offers.fromJson(Map<String, dynamic> json) => $OffersFromJson(json);

  Map<String, dynamic> toJson() => $OffersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}