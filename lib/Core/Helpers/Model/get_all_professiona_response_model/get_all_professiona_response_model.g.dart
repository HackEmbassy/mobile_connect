// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_professiona_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllProfessionaResponseModel _$GetAllProfessionaResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAllProfessionaResponseModel(
      success: json['success'] as bool?,
      responseMessage: json['response_message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllProfessionaResponseModelToJson(
        GetAllProfessionaResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };
