import 'package:json_annotation/json_annotation.dart';

part 'create_profession_model_entity.g.dart';

@JsonSerializable()
class CreateProfessionModelEntity {
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

  CreateProfessionModelEntity({
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

  factory CreateProfessionModelEntity.fromJson(Map<String, dynamic> json) {
    return _$CreateProfessionModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateProfessionModelEntityToJson(this);
}
