// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      profession: json['profession'] as String?,
      specialty: json['specialty'] as String?,
      clinicOrGym: json['clinicOrGym'] as String?,
      city: json['city'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      experienceYears: (json['experienceYears'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'profession': instance.profession,
      'specialty': instance.specialty,
      'clinicOrGym': instance.clinicOrGym,
      'city': instance.city,
      'location': instance.location,
      'bio': instance.bio,
      'experienceYears': instance.experienceYears,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
    };
