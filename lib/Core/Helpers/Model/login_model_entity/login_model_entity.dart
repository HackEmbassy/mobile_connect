import 'package:json_annotation/json_annotation.dart';

part 'login_model_entity.g.dart';

@JsonSerializable()
class LoginModelEntity {
  String? email;
  String? password;
  
  LoginModelEntity({
    this.email,
    this.password,
    });

  factory LoginModelEntity.fromJson(Map<String, dynamic> json) {
    return _$LoginModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelEntityToJson(this);
}
