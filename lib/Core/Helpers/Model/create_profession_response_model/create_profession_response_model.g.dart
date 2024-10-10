// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profession_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProfessionResponseModel _$CreateProfessionResponseModelFromJson(
        Map<String, dynamic> json) =>
    CreateProfessionResponseModel(
      success: json['success'] as bool?,
      responseMessage: json['response_message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateProfessionResponseModelToJson(
        CreateProfessionResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };
