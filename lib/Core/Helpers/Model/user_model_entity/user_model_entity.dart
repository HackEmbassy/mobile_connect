import 'package:json_annotation/json_annotation.dart';

part 'user_model_entity.g.dart';

@JsonSerializable()
class UserModelEntity {
  String? fullName;
  String? email;
  String? password;
  int? age;
  String? gender;
  String? state;
  String? city;
  String? phone;
  List<String>? interests;
  double? latitude;
  double? longitude;

  UserModelEntity({
    this.fullName,
    this.email,
    this.password,
    this.age,
    this.gender,
    this.state,
    this.city,
    this.phone,
    this.interests,
    this.latitude,
    this.longitude,
  });

  factory UserModelEntity.fromJson(Map<String, dynamic> json) {
    return _$UserModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelEntityToJson(this);
}
