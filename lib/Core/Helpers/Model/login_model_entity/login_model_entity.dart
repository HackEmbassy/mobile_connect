import 'package:json_annotation/json_annotation.dart';

part 'login_model_entity.g.dart';

@JsonSerializable()
class LoginModelEntity {
  String? fullName;
  String? email;
  String? password;
  String? phone;
  String? profession;
  String? specialty;
  String? clinicOrGym;
  String? city;
  double? latitude;
  double? longitude;
  String? bio;
  int? experienceYears;

  LoginModelEntity({
    this.fullName,
    this.email,
    this.password,
    this.phone,
    this.profession,
    this.specialty,
    this.clinicOrGym,
    this.city,
    this.latitude,
    this.longitude,
    this.bio,
    this.experienceYears,
  });

  factory LoginModelEntity.fromJson(Map<String, dynamic> json) {
    return _$LoginModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelEntityToJson(this);
}
