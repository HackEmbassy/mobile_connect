// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserProfileResponseModel _$GetUserProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetUserProfileResponseModel(
      success: json['success'] as bool?,
      responseMessage: json['response_message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUserProfileResponseModelToJson(
        GetUserProfileResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };
