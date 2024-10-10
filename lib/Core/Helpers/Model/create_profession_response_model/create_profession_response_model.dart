import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'create_profession_response_model.g.dart';

@JsonSerializable()
class CreateProfessionResponseModel {
  bool? success;
  @JsonKey(name: 'response_message')
  String? responseMessage;
  Data? data;

  CreateProfessionResponseModel({
    this.success,
    this.responseMessage,
    this.data,
  });

  factory CreateProfessionResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CreateProfessionResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateProfessionResponseModelToJson(this);
}
