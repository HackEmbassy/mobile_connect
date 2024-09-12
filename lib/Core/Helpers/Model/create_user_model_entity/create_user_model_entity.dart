import 'package:json_annotation/json_annotation.dart';

part 'create_user_model_entity.g.dart';

@JsonSerializable()
class CreateUserModelEntity {
  String? fullName;
  String? email;
  String? password;
  int? age;
  String? gender;
  String? state;
  String? city;
  String? phone;
  String? latitude;
  String? longitude;

  CreateUserModelEntity({
    this.fullName,
    this.email,
    this.password,
    this.age,
    this.gender,
    this.state,
    this.city,
    this.phone,
    this.latitude,
    this.longitude,
  });

  factory CreateUserModelEntity.fromJson(Map<String, dynamic> json) {
    return _$CreateUserModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateUserModelEntityToJson(this);
}
