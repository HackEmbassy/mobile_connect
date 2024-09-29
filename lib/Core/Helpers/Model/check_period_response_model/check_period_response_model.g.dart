// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_period_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckPeriodResponseModel _$CheckPeriodResponseModelFromJson(
        Map<String, dynamic> json) =>
    CheckPeriodResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckPeriodResponseModelToJson(
        CheckPeriodResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
