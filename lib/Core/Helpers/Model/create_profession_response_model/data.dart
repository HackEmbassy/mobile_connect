import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? fullName;
  String? email;
  String? phone;
  String? profession;
  String? specialty;
  String? clinicOrGym;
  String? state;
  String? city;
  String? address;
  double? latitude;
  double? longitude;
  String? bio;
  int? experienceYears;
  DateTime? createdAt;
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: '__v')
  int? v;

  Data({
    this.fullName,
    this.email,
    this.phone,
    this.profession,
    this.specialty,
    this.clinicOrGym,
    this.state,
    this.city,
    this.address,
    this.latitude,
    this.longitude,
    this.bio,
    this.experienceYears,
    this.createdAt,
    this.id,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
