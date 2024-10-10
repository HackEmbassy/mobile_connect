import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: '_id')
  String? id;
  String? fullName;
  String? email;
  String? password;
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
  @JsonKey(name: '__v')
  int? v;
  Location? location;

  Datum({
    this.id,
    this.fullName,
    this.email,
    this.password,
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
    this.v,
    this.location,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
