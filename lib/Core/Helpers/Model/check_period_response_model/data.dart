import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: '_id')
  String? id;
  String? phoneNumber;
  DateTime? lastPeriodDate;
  DateTime? nextPeriodDate;
  DateTime? ovulationDate;
  @JsonKey(name: '__v')
  int? v;

  Data({
    this.id,
    this.phoneNumber,
    this.lastPeriodDate,
    this.nextPeriodDate,
    this.ovulationDate,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
