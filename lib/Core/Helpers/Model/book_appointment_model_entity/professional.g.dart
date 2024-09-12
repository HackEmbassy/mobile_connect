// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Professional _$ProfessionalFromJson(Map<String, dynamic> json) => Professional(
      name: json['name'] as String?,
      profession: json['profession'] as String?,
      specialty: json['specialty'] as String?,
      phone: json['phone'] as String?,
      clinicOrGym: json['clinicOrGym'] as String?,
    );

Map<String, dynamic> _$ProfessionalToJson(Professional instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profession': instance.profession,
      'specialty': instance.specialty,
      'phone': instance.phone,
      'clinicOrGym': instance.clinicOrGym,
    };
