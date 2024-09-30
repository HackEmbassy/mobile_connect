// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelEntity _$UserModelEntityFromJson(Map<String, dynamic> json) =>
    UserModelEntity(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      phone: json['phone'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserModelEntityToJson(UserModelEntity instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'age': instance.age,
      'gender': instance.gender,
      'state': instance.state,
      'city': instance.city,
      'phone': instance.phone,
      'interests': instance.interests,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
