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
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      phone: json['phone'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
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
      'interests': instance.interests,
      'phone': instance.phone,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
