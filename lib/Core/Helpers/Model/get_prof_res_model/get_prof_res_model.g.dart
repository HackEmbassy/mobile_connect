// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_prof_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfResModel _$GetProfResModelFromJson(Map<String, dynamic> json) =>
    GetProfResModel(
      success: json['success'] as bool?,
      responseMessage: json['response_message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetProfResModelToJson(GetProfResModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };
