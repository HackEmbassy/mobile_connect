// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserModelEntity _$CreateUserModelEntityFromJson(
        Map<String, dynamic> json) =>
    CreateUserModelEntity(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$CreateUserModelEntityToJson(
        CreateUserModelEntity instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'age': instance.age,
      'gender': instance.gender,
      'state': instance.state,
      'city': instance.city,
    };
