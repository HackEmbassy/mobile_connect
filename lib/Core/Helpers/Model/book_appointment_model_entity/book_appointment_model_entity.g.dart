// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_appointment_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookAppointmentModelEntity _$BookAppointmentModelEntityFromJson(
        Map<String, dynamic> json) =>
    BookAppointmentModelEntity(
      professional: json['professional'] == null
          ? null
          : Professional.fromJson(json['professional'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      date: json['date'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      status: json['status'] as String?,
      time: json['time'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$BookAppointmentModelEntityToJson(
        BookAppointmentModelEntity instance) =>
    <String, dynamic>{
      'professional': instance.professional,
      'user': instance.user,
      'date': instance.date,
      'duration': instance.duration,
      'status': instance.status,
      'time': instance.time,
      'reason': instance.reason,
    };
