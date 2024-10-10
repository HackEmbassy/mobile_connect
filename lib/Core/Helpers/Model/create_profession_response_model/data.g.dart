// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      profession: json['profession'] as String?,
      specialty: json['specialty'] as String?,
      clinicOrGym: json['clinicOrGym'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      bio: json['bio'] as String?,
      experienceYears: (json['experienceYears'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['_id'] as String?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'profession': instance.profession,
      'specialty': instance.specialty,
      'clinicOrGym': instance.clinicOrGym,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'bio': instance.bio,
      'experienceYears': instance.experienceYears,
      'createdAt': instance.createdAt?.toIso8601String(),
      '_id': instance.id,
      '__v': instance.v,
    };
