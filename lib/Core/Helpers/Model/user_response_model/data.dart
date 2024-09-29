import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? fullName;
  String? email;
  String? phone;
  int? age;
  String? gender;
  String? state;
  String? city;
  double? latitude;
  double? longitude;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Data({
    this.fullName,
    this.email,
    this.phone,
    this.age,
    this.gender,
    this.state,
    this.city,
    this.latitude,
    this.longitude,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
