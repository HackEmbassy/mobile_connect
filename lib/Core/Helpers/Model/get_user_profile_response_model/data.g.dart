// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      interests: json['interests'] as List<dynamic>?,
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'interests': instance.interests,
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'age': instance.age,
      'gender': instance.gender,
      'state': instance.state,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
