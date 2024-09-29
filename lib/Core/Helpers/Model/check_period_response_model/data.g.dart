// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['_id'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      lastPeriodDate: json['lastPeriodDate'] == null
          ? null
          : DateTime.parse(json['lastPeriodDate'] as String),
      nextPeriodDate: json['nextPeriodDate'] == null
          ? null
          : DateTime.parse(json['nextPeriodDate'] as String),
      ovulationDate: json['ovulationDate'] == null
          ? null
          : DateTime.parse(json['ovulationDate'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      '_id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'lastPeriodDate': instance.lastPeriodDate?.toIso8601String(),
      'nextPeriodDate': instance.nextPeriodDate?.toIso8601String(),
      'ovulationDate': instance.ovulationDate?.toIso8601String(),
      '__v': instance.v,
    };
