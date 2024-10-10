// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profession_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProfessionModelEntity _$CreateProfessionModelEntityFromJson(
        Map<String, dynamic> json) =>
    CreateProfessionModelEntity(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      profession: json['profession'] as String?,
      specialty: json['specialty'] as String?,
      clinicOrGym: json['clinicOrGym'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      bio: json['bio'] as String?,
      experienceYears: (json['experienceYears'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateProfessionModelEntityToJson(
        CreateProfessionModelEntity instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'profession': instance.profession,
      'specialty': instance.specialty,
      'clinicOrGym': instance.clinicOrGym,
      'city': instance.city,
      'state': instance.state,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'bio': instance.bio,
      'experienceYears': instance.experienceYears,
    };
